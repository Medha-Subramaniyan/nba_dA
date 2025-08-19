# 🏀 NBA Finals Live Dashboard

A real-time NBA Finals dashboard that provides live player statistics, team performance metrics, and play-by-play analysis with automatic data refresh every 10 seconds.

## ✨ Features

- **Live Data Streaming**: Real-time NBA data fetched from live.nba.com and stats.nba.com
- **Interactive Dashboard**: Built with Streamlit for an intuitive user experience
- **Multiple Views**: 
  - Player Statistics with top scorers visualization
  - Team Performance metrics
  - Play-by-Play feed with quarter-by-quarter analysis
- **Auto-refresh**: Dashboard updates automatically every 10 seconds
- **PostgreSQL Integration**: Robust data storage and retrieval
- **Responsive Design**: Wide layout optimized for dashboard viewing

## 🚀 Quick Start

### Prerequisites

- Python 3.8+
- PostgreSQL database
- NBA API access

### Installation

1. **Clone the repository**
   ```bash
   git clone <your-repo-url>
   cd Finals_Dash
   ```

2. **Install dependencies**
   ```bash
   pip install -r requirements.txt
   ```

3. **Set up PostgreSQL database**
   - Create a database named `dash3`
   - Update connection string in `app.py` if needed:
     ```python
     dsn = "postgresql://postgres:password@localhost:5432/dash3"
     ```

4. **Run the data fetcher** (in a separate terminal)
   ```bash
   jupyter notebook fetch_live_data.ipynb
   ```
   - Execute the notebook to start fetching live NBA data

5. **Launch the dashboard**
   ```bash
   streamlit run app.py
   ```

## 📊 Dashboard Views

### Player Statistics
- Individual player performance metrics
- Top 10 scorers visualization
- Points, rebounds, assists, and shooting percentages
- Filterable by game ID

### Team Statistics
- Team performance comparison
- Field goal percentages, rebounds, assists
- Points visualization by team
- Game-by-game breakdown

### Play-by-Play
- Real-time game events
- Quarter-by-quarter scoring progression
- Cumulative points visualization
- Detailed event descriptions

## 🔧 Technical Details

### Architecture
- **Frontend**: Streamlit web application
- **Backend**: Python with pandas for data processing
- **Database**: PostgreSQL for data storage
- **Data Source**: NBA API (live.nba.com and stats.nba.com)
- **Visualization**: Plotly charts and graphs

### Data Flow
1. `fetch_live_data.ipynb` continuously fetches live NBA data
2. Data is processed and stored in PostgreSQL tables
3. Streamlit dashboard queries the database every 10 seconds
4. Interactive visualizations are updated in real-time

### Database Schema
- **player_stats**: Individual player performance data
- **team_stats**: Team-level statistics
- **play_by_play**: Detailed game events

## 📁 Project Structure

```
Finals_Dash/
├── app.py                 # Main Streamlit dashboard application
├── fetch_live_data.ipynb # Jupyter notebook for data fetching
├── requirements.txt       # Python dependencies
├── README.md             # This file
├── play_G1.csv          # Sample play-by-play data
├── player_stats_G1.csv  # Sample player statistics
└── team_stats_G1.csv    # Sample team statistics
```

## 🛠️ Configuration

### Environment Variables
You can customize the following settings:

- **Database Connection**: Update the connection string in `app.py`
- **Refresh Interval**: Modify the auto-refresh timing (currently 10 seconds)
- **Data Fetching**: Adjust the sleep intervals in the data fetcher notebook

### Customization
- Add new visualization types in `app.py`
- Modify data processing logic in the notebook
- Extend database schema for additional metrics

## 📈 Usage Examples

### Viewing Live Player Stats
1. Select "Player Stats" from the sidebar
2. Choose a specific game ID
3. View top scorers chart and raw data

### Analyzing Team Performance
1. Navigate to "Team Stats" view
2. Select game ID for analysis
3. Compare team metrics and scoring

### Following Game Flow
1. Open "Play-by-Play" view
2. Monitor real-time game events
3. Track scoring progression by quarter

## 🔍 Troubleshooting

### Common Issues

**Dashboard not loading data:**
- Check PostgreSQL connection
- Verify data fetcher is running
- Ensure database tables exist and contain data

**Data not updating:**
- Confirm auto-refresh is enabled
- Check data fetcher notebook execution
- Verify NBA API connectivity

**Performance issues:**
- Reduce refresh frequency
- Optimize database queries
- Check system resources

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Test thoroughly
5. Submit a pull request

## 📝 License

This project is licensed under the MIT License - see the LICENSE file for details.

## 🙏 Acknowledgments

- NBA API for providing live game data
- Streamlit for the web application framework
- PostgreSQL for robust data storage
- Plotly for interactive visualizations

## 📞 Support

For questions or issues:
- Check the troubleshooting section above
- Review the code comments for implementation details
- Open an issue in the repository

---

**Note**: This dashboard is designed for NBA Finals games and requires active NBA games to display meaningful data. Make sure to run the data fetcher during live games for the best experience.
