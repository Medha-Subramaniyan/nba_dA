-- 1.1. Create the table (all columns as TEXT except “Day” as DATE)
CREATE TABLE multi_timeline (
    day                 DATE,
    pacers_us           TEXT,   -- maps "Indiana Pacers: (United States)"
    thunder_us          TEXT,   -- maps "Oklahoma City Thunder: (United States)"
    gilgeous_alexander  TEXT,   -- maps "Shai Gilgeous-Alexander: (United States)"
    haliburton_us       TEXT    -- maps "Tyrese Haliburton: (United States)"
);

CREATE TABLE pacers_followers (
    id               INTEGER,          -- maps the unnamed index column
    date             TEXT,             -- e.g. 'Tue2025-05-20'
    followers_pacers DOUBLE PRECISION, -- “followers” from the Pacers account
    followers_nba    DOUBLE PRECISION, -- “followers.1” from the NBA account
    following_pacers TEXT,             -- “following” (often “--”)
    following_nba    DOUBLE PRECISION, -- “following.1”
    media_count_pac  DOUBLE PRECISION, -- “media count” (Pacers)
    media_count_nba  DOUBLE PRECISION  -- “media count.1” (NBA)
);


CREATE TABLE playoff_attendance_2025 (
    team     TEXT,
    home_att INTEGER,
    home_avg INTEGER,
    road_att INTEGER,
    road_avg INTEGER
);

CREATE TABLE regular_season_attendance_2025 (
    team     TEXT,
    home_att INTEGER,
    home_avg INTEGER,
    road_att INTEGER,
    road_avg INTEGER
);

CREATE TABLE playoff_data (
    id               INTEGER,            -- “Unnamed: 0”
    team_id          INTEGER,
    team_name        TEXT,
    gp               INTEGER,
    w                INTEGER,
    l                INTEGER,
    w_pct            DOUBLE PRECISION,
    min              DOUBLE PRECISION,
    fgm              DOUBLE PRECISION,
    fga              DOUBLE PRECISION,
    fg_pct           DOUBLE PRECISION,
    fg3m             DOUBLE PRECISION,
    fg3a             DOUBLE PRECISION,
    fg3_pct          DOUBLE PRECISION,
    ftm              DOUBLE PRECISION,
    fta              DOUBLE PRECISION,
    ft_pct           DOUBLE PRECISION,
    oreb             DOUBLE PRECISION,
    dreb             DOUBLE PRECISION,
    reb              DOUBLE PRECISION,
    ast              DOUBLE PRECISION,
    tov              DOUBLE PRECISION,
    stl              DOUBLE PRECISION,
    blk              DOUBLE PRECISION,
    blka             DOUBLE PRECISION,
    pf               DOUBLE PRECISION,
    pfd              DOUBLE PRECISION,
    pts              DOUBLE PRECISION,
    plus_minus       DOUBLE PRECISION,
    arenascore       DOUBLE PRECISION,
    arena_rank       INTEGER,
    min_rank         INTEGER,
    fgm_rank         INTEGER,
    fga_rank         INTEGER,
    fg_pct_rank      INTEGER,
    fg3m_rank        INTEGER,
    fg3a_rank        INTEGER,
    fg3_pct_rank     INTEGER,
    ftm_rank         INTEGER,
    fta_rank         INTEGER,
    ft_pct_rank      INTEGER,
    oreb_rank        INTEGER,
    dreb_rank        INTEGER,
    reb_rank         INTEGER,
    ast_rank         INTEGER,
    tov_rank         INTEGER,
    stl_rank         INTEGER,
    blk_rank         INTEGER,
    blka_rank        INTEGER,
    pf_rank          INTEGER,
    pfd_rank         INTEGER,
    pts_rank         INTEGER,
    plus_minus_rank  INTEGER
);

