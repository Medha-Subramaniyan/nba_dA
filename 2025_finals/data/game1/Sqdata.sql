--1) Final Score
SELECT
"TEAM_NAME",
 "TEAM_ID",
  "PTS" AS "total_points"
FROM team
WHERE "GAME_ID" = 42400401;

-- 2) Net Rating (pre-computed in adv_team)
SELECT
  "TEAM_NAME",
    "TEAM_ID",
  "NET_RATING"
FROM adv_team
WHERE "GAME_ID" = 42400401;
;

-- 3) Win-Probability Over Time
SELECT
  "PERIOD",
  "SECONDS_REMAINING",
  "PCTIMESTRING"      AS clock,
  "HOME_PCT"          AS home_win_prob,
  "VISITOR_PCT"       AS visitor_win_prob
FROM w_prob
WHERE "GAME_ID" = 42400401
ORDER BY "PERIOD",  "SECONDS_REMAINING" DESC
;

-- 4) Top-5 Scorers (with AST & REB)
SELECT
  "PLAYER_NAME",
  "TEAM_ABBREVIATION",
  "TEAM_ID",
  "PTS"               AS "points",
  "AST"               AS "assists",
  "REB"               AS "rebounds"
FROM players
WHERE "GAME_ID" = 42400401 AND "PTS" IS NOT NULL
ORDER BY "PTS" DESC
LIMIT 5
;
--5) Player Efficiency & Usage
SELECT
  "PLAYER_NAME",
   "TEAM_ABBREVIATION",
     "TEAM_ID",
  "USG_PCT"      AS usage_rate,
  "TS_PCT"       AS true_shooting_pct,
  "E_OFF_RATING" AS off_rating,
  "E_DEF_RATING" AS def_rating
FROM adv_players
WHERE "GAME_ID" = 42400401
ORDER BY "USG_PCT" DESC
LIMIT 10;

--6) Plus minus leaders
SELECT
  "PLAYER_NAME",
  "TEAM_ABBREVIATION",
     "TEAM_ID",
  "PLUS_MINUS"
FROM players
WHERE "GAME_ID" = 42400401 AND "PLUS_MINUS" IS NOT NULL
ORDER BY "PLUS_MINUS" DESC
LIMIT 5;

--7) Hustle Metrics
SELECT
  "firstName" || ' ' || "familyName" AS player_name,
  "teamId",
  "teamName",
  "deflections",
  "looseBallsRecoveredTotal",
  "screenAssistPoints"
FROM hustle
WHERE "gameId" = 42400401
ORDER BY "deflections" DESC
LIMIT 5;

--8) team 4 factors 
SELECT
  "TEAM_NAME",
  "TEAM_ID",
  "EFG_PCT"    AS efg_pct,
  "TM_TOV_PCT"      AS tov_pct,
  "OREB_PCT"     AS orb_pct,
  "FTA_RATE"      AS ft_rate
FROM team_4
WHERE "GAME_ID" = 42400401;
--9) quarter by quarter
SELECT
  p."EVENTNUM",
  p."PERIOD",
  p."PCTIMESTRING"            AS "clock",
  p."HOMEDESCRIPTION",
  p."VISITORDESCRIPTION",
  at."TEAM_ABBREVIATION",
  at."TEAM_NAME",
  at."NET_RATING",
  at."AST_PCT",
  at."OREB_PCT",
  at."PACE"
FROM "plays" p
  JOIN "adv_team" at
    ON p."GAME_ID" = at."GAME_ID"
WHERE
  p."GAME_ID" = 42400401
  AND at."TEAM_ABBREVIATION" IN('OKC','IND')
ORDER BY
    p."PCTIMESTRING"   DESC
;
--10) clutch
SELECT
  p."PERIOD",
  p."WCTIMESTRING"    AS "wall_clock",
  p."PCTIMESTRING"    AS "play_clock",
  p."HOMEDESCRIPTION",
  p."VISITORDESCRIPTION",
  w."HOME_PCT"        AS "home_win_prob",
  w."VISITOR_PCT"     AS "visitor_win_prob"
FROM "plays" p
JOIN "w_prob" w
  ON p."GAME_ID" = w."GAME_ID"
 AND p."PERIOD" = w."PERIOD"
 AND p."PCTIMESTRING" = w."PCTIMESTRING"
WHERE p."GAME_ID" = 42400401
ORDER BY p."PERIOD" DESC;
--11) lead change 
WITH "MARGINS" AS (
  SELECT
    "PERIOD",
	"GAME_ID"
    "EVENT_NUM",
    "HOME_SCORE_MARGIN"                               AS "SCOREMARGIN",
    LAG("HOME_SCORE_MARGIN") 
      OVER (ORDER BY "PERIOD", "EVENT_NUM")           AS "PREV_MARGIN"
  FROM "w_prob"
  WHERE "GAME_ID" = 42400401
)
SELECT
  COUNT(*)                                           AS "LEAD_CHANGES"
FROM "MARGINS"
WHERE 
     ("SCOREMARGIN" >  0 AND "PREV_MARGIN" <  0)
  OR ("SCOREMARGIN" <  0 AND "PREV_MARGIN" >  0)
;

