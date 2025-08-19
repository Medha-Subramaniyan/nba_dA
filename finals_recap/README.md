# NBA Finals Recap: Oklahoma City Thunder vs Indiana Pacers (2025)

## Project Overview

This project provides a comprehensive analysis of the 2025 NBA Finals series between the Oklahoma City Thunder and Indiana Pacers. Using advanced basketball analytics and play-by-play data, the project examines game flow, momentum shifts, four factors analysis, and individual player performance to understand what determined the outcome of this championship series.

## What It Does

The project collects and analyzes multiple layers of basketball data to provide insights into:

- **Game-by-game results and statistics** - Basic box score data, shooting percentages, rebounds, assists, and turnovers
- **Four factors analysis** - Effective field goal percentage, free throw rate, turnover percentage, and offensive rebound percentage
- **Momentum analysis** - Scoring runs, lead changes, and critical game moments
- **Player performance tracking** - Individual statistics for key players throughout the series
- **Win probability modeling** - Real-time win probability calculations based on score differential and time remaining
- **Turning points identification** - Moments where win probability shifted significantly

## Series Results

**Final Result: Oklahoma City Thunder def. Indiana Pacers 4-2**

| Game | Date | Winner | Score | Home Team | Point Differential |
|------|------|--------|-------|-----------|-------------------|
| 1 | June 8, 2025 | Thunder | 123-107 | Thunder | 16 |
| 2 | June 11, 2025 | Pacers | 116-107 | Pacers | 9 |
| 3 | June 13, 2025 | Thunder | 111-104 | Pacers | 7 |
| 4 | June 16, 2025 | Thunder | 120-109 | Thunder | 11 |
| 5 | June 19, 2025 | Pacers | 108-91 | Pacers | 17 |
| 6 | June 22, 2025 | Thunder | 103-91 | Thunder | 12 |

**Average Point Differential: 12.0 points**

## Key Findings

### Four Factors Analysis
- **Game 1**: Thunder dominated (3-1 advantage in four factors)
- **Games 2-3**: Competitive series (2-2 split in four factors)
- **Games 4-6**: Pacers won four factors but couldn't convert to wins

### Momentum and Game Flow
- **Total Momentum Swings**: 64 significant scoring runs (6+ points)
- **Total Lead Changes**: 71 lead changes throughout the series
- **Series Pattern**: Thunder won close games early, Pacers had one dominant win, Thunder closed strong

### Player Performance Highlights
- **Shai Gilgeous-Alexander (Thunder)**: Series MVP with consistent scoring and playmaking
- **Jalen Williams (Thunder)**: Breakout performance in Game 4 with 40 points
- **Tyrese Haliburton (Pacers)**: Strong playmaking but limited by Thunder defense
- **Pascal Siakam (Pacers)**: Consistent scoring but couldn't overcome team struggles

## Tools and Technologies Used

### Data Collection
- **NBA API** - Official NBA statistics and play-by-play data
- **Python** - Primary programming language for data analysis
- **Pandas** - Data manipulation and analysis
- **NumPy** - Numerical computing

### Data Analysis and Visualization
- **Matplotlib** - Basic plotting and charts
- **Seaborn** - Statistical data visualization
- **Plotly** - Interactive visualizations and dashboards

### Data Processing
- **Custom API wrapper** - Safe API calls with retry logic and rate limiting
- **Data validation** - Robust error handling and data quality checks
- **Statistical modeling** - Win probability calculations and momentum analysis

## Data Files Generated

The project generates several CSV files containing the analyzed data:

- `games_summary.csv` - Basic game statistics and results
- `four_factors_by_game.csv` - Four factors analysis for each game
- `player_performance.csv` - Individual player statistics
- `momentum_analysis.csv` - Momentum swings and scoring runs
- `turning_points.csv` - Critical game moments
- `win_probability_data.csv` - Win probability throughout games

## What Was Learned

### Technical Insights
1. **API Integration Challenges**: Working with sports APIs requires robust error handling, rate limiting, and data validation
2. **Data Quality Issues**: Real-world sports data often has inconsistencies that need careful handling
3. **Performance Optimization**: Processing large amounts of play-by-play data requires efficient algorithms and data structures

### Basketball Analytics Insights
1. **Four Factors Correlation**: Winning four factors doesn't always translate to wins - execution matters more
2. **Momentum vs. Efficiency**: Teams can win despite losing the four factors battle if they execute in critical moments
3. **Series Patterns**: Championship series often follow predictable patterns of adjustment and counter-adjustment
4. **Player Impact**: Individual superstar performance can overcome team statistical disadvantages


## Future Enhancements

Potential improvements for future iterations:
- Real-time data streaming and analysis
- Machine learning models for win probability
- Advanced visualization dashboards
- Comparative analysis across multiple seasons
- Integration with betting market data

## Getting Started

To run this analysis:

1. Install required Python packages:
   ```bash
   pip install nba_api pandas numpy matplotlib seaborn plotly
   ```

2. Run the Jupyter notebook:
   ```bash
   jupyter notebook data.ipynb
   ```

3. The notebook will collect data from the NBA API and generate all analysis files

## Data Sources

- **NBA API**: Official NBA statistics and play-by-play data
- **Date Range**: June 8-22, 2025 (NBA Finals series)
- **Teams**: Oklahoma City Thunder (1610612760) and Indiana Pacers (1610612754)