CREATE TABLE regular_season (
    id               INTEGER,            
    team_id          INTEGER,
    team_name        TEXT,
    gp               INTEGER,
    w                INTEGER,
    l                INTEGER,
    w_pct            DOUBLE PRECISION,
    min              DOUBLE PRECISION,
    fgm              DOUBLE PRECISION,
    fga              DOUBLE PRECISION,
    fg_pct           DOUBLE PRECISION,
    fg3m             DOUBLE PRECISION,
    fg3a             DOUBLE PRECISION,
    fg3_pct          DOUBLE PRECISION,
    ftm              DOUBLE PRECISION,
    fta              DOUBLE PRECISION,
    ft_pct           DOUBLE PRECISION,
    oreb             DOUBLE PRECISION,
    dreb             DOUBLE PRECISION,
    reb              DOUBLE PRECISION,
    ast              DOUBLE PRECISION,
    tov              DOUBLE PRECISION,
    stl              DOUBLE PRECISION,
    blk              DOUBLE PRECISION,
    blka             DOUBLE PRECISION,
    pf               DOUBLE PRECISION,
    pfd              DOUBLE PRECISION,
    pts              DOUBLE PRECISION,
    plus_minus       DOUBLE PRECISION,
    arenascore       DOUBLE PRECISION,
    arena_rank       INTEGER,
    min_rank         INTEGER,
    fgm_rank         INTEGER,
    fga_rank         INTEGER,
    fg_pct_rank      INTEGER,
    fg3m_rank        INTEGER,
    fg3a_rank        INTEGER,
    fg3_pct_rank     INTEGER,
    ftm_rank         INTEGER,
    fta_rank         INTEGER,
    ft_pct_rank      INTEGER,
    oreb_rank        INTEGER,
    dreb_rank        INTEGER,
    reb_rank         INTEGER,
    ast_rank         INTEGER,
    tov_rank         INTEGER,
    stl_rank         INTEGER,
    blk_rank         INTEGER,
    blka_rank        INTEGER,
    pf_rank          INTEGER,
    pfd_rank         INTEGER,
    pts_rank         INTEGER,
    plus_minus_rank  INTEGER
);

CREATE TABLE ploff_players (
    id                      INTEGER,            
    player_id               INTEGER,
    player_name             TEXT,
    nickname                TEXT,
    team_id                 INTEGER,
    team_abbreviation       TEXT,
    age                     DOUBLE PRECISION,
    gp                      INTEGER,
    w                       INTEGER,
    l                       INTEGER,
    w_pct                   DOUBLE PRECISION,
    min                     DOUBLE PRECISION,
    fgm                     DOUBLE PRECISION,
    fga                     DOUBLE PRECISION,
    fg_pct                  DOUBLE PRECISION,
    fg3m                    DOUBLE PRECISION,
    fg3a                    DOUBLE PRECISION,
    fg3_pct                 DOUBLE PRECISION,
    ftm                     DOUBLE PRECISION,
    fta                     DOUBLE PRECISION,
    ft_pct                  DOUBLE PRECISION,
    oreb                    DOUBLE PRECISION,
    dreb                    DOUBLE PRECISION,
    reb                     DOUBLE PRECISION,
    ast                     DOUBLE PRECISION,
    tov                     DOUBLE PRECISION,
    stl                     DOUBLE PRECISION,
    blk                     DOUBLE PRECISION,
    blka                    DOUBLE PRECISION,
    pf                      DOUBLE PRECISION,
    pfd                     DOUBLE PRECISION,
    pts                     DOUBLE PRECISION,
    plus_minus              DOUBLE PRECISION,
    arenascore              DOUBLE PRECISION,
    fantasy_pts             DOUBLE PRECISION,
    dd2                     INTEGER,
    td3                     INTEGER,
    p174                    DOUBLE PRECISION,
    p275                    DOUBLE PRECISION,
    p315                    DOUBLE PRECISION,
    p2p                     DOUBLE PRECISION,
    cf                      DOUBLE PRECISION,
    fftm                    DOUBLE PRECISION,
    ffta                    DOUBLE PRECISION,
    fft_pct                 DOUBLE PRECISION,
    fg2m                    DOUBLE PRECISION,
    fg2a                    DOUBLE PRECISION,
    fg3_pct_rank            INTEGER,
    fg2m_rank               INTEGER,
    fg2a_rank               INTEGER,
    p174_rank               INTEGER,
    p275_rank               INTEGER,
    p315_rank               INTEGER,
    p2p_rank                INTEGER,
    cf_rank                 INTEGER,
    fftm_rank               INTEGER,
    ffta_rank               INTEGER,
    fft_pct_rank            INTEGER,
    oreb_rank               INTEGER,
    dreb_rank               INTEGER,
    reb_rank                INTEGER,
    ast_rank                INTEGER,
    tov_rank                INTEGER,
    stl_rank                INTEGER,
    blk_rank                INTEGER,
    blka_rank               INTEGER,
    pf_rank                 INTEGER,
    pfd_rank                INTEGER,
    pts_rank                INTEGER,
    plus_minus_rank         INTEGER,
    nba_fantasy_pts_rank    INTEGER,
    dd2_rank                INTEGER,
    td3_rank                INTEGER,
    wnba_fantasy_pts_rank   INTEGER
);

