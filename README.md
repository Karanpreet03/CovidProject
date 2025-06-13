# CovidProject

**🔍 COVID‑19 Data Analysis & Visualization**  
This repository showcases a comprehensive data analysis and visualization project exploring COVID‑19 trends using **SQL** and **Tableau**.

---

## ⚙️ Project Overview

- **Objective**: Provide insightful, data-driven visualizations to understand COVID‑19 case evolution, geographic spread, and recovery/death trends.
- **Tools Used**:
  - **SQL**: Data aggregation, cleaning, and transformation.
  - **Tableau**: Interactive dashboards for clear storytelling.
- **Target Audience**: Health researchers, public policy analysts, educators, and data enthusiasts seeking to understand the pandemic through concrete data visuals.

---

## 🗂️ Repository Structure

├── data/
│   *.csv # Raw COVID‑19 case and vaccination data sources
├── sql/
│ └── tableau_sql_exports.sql # Prepped datasets for Tableau extraction
└── README.md # 📘 You are here


---

## 📊 Tableau Dashboard

Explore the interactive visualization here:  
**[![Open Dashboard](https://img.shields.io/badge/Tableau-Dashboard-blue)](https://public.tableau.com/shared/GRQFQ45PR?:display_count=n&:origin=viz_share_link)**

**Dashboard Highlights**:
- Geographic spread by country/province over time  
- Trends in case counts, deaths, and recoveries  
- Predictive modeling of future case trajectories  

---

## 🔧 How to Run This Project

1. **Obtain Data Sources**  
   - Download latest COVID‑19 datasets from sources like https://ourworldindata.org/covid-deaths and/or JHU CSSE.
   - Place files in the `data/` directory.

2. **Execute SQL Scripts**  
   - Use your preferred SQL engine (e.g., PostgreSQL, SQLite).
   - Run `covid_sql_queries.sql` to clean and prepare your dataset.
   - Run `tableau_sql_exports.sql` to generate CSVs ready for Tableau.

3. **Open Tableau Dashboard**  
   - Connect Tableau to exported data.
   - Refresh and customize visuals as needed.

---

## 📈 Key Findings

- Clear peaks and waves visible across regions and time periods  
- Predictive trend lines suggest future case loads (with confidence)
- Comparative analysis reveals variation in recovery rates by geography

---

## 🧩 Customization & Extensions

- **Import new data**: Run SQL scripts against updated datasets  
- **Add visualizations**: Use Tableau to surface new metrics, such as vaccination rates or demographic breakdowns  
- **Share your work**: Export a new Tableau Public dashboard and link it here

---

## 🧠 Learn More

- **SQL scripts** are well-commented to explain dataset transformations  
- **Tableau workbook** includes tooltips and filters for deeper insights  
- **Best Practices**: Combines rigorous data prep with interactive, user-friendly visuals  

---

## ℹ️ Contact & Attribution

Created by **Karanpreet Sachdeva**  
Feel free to raise issues or suggest improvements!  
If you use this project, please kindly cite or reference it.

---  
_April 2025 · COVID‑19 Data Analytics_
