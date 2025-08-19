# NBA Game 2 Data Analysis Project

## What is this project?

This project analyzes data from Game 2 of the 2025 NBA Playoffs between the Oklahoma City Thunder (OKC) and Indiana Pacers (IND). It collects detailed basketball statistics and creates visualizations to understand how the game played out.

## What does it do?

The project does several things:

1. **Collects Game Data**: Pulls information about a specific NBA game using the NBA API
2. **Gathers Player Stats**: Gets basic stats like points, rebounds, and assists for each player
3. **Collects Team Stats**: Gathers team-level statistics and advanced metrics
4. **Analyzes Game Flow**: Looks at how the score changed throughout the game
5. **Creates Visualizations**: Makes charts and graphs to show the data in an easy-to-understand way

## What tools were used?

- **Python**: The main programming language
- **NBA API**: A tool that gives access to official NBA statistics
- **Pandas**: A library for organizing and working with data tables
- **Matplotlib**: A tool for creating basic charts and graphs
- **Plotly**: A tool for making interactive charts
- **Jupyter Notebook**: A way to write and run code step by step

## What was learned?

### Data Collection
- How to use the NBA API to get real basketball statistics
- How to organize different types of data (player stats, team stats, game flow)
- How to save data to CSV files for later use

### Data Analysis
- How to find the top scorers in a game
- How to track how the score changes throughout a game
- How to compare teams using "four factors" (shooting, free throws, turnovers, rebounds)
- How to calculate advanced statistics like true shooting percentage

### Visualization
- How to create bar charts showing player performance
- How to make line graphs showing score progression
- How to compare team statistics side by side
- How to save charts as image files

### Basketball Insights
- Which players performed best in the game
- How the game momentum shifted over time
- How teams compared in key statistical areas
- The importance of different basketball metrics

## Files Created

- `player_data.csv`: Individual player statistics
- `team_data.csv`: Team-level statistics
- `adv_team.csv`: Advanced team metrics
- `hustle.csv`: Hustle statistics (deflections, loose balls, etc.)
- `win_prob.csv`: Win probability data throughout the game
- `players_four_factors.csv`: Player four factors analysis
- `four_factors.png`: Visual comparison of team four factors

## How to Use

1. Make sure you have Python installed
2. Install the required packages: `pip install nba_api pandas matplotlib plotly`
3. Open the `g2.ipynb` file in Jupyter Notebook
4. Run the cells to see the analysis and create the visualizations

This project shows how to turn raw basketball data into meaningful insights that help understand what happened in a game and why teams won or lost.