CREATE TABLE regular_season_players (
    id                      INTEGER,            
    player_id               INTEGER,
    player_name             TEXT,
    nickname                TEXT,
    team_id                 INTEGER,
    team_abbreviation       TEXT,
    age                     DOUBLE PRECISION,
    gp                      INTEGER,
    w                       INTEGER,
    l                       INTEGER,
    w_pct                   DOUBLE PRECISION,
    min                     DOUBLE PRECISION,
    fgm                     DOUBLE PRECISION,
    fga                     DOUBLE PRECISION,
    fg_pct                  DOUBLE PRECISION,
    fg3m                    DOUBLE PRECISION,
    fg3a                    DOUBLE PRECISION,
    fg3_pct                 DOUBLE PRECISION,
    ftm                     DOUBLE PRECISION,
    fta                     DOUBLE PRECISION,
    ft_pct                  DOUBLE PRECISION,
    oreb                    DOUBLE PRECISION,
    dreb                    DOUBLE PRECISION,
    reb                     DOUBLE PRECISION,
    ast                     DOUBLE PRECISION,
    tov                     DOUBLE PRECISION,
    stl                     DOUBLE PRECISION,
    blk                     DOUBLE PRECISION,
    blka                    DOUBLE PRECISION,
    pf                      DOUBLE PRECISION,
    pfd                     DOUBLE PRECISION,
    pts                     DOUBLE PRECISION,
    plus_minus              DOUBLE PRECISION,
    arenascore              DOUBLE PRECISION,
    fantasy_pts             DOUBLE PRECISION,
    dd2                     INTEGER,
    td3                     INTEGER,
    p174                    DOUBLE PRECISION,
    p275                    DOUBLE PRECISION,
    p315                    DOUBLE PRECISION,
    p2p                     DOUBLE PRECISION,
    cf                      DOUBLE PRECISION,
    fftm                    DOUBLE PRECISION,
    ffta                    DOUBLE PRECISION,
    fft_pct                 DOUBLE PRECISION,
    fg2m                    DOUBLE PRECISION,
    fg2a                    DOUBLE PRECISION,
    fg3_pct_rank            INTEGER,
    fg2m_rank               INTEGER,
    fg2a_rank               INTEGER,
    p174_rank               INTEGER,
    p275_rank               INTEGER,
    p315_rank               INTEGER,
    p2p_rank                INTEGER,
    cf_rank                 INTEGER,
    fftm_rank               INTEGER,
    ffta_rank               INTEGER,
    fft_pct_rank            INTEGER,
    oreb_rank               INTEGER,
    dreb_rank               INTEGER,
    reb_rank                INTEGER,
    ast_rank                INTEGER,
    tov_rank                INTEGER,
    stl_rank                INTEGER,
    blk_rank                INTEGER,
    blka_rank               INTEGER,
    pf_rank                 INTEGER,
    pfd_rank                INTEGER,
    pts_rank                INTEGER,
    plus_minus_rank         INTEGER,
    nba_fantasy_pts_rank    INTEGER,
    dd2_rank                INTEGER,
    td3_rank                INTEGER,
    wnba_fantasy_pts_rank   INTEGER
);

