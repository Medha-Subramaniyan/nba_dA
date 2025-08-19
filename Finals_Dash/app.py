import streamlit as st
import pandas as pd
import plotly.express as px
import psycopg2
from streamlit_autorefresh import st_autorefresh

# ─── 1. PAGE CONFIG (MUST BE FIRST) ────────────────────────────────────────────
st.set_page_config(
    page_title="Live NBA Dashboard",
    page_icon="🏀",
    layout="wide",
    initial_sidebar_state="expanded",
)

# ─── 2. DB CONNECTION ──────────────────────────────────────────────────────────
@st.cache_resource
def init_connection():
    dsn = "postgresql://postgres:password@localhost:5432/dash3"
    return psycopg2.connect(dsn)

conn = init_connection()

# ─── 3. CACHED QUERY HELPERS ───────────────────────────────────────────────────
@st.cache_data(ttl=10)
def fetch_player_stats():
    df = pd.read_sql_query("SELECT * FROM player_stats;", conn)
    df["pts"] = pd.to_numeric(df["pts"], errors="coerce").fillna(0).astype(int)
    if "min" in df.columns:
        df["min_int"] = pd.to_numeric(df["min"], errors="coerce").fillna(0).astype(int)
    return df

@st.cache_data(ttl=10)
def fetch_team_stats():
    df = pd.read_sql_query("SELECT * FROM team_stats;", conn)
    df["pts"] = pd.to_numeric(df["pts"], errors="coerce").fillna(0).astype(int)
    return df

@st.cache_data(ttl=10)
def fetch_play_by_play():
    return pd.read_sql_query("SELECT * FROM play_by_play;", conn)

# ─── 4. AUTO-REFRESH (10 s) ────────────────────────────────────────────────────
st_autorefresh(interval=10_000, limit=None, key="data_refresh")

# ─── 5. HEADER ────────────────────────────────────────────────────────────────
st.title("🏀 Live NBA Dashboard")
st.write(
    "This dashboard pulls real-time NBA data from PostgreSQL and refreshes every 10 s."
)

# ─── 6. SIDEBAR ───────────────────────────────────────────────────────────────
view_option = st.sidebar.selectbox(
    "Choose data view:",
    ("Player Stats", "Team Stats", "Play-by-Play")
)

# ─── 7. PLAYER STATS VIEW ─────────────────────────────────────────────────────
if view_option == "Player Stats":
    st.header("Player Statistics")
    player_df = fetch_player_stats()

    if player_df.empty:
        st.info("No player stats available yet.")
    else:
        game_ids = sorted(player_df["game_id"].unique())
        selected_game = st.selectbox("Select a game ID:", game_ids)

        df_game = player_df[player_df["game_id"] == selected_game]

        st.subheader(f"Raw Data – Game {selected_game}")
        st.dataframe(
            df_game.sort_values("pts", ascending=False),
            use_container_width=True,
        )

        # ─── A1. TOP-10 SCORERS (UNIQUE PLAYERS) ────────────────────────────
        st.subheader("Top 10 Scorers")

        per_player = (
            df_game.groupby("player_name", as_index=False)["pts"]
                   .max()                     # each player once
                   .sort_values("pts", ascending=False)
        )

        top_scorers = per_player.head(10)

        # pad if fewer than 10 distinct players
        if len(top_scorers) < 10:
            filler = pd.DataFrame({
                "player_name": [f"(empty {i+1})" for i in range(10 - len(top_scorers))],
                "pts": [0] * (10 - len(top_scorers)),
            })
            top_scorers = pd.concat([top_scorers, filler], ignore_index=True)

        fig_pts = px.bar(
            top_scorers,
            x="player_name",
            y="pts",
            labels={"player_name": "Player", "pts": "Points"},
            title="Top 10 Point Leaders",
        )
        st.plotly_chart(fig_pts, use_container_width=True)

       

# ─── 8. TEAM STATS VIEW ───────────────────────────────────────────────────────
elif view_option == "Team Stats":
    st.header("Team Statistics")
    team_df = fetch_team_stats()

    if team_df.empty:
        st.info("No team stats available yet.")
    else:
        game_ids = sorted(team_df["game_id"].unique())
        selected_game = st.selectbox("Select a game ID:", game_ids)

        df_game = team_df[team_df["game_id"] == selected_game]

        st.subheader(f"Raw Data – Game {selected_game}")
        st.dataframe(
            df_game.sort_values("pts", ascending=False),
            use_container_width=True,
        )

        st.subheader("Team Points Comparison")
        fig_team_pts = px.bar(
            df_game[["team_name", "pts"]],
            x="team_name",
            y="pts",
            labels={"team_name": "Team", "pts": "Points"},
            title="Points by Team",
        )
        st.plotly_chart(fig_team_pts, use_container_width=True)

# ─── 9. PLAY-BY-PLAY VIEW ────────────────────────────────────────────────────
elif view_option == "Play-by-Play":
    st.header("Play-by-Play Feed")
    pbp_df = fetch_play_by_play()

    if pbp_df.empty:
        st.info("No play-by-play data available yet.")
    else:
        game_ids = sorted(pbp_df["game_id"].unique())
        selected_game = st.selectbox("Select a game ID:", game_ids)

        df_game = (
            pbp_df[pbp_df["game_id"] == selected_game]
            .sort_values(["period", "eventnum"])
        )

        st.subheader(f"Events – Game {selected_game}")
        st.dataframe(
            df_game[["period", "pctimestring", "homedescription", "visitordescription", "score"]],
            use_container_width=True,
        )

        # (Optional) cumulative points by quarter
        if "score" in df_game.columns:
            st.subheader("Cumulative Points by Quarter")
            split_scores = df_game["score"].str.split("-", expand=True)
            df_game["home_pts"] = pd.to_numeric(split_scores[0], errors="coerce")
            df_game["away_pts"] = pd.to_numeric(split_scores[1], errors="coerce")

            quarter_pts = (
                df_game.groupby("period")[["home_pts", "away_pts"]]
                .max()
                .reset_index()
            )

            q_long = quarter_pts.melt(
                id_vars="period",
                value_vars=["home_pts", "away_pts"],
                var_name="Team",
                value_name="Points",
            ).replace({"home_pts": "Home", "away_pts": "Away"})

            fig_q = px.area(
                q_long,
                x="period",
                y="Points",
                color="Team",
                labels={"period": "Quarter"},
                title="Max Points by Quarter",
            )
            st.plotly_chart(fig_q, use_container_width=True)

# ─── 10. FOOTER ───────────────────────────────────────────────────────────────
st.markdown("---")
st.write("🔄 Auto-refresh every 10 s   •   Problems?  Check DB connection or table contents.")
