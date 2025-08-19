# NBA Finals 2025 

This repository contains a comprehensive data-driven analysis of the 2025 NBA Finals, merging data and analysis from Games 1, 2, and the overall series recap.

## Repository Structure

```
2025_finals/
├── data/
│   ├── game1/          # Game 1 data files
│   ├── game2/          # Game 2 data files
│   └── recap/          # Series recap and summary data
├── notebooks/          # Jupyter notebooks for analysis
└── README.md          # This file
```

## Data Files

### Game 1 Data (`data/game1/`)
- `win_prob.csv` - Win probability data throughout the game
- `plays.csv` - Play-by-play data
- `player_data.csv` - Individual player statistics
- `team_data.csv` - Team-level statistics
- `players_four_factors.csv` - Four factors analysis for players
- `teams_four_factors.csv` - Four factors analysis for teams
- `hustle.csv` - Hustle stats (deflections, loose balls, etc.)
- `adv_players.csv` - Advanced player metrics
- `adv_team.csv` - Advanced team metrics
- `Pacers_shotchart.csv` - Shot chart data for Pacers
- `Sqdata.sql` - SQL queries for data extraction
- `Dashboard 1.png` - Visualization dashboard

### Game 2 Data (`data/game2/`)
- `win_prob.csv` - Win probability data throughout the game
- `player_data.csv` - Individual player statistics
- `team_data.csv` - Team-level statistics
- `players_four_factors.csv` - Four factors analysis for players
- `hustle.csv` - Hustle stats
- `adv_team.csv` - Advanced team metrics
- `four_factors.png` - Four factors visualization

### Series Recap Data (`data/recap/`)
- `games_summary.csv` - Summary statistics for all games
- `momentum_analysis.csv` - Momentum and scoring run analysis
- `player_performance.csv` - Player performance across the series
- `turning_points.csv` - Key turning points in the series
- `four_factors_by_game.csv` - Four factors analysis by game

## Analysis Notebooks (`notebooks/`)

- `g1.ipynb` - Game 1 detailed analysis
- `g2.ipynb` - Game 2 detailed analysis
- `query.ipynb` - Data querying and exploration
- `data.ipynb` - Series recap and summary analysis

## Data Sources

This analysis combines data from:
- NBA Stats API
- Play-by-play data
- Advanced metrics
- Win probability models
- Four factors analysis

## Usage

1. Navigate to the `notebooks/` directory
2. Open any of the Jupyter notebooks to explore the analysis
3. Data files are organized by game and analysis type in the `data/` directory

## Merged Repositories

This repository combines data and analysis from:
- `game1` repository - Game 1 analysis and data
- `game2` repository - Game 2 analysis and data  
- `finals_recap` repository - Series overview and summary analysis