DROP TABLE IF EXISTS regular_season_players;

CREATE TABLE regular_season_players (
    id                      INTEGER,            
    player_id               INTEGER,
    player_name             TEXT,
    nickname                TEXT,
    team_id                 INTEGER,
    team_abbreviation       TEXT,
    age                     DOUBLE PRECISION,
    gp                      INTEGER,
    w                       INTEGER,
    l                       INTEGER,
    w_pct                   DOUBLE PRECISION,
    min                     DOUBLE PRECISION,
    fgm                     DOUBLE PRECISION,
    fga                     DOUBLE PRECISION,
    fg_pct                  DOUBLE PRECISION,
    fg3m                    DOUBLE PRECISION,
    fg3a                    DOUBLE PRECISION,
    fg3_pct                 DOUBLE PRECISION,
    ftm                     DOUBLE PRECISION,
    fta                     DOUBLE PRECISION,
    ft_pct                  DOUBLE PRECISION,
    oreb                    DOUBLE PRECISION,
    dreb                    DOUBLE PRECISION,
    reb                     DOUBLE PRECISION,
    ast                     DOUBLE PRECISION,
    tov                     DOUBLE PRECISION,
    stl                     DOUBLE PRECISION,
    blk                     DOUBLE PRECISION,
    blka                    DOUBLE PRECISION,
    pf                      DOUBLE PRECISION,
    pfd                     DOUBLE PRECISION,
    pts                     DOUBLE PRECISION,
    plus_minus              DOUBLE PRECISION,
    arenascore              DOUBLE PRECISION,
    fantasy_pts             DOUBLE PRECISION,
    dd2                     DOUBLE PRECISION,    -- changed from INTEGER
    td3                     DOUBLE PRECISION,    -- changed from INTEGER
    p174                    DOUBLE PRECISION,
    p275                    DOUBLE PRECISION,
    p315                    DOUBLE PRECISION,
    p2p                     DOUBLE PRECISION,
    cf                      DOUBLE PRECISION,
    fftm                    DOUBLE PRECISION,
    ffta                    DOUBLE PRECISION,
    fft_pct                 DOUBLE PRECISION,
    fg2m                    DOUBLE PRECISION,
    fg2a                    DOUBLE PRECISION,
    fg3_pct_rank            INTEGER,
    fg2m_rank               INTEGER,
    fg2a_rank               INTEGER,
    p174_rank               INTEGER,
    p275_rank               INTEGER,
    p315_rank               INTEGER,
    p2p_rank                INTEGER,
    cf_rank                 INTEGER,
    fftm_rank               INTEGER,
    ffta_rank               INTEGER,
    fft_pct_rank            INTEGER,
    oreb_rank               INTEGER,
    dreb_rank               INTEGER,
    reb_rank                INTEGER,
    ast_rank                INTEGER,
    tov_rank                INTEGER,
    stl_rank                INTEGER,
    blk_rank                INTEGER,
    blka_rank               INTEGER,
    pf_rank                 INTEGER,
    pfd_rank                INTEGER,
    pts_rank                INTEGER,
    plus_minus_rank         INTEGER,
    nba_fantasy_pts_rank    INTEGER,
    dd2_rank                INTEGER,
    td3_rank                INTEGER,
    wnba_fantasy_pts_rank   INTEGER
);
DROP TABLE IF EXISTS ploff_players;
CREATE TABLE ploff_players (
    id                     INTEGER,            -- maps the empty‐header index column
    player_id              INTEGER,
    player_name            TEXT,
    nickname               TEXT,
    team_id                INTEGER,
    team_abbreviation      TEXT,
    age                    DOUBLE PRECISION,
    gp                     INTEGER,
    w                      INTEGER,
    l                      INTEGER,
    w_pct                  DOUBLE PRECISION,
    min                    DOUBLE PRECISION,
    fgm                    DOUBLE PRECISION,
    fga                    DOUBLE PRECISION,
    fg_pct                 DOUBLE PRECISION,
    fg3m                   DOUBLE PRECISION,
    fg3a                   DOUBLE PRECISION,
    fg3_pct                DOUBLE PRECISION,
    ftm                    DOUBLE PRECISION,
    fta                    DOUBLE PRECISION,
    ft_pct                 DOUBLE PRECISION,
    oreb                   DOUBLE PRECISION,
    dreb                   DOUBLE PRECISION,
    reb                    DOUBLE PRECISION,
    ast                    DOUBLE PRECISION,
    tov                    DOUBLE PRECISION,
    stl                    DOUBLE PRECISION,
    blk                    DOUBLE PRECISION,
    blka                   DOUBLE PRECISION,
    pf                     DOUBLE PRECISION,
    pfd                    DOUBLE PRECISION,
    pts                    DOUBLE PRECISION,
    plus_minus             DOUBLE PRECISION,
    nba_fantasy_pts        DOUBLE PRECISION,
    dd2                    DOUBLE PRECISION,
    td3                    DOUBLE PRECISION,
    wnba_fantasy_pts       DOUBLE PRECISION,
    gp_rank                INTEGER,
    w_rank                 INTEGER,
    l_rank                 INTEGER,
    w_pct_rank             INTEGER,
    min_rank               INTEGER,
    fgm_rank               INTEGER,
    fga_rank               INTEGER,
    fg_pct_rank            INTEGER,
    fg3m_rank              INTEGER,
    fg3a_rank              INTEGER,
    fg3_pct_rank           INTEGER,
    ftm_rank               INTEGER,
    fta_rank               INTEGER,
    ft_pct_rank            INTEGER,
    oreb_rank              INTEGER,
    dreb_rank              INTEGER,
    reb_rank               INTEGER,
    ast_rank               INTEGER,
    tov_rank               INTEGER,
    stl_rank               INTEGER,
    blk_rank               INTEGER,
    blka_rank              INTEGER,
    pf_rank                INTEGER,
    pfd_rank               INTEGER,
    pts_rank               INTEGER,
    plus_minus_rank        INTEGER,
    nba_fantasy_pts_rank   INTEGER,
    dd2_rank               INTEGER,
    td3_rank               INTEGER,
    wnba_fantasy_pts_rank  INTEGER
);

