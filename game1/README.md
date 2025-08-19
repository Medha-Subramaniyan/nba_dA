# NBA Game 1 Data Analysis Project

## What is this project?

This project analyzes data from Game 1 of an NBA playoff series between the Oklahoma City Thunder and Indiana Pacers. It collects detailed statistics about players, teams, and game events to understand what happened during the game.

## What does it do?

The project does several things:

1. **Collects Game Data**: Downloads detailed statistics from the NBA's official database for a specific game
2. **Analyzes Performance**: Looks at how players and teams performed using different types of statistics
3. **Creates Visualizations**: Makes charts and graphs to show scoring patterns, player performance, and team comparisons
4. **Stores Data**: Saves all the information in CSV files and a database for easy access

## Project Output 

Here's what the analysis produced - a comprehensive dashboard showing key game statistics:

![Game 1 Dashboard](Dashboard%201.png)

This dashboard displays:
- Final score (IND 111, OKC 110)
- Top 5 point leaders, assist leaders, and rebound leaders
- Win probability changes throughout the game
- Player efficiency analysis (True Shooting % vs Usage Rate)

## What tools were used?

- **Python**: The main programming language used to write the code
- **NBA API**: A tool that lets us download official NBA statistics
- **Pandas**: A library that helps organize and work with data tables
- **Matplotlib & Plotly**: Tools to create charts and graphs
- **PostgreSQL**: A database system to store and organize the data
- **Jupyter Notebook**: A tool that makes it easy to write and test code step by step

## What was learned?

Through this project, several insights were discovered:

- **Player Performance**: Which players scored the most points and had the best shooting percentages
- **Team Comparison**: How the two teams compared in key areas like shooting, turnovers, and rebounds
- **Game Flow**: How the score changed throughout the game and which team was leading when
- **Advanced Statistics**: Understanding deeper metrics like "true shooting percentage" and "four factors" that help explain why teams win or lose

## Files in this project:

- `g1.ipynb`: The main analysis notebook that downloads data and creates visualizations
- `query.ipynb`: Code that puts the data into a database for easy searching
- Various CSV files: Raw data about players, teams, and game events
- `Sqdata.sql`: Database structure for organizing the data
- `Dashboard 1.png`: A visual summary of the game analysis

This project shows how to use data science tools to understand sports better and find interesting patterns in game statistics.