DROP TABLE IF EXISTS regular_season_players;

-- 2) Create the table with columns in the exact order found in the CSV header
CREATE TABLE regular_season_players (
    id                      INTEGER,            -- “Unnamed: 0”
    player_id               INTEGER,            -- “PLAYER_ID”
    player_name             TEXT,               -- “PLAYER_NAME”
    nickname                TEXT,               -- “NICKNAME”
    team_id                 INTEGER,            -- “TEAM_ID”
    team_abbreviation       TEXT,               -- “TEAM_ABBREVIATION”
    age                     DOUBLE PRECISION,   -- “AGE”
    gp                      INTEGER,            -- “GP”
    w                       INTEGER,            -- “W”
    l                       INTEGER,            -- “L”
    w_pct                   DOUBLE PRECISION,   -- “W_PCT”
    min                     DOUBLE PRECISION,   -- “MIN”
    fgm                     DOUBLE PRECISION,   -- “FGM”
    fga                     DOUBLE PRECISION,   -- “FGA”
    fg_pct                  DOUBLE PRECISION,   -- “FG_PCT”
    fg3m                    DOUBLE PRECISION,   -- “FG3M”
    fg3a                    DOUBLE PRECISION,   -- “FG3A”
    fg3_pct                 DOUBLE PRECISION,   -- “FG3_PCT”
    ftm                     DOUBLE PRECISION,   -- “FTM”
    fta                     DOUBLE PRECISION,   -- “FTA”
    ft_pct                  DOUBLE PRECISION,   -- “FT_PCT”
    oreb                    DOUBLE PRECISION,   -- “OREB”
    dreb                    DOUBLE PRECISION,   -- “DREB”
    reb                     DOUBLE PRECISION,   -- “REB”
    ast                     DOUBLE PRECISION,   -- “AST”
    tov                     DOUBLE PRECISION,   -- “TOV”
    stl                     DOUBLE PRECISION,   -- “STL”
    blk                     DOUBLE PRECISION,   -- “BLK”
    blka                    DOUBLE PRECISION,   -- “BLKA”
    pf                      DOUBLE PRECISION,   -- “PF”
    pfd                     DOUBLE PRECISION,   -- “PFD”
    pts                     DOUBLE PRECISION,   -- “PTS”
    plus_minus              DOUBLE PRECISION,   -- “PLUS_MINUS”
    nba_fantasy_pts         DOUBLE PRECISION,   -- “NBA_FANTASY_PTS”
    dd2                     DOUBLE PRECISION,   -- “DD2”
    td3                     DOUBLE PRECISION,   -- “TD3”
    wnba_fantasy_pts        DOUBLE PRECISION,   -- “WNBA_FANTASY_PTS”
    gp_rank                 INTEGER,            -- “GP_RANK”
    w_rank                  INTEGER,            -- “W_RANK”
    l_rank                  INTEGER,            -- “L_RANK”
    w_pct_rank              INTEGER,            -- “W_PCT_RANK”
    min_rank                INTEGER,            -- “MIN_RANK”
    fgm_rank                INTEGER,            -- “FGM_RANK”
    fga_rank                INTEGER,            -- “FGA_RANK”
    fg_pct_rank             INTEGER,            -- “FG_PCT_RANK”
    fg3m_rank               INTEGER,            -- “FG3M_RANK”
    fg3a_rank               INTEGER,            -- “FG3A_RANK”
    fg3_pct_rank            INTEGER,            -- “FG3_PCT_RANK”
    ftm_rank                INTEGER,            -- “FTM_RANK”
    fta_rank                INTEGER,            -- “FTA_RANK”
    ft_pct_rank             INTEGER,            -- “FT_PCT_RANK”
    oreb_rank               INTEGER,            -- “OREB_RANK”
    dreb_rank               INTEGER,            -- “DREB_RANK”
    reb_rank                INTEGER,            -- “REB_RANK”
    ast_rank                INTEGER,            -- “AST_RANK”
    tov_rank                INTEGER,            -- “TOV_RANK”
    stl_rank                INTEGER,            -- “STL_RANK”
    blk_rank                INTEGER,            -- “BLK_RANK”
    blka_rank               INTEGER,            -- “BLKA_RANK”
    pf_rank                 INTEGER,            -- “PF_RANK”
    pfd_rank                INTEGER,            -- “PFD_RANK”
    pts_rank                INTEGER,            -- “PTS_RANK”
    plus_minus_rank         INTEGER,            -- “PLUS_MINUS_RANK”
    nba_fantasy_pts_rank    INTEGER,            -- “NBA_FANTASY_PTS_RANK”
    dd2_rank                INTEGER,            -- “DD2_RANK”
    td3_rank                INTEGER,            -- “TD3_RANK”
    wnba_fantasy_pts_rank   INTEGER             -- “WNBA_FANTASY_PTS_RANK”
);

DROP TABLE IF EXISTS regular_season;
CREATE TABLE regular_season (
    id                 INTEGER,            -- maps the empty‐header index column
    team_id            INTEGER,
    team_name          TEXT,
    gp                 INTEGER,
    w                  INTEGER,
    l                  INTEGER,
    w_pct              DOUBLE PRECISION,
    min                DOUBLE PRECISION,
    fgm                DOUBLE PRECISION,
    fga                DOUBLE PRECISION,
    fg_pct             DOUBLE PRECISION,
    fg3m               DOUBLE PRECISION,
    fg3a               DOUBLE PRECISION,
    fg3_pct            DOUBLE PRECISION,
    ftm                DOUBLE PRECISION,
    fta                DOUBLE PRECISION,
    ft_pct             DOUBLE PRECISION,
    oreb               DOUBLE PRECISION,
    dreb               DOUBLE PRECISION,
    reb                DOUBLE PRECISION,
    ast                DOUBLE PRECISION,
    tov                DOUBLE PRECISION,
    stl                DOUBLE PRECISION,
    blk                DOUBLE PRECISION,
    blka               DOUBLE PRECISION,
    pf                 DOUBLE PRECISION,
    pfd                DOUBLE PRECISION,
    pts                DOUBLE PRECISION,
    plus_minus         DOUBLE PRECISION,
    gp_rank            INTEGER,
    w_rank             INTEGER,
    l_rank             INTEGER,
    w_pct_rank         INTEGER,
    min_rank           INTEGER,
    fgm_rank           INTEGER,
    fga_rank           INTEGER,
    fg_pct_rank        INTEGER,
    fg3m_rank          INTEGER,
    fg3a_rank          INTEGER,
    fg3_pct_rank       INTEGER,
    ftm_rank           INTEGER,
    fta_rank           INTEGER,
    ft_pct_rank        INTEGER,
    oreb_rank          INTEGER,
    dreb_rank          INTEGER,
    reb_rank           INTEGER,
    ast_rank           INTEGER,
    tov_rank           INTEGER,
    stl_rank           INTEGER,
    blk_rank           INTEGER,
    blka_rank          INTEGER,
    pf_rank            INTEGER,
    pfd_rank           INTEGER,
    pts_rank           INTEGER,
    plus_minus_rank    INTEGER
);

DROP TABLE IF EXISTS playoff_data;
CREATE TABLE playoff_data (
    id                 INTEGER,            -- maps the empty‐header index column
    team_id            INTEGER,
    team_name          TEXT,
    gp                 INTEGER,
    w                  INTEGER,
    l                  INTEGER,
    w_pct              DOUBLE PRECISION,
    min                DOUBLE PRECISION,
    fgm                DOUBLE PRECISION,
    fga                DOUBLE PRECISION,
    fg_pct             DOUBLE PRECISION,
    fg3m               DOUBLE PRECISION,
    fg3a               DOUBLE PRECISION,
    fg3_pct            DOUBLE PRECISION,
    ftm                DOUBLE PRECISION,
    fta                DOUBLE PRECISION,
    ft_pct             DOUBLE PRECISION,
    oreb               DOUBLE PRECISION,
    dreb               DOUBLE PRECISION,
    reb                DOUBLE PRECISION,
    ast                DOUBLE PRECISION,
    tov                DOUBLE PRECISION,
    stl                DOUBLE PRECISION,
    blk                DOUBLE PRECISION,
    blka               DOUBLE PRECISION,
    pf                 DOUBLE PRECISION,
    pfd                DOUBLE PRECISION,
    pts                DOUBLE PRECISION,
    plus_minus         DOUBLE PRECISION,
    gp_rank            INTEGER,
    w_rank             INTEGER,
    l_rank             INTEGER,
    w_pct_rank         INTEGER,
    min_rank           INTEGER,
    fgm_rank           INTEGER,
    fga_rank           INTEGER,
    fg_pct_rank        INTEGER,
    fg3m_rank          INTEGER,
    fg3a_rank          INTEGER,
    fg3_pct_rank       INTEGER,
    ftm_rank           INTEGER,
    fta_rank           INTEGER,
    ft_pct_rank        INTEGER,
    oreb_rank          INTEGER,
    dreb_rank          INTEGER,
    reb_rank           INTEGER,
    ast_rank           INTEGER,
    tov_rank           INTEGER,
    stl_rank           INTEGER,
    blk_rank           INTEGER,
    blka_rank          INTEGER,
    pf_rank            INTEGER,
    pfd_rank           INTEGER,
    pts_rank           INTEGER,
    plus_minus_rank    INTEGER
);

CREATE TABLE thunder_followers (
    id                  INTEGER,          -- maps “Unnamed: 0” index
    date                TEXT,             -- e.g. 'Tue2025-05-20'
    followers_thunder   DOUBLE PRECISION, -- “followers” from the Thunder account
    followers_nba       DOUBLE PRECISION, -- “followers.1” (NBA account)
    following_thunder   TEXT,             -- “following” from Thunder (“--” if not available)
    following_nba       DOUBLE PRECISION, -- “following.1” (NBA account)
    media_count_thunder DOUBLE PRECISION, -- “media count” (Thunder)
    media_count_nba     DOUBLE PRECISION  -- “media count.1” (NBA)
);
