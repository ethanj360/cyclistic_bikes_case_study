# Cyclistic Bike Share Case Study
### Converting Casual Riders into Annual Members

## TLDR

**Business Goal**  
Identify how casual riders and annual members use Cyclistic bikes differently and translate those behavioral differences into strategies that increase annual memberships.

**Primary Stakeholder**

Lily Moreno, Director of Marketing, along with Cyclistic’s marketing analytics team focused on converting casual riders into annual members.

**What I Built**
- A cleaned and consolidated bike trip dataset using Google Sheets
- Exploratory pivot table analysis to validate rider behavior patterns
- SQL analysis in Google BigQuery to compare customer and subscriber usage
- A Power BI dashboard designed to support membership conversion recommendations

**Key Deliverables**
- Defined business question and marketing objective
- Cleaned and validated trip data across multiple source files
- Built pivot table summaries to uncover rider behavior patterns
- Wrote SQL queries to compare ride trends by user type
- Created a Power BI dashboard with customer vs subscriber insights
- Delivered recommendations to support annual membership growth

## Links to Deliverables 

- **Power BI Dashboard**  
  Final dashboard showing differences in ride volume, seasonal trends, weekday vs weekend behavior, and usage patterns by rider type.
  - [Power BI Dashboard (.pbix)](Power%20BI%20Files/Cyclistic%20Case%20Study%20Visualizations%20%28Final%29.pbix)
  - [Dashboard PDF](Power%20BI%20Files/Cyclistic%20Case%20Study%20Visualizations%20%28Final%29.pdf)

- **[SQL Files](SQL%20Files/)**  
  BigQuery SQL files used for data cleaning and rider behavior analysis.

- **SQL Subfolders**
  - [Analysis Queries](SQL%20Files/analysis%20queries)
  - [Analysis Query CSV Outputs](SQL%20Files/analysis%20queries%20csvs)
  - [Data Cleaning SQL](SQL%20Files/data_cleaning)

- **Cleaned Dataset and Pivot Tables**  
  Google Sheets file used for cleaning, validation, and pivot table analysis.
  - [Cyclistic_2019_2020_Cleaned (Google Sheets)](https://docs.google.com/spreadsheets/d/1TSul1ksvHAXaogqjXtFZ5MPEoyNczS6uFo51ncu_AEQ/edit)

- **Images**
  - [Power BI Screenshots](images/power%20bi%20screenshots)
  - [Pivot Table Screenshots](images/pivot%20screenshots)

**Findings**
- Subscribers account for over 90% of total rides, showing much higher overall usage than casual riders
- Subscriber rides are concentrated around weekday commute times, while customer rides are more recreational and increase on weekends
- Casual riders take longer trips on average, suggesting different trip intent and value perception
- Customer usage rises during warmer months, creating a strong seasonal marketing opportunity
- Rider behavior patterns support targeted promotions, localized station-based messaging, and digital campaigns aimed at converting high-usage casual riders

**Tools Used**

- Google Sheets
- SQL (Google BigQuery)
- Power BI
- Pivot Tables

**Why It Matters**

This project shows how customer behavior analysis can move beyond summary reporting and directly support marketing strategy. It combines cleaning, validation, SQL analysis, and visualization to answer a real business question around conversion and membership growth.

---

## Overview

This project analyzes Cyclistic bike share data to understand how casual riders and annual members use bikes differently. The goal is not just to describe rider behavior, but to identify practical conversion opportunities that can help Cyclistic grow annual memberships.

To answer that question, I worked through a full analytics process:

1. **Data cleaning and validation** in Google Sheets  
2. **Exploratory analysis** using pivot tables  
3. **SQL analysis** in Google BigQuery  
4. **Dashboard development** in Power BI  

The final result is a business-focused case study that connects user behavior patterns to membership conversion strategy.

---

## Core Business Question

**How do casual riders and annual members use Cyclistic bikes differently, and how can those differences help increase annual memberships?**

This project reflects how a marketing team would actually use analytics:

- Who rides more often?
- When do different user types ride?
- How long do they ride?
- Where do they start rides?
- Which rider behaviors suggest the best opportunities for conversion?

---

## Client Context

**Client Type**  
Bike share company marketing and analytics stakeholders.

**Primary Stakeholders**  
- Lily Moreno, Director of Marketing  
- Cyclistic Marketing Analytics Team  
- Cyclistic Executive Leadership  

**Business Objective**  
Support Cyclistic’s goal of converting more casual riders into annual members through data-backed insights and targeted marketing recommendations.

---

## Data Sources

This project uses public Cyclistic and Divvy bike trip data covering multiple months of ride history.

Source files referenced in the original case study include:
- 2019 Q1 trip data
- 2020 Q1 trip data

The data includes ride timing, duration, user type, and station information, which made it possible to compare how subscribers and customers behave across time and location.

---

## Data Cleaning and Preparation

A major part of this project involved preparing the source files for reliable analysis.

Key cleaning and preparation steps included:

- Saving original source files before making changes
- Checking column consistency across datasets
- Standardizing user type values
- Removing personal or sensitive fields such as birth year and gender
- Removing unused columns including station IDs, coordinates, and rideable type
- Renaming columns for clarity and consistency
- Recalculating ride duration
- Converting date and time fields into proper formats
- Removing invalid rides with negative durations or durations above 24 hours
- Creating weekday vs weekend indicators
- Merging monthly datasets into a single cleaned file

These steps were important because the downstream pivot tables, SQL queries, and dashboard visuals all depended on consistent trip-level data.

---

## Key Data Challenges

### Issue: Ride duration calculations returned incorrect values

**Solution:**  
Date and time fields were reformatted correctly, and ride duration was recalculated using consistent datetime logic.

### Issue: Spreadsheet crashes during dataset merges

**Solution:**  
Data was pasted in chunks, and column counts were validated to ensure complete merges without data loss.

### Issue: BigQuery schema errors during upload

**Solution:**  
Auto schema detection was disabled, and field types were manually defined so the analysis tables would use the correct data types.

### Issue: Start and end time fields returned null values

**Solution:**  
Datetime fields were explicitly cast and validated before loading the data into analysis tables.

---

## Analysis Approach

### Exploratory Analysis in Google Sheets

I first used pivot tables to validate patterns and guide deeper analysis. This helped surface early differences in ride behavior by user type before moving into SQL and dashboarding.

Key exploratory areas included:
- Ride volume by user type
- Top start stations
- Average ride length
- Weekday vs weekend behavior
- Start hour patterns

### SQL Analysis in BigQuery

After cleaning the data, I used SQL to analyze rider behavior more systematically and prepare outputs for Power BI.

The SQL work focused on:
- Comparing ride totals by user type
- Analyzing ride activity by month
- Measuring weekday vs weekend trends
- Comparing ride duration patterns
- Supporting dashboard-ready summaries for visualization

### Dashboard Development in Power BI

I used Power BI to turn the analysis into a clearer stakeholder-facing deliverable. The dashboard was designed to show the biggest behavioral differences between subscribers and customers in a concise, business-friendly format.

---

## Power BI Dashboard Overview

### Subscriber vs. Customer Overview
![Subscriber vs Customer Overview](images/power%20bi%20screenshots/updated_subscriber_vs_customer.png)

This view compares total ride volume by user type and highlights that subscribers account for the vast majority of trips. That makes casual riders the smaller group, but also the clearest conversion opportunity.

---

### Monthly Usage Trends
![Monthly Usage Trends](images/power%20bi%20screenshots/monthly_trends.png)

This dashboard view shows how ride behavior changes over time. Subscriber rides remain consistently high, while customer rides rise more noticeably across the months shown, supporting seasonal marketing opportunities.

---

## Pivot Table Analysis

Before building the final dashboard, I used pivot tables to validate and explore user behavior patterns.

### Top Start Stations by User Type
![Top Start Stations Subscribers](images/pivot%20screenshots/subscriber_start_station_pivot.png)
![Top Start Stations Customers](images/pivot%20screenshots/customer_start_station_pivot.png)

This analysis showed that subscribers tend to start rides near downtown and business-focused areas, while customers more often start near parks, waterfronts, and tourist-oriented locations. This supports localized station-based promotions.

---

### Ride Length Comparison
![Ride Length Pivot](images/pivot%20screenshots/ride_length_pivot.png)

Customers take longer rides on average, while subscribers cluster around shorter trips. This suggests that casual riders are using the service more for leisure, while members are using it more for routine transportation.

---

### Weekday vs Weekend Usage
![Weekday vs Weekend](images/pivot%20screenshots/weekday_vs_weekend.png)

Subscribers ride primarily on weekdays, while customers ride more heavily on weekends. This distinction is important for both campaign timing and offer design.

---

### Start Hour Patterns
![Start Hour Patterns](images/pivot%20screenshots/hourly_usage.png)

Subscriber trips peak around commute hours, while customer usage is more centered around midday and afternoon periods. This reinforces the difference between commuting behavior and recreational behavior.

---

## How to Use This Repository

There are four ways to review this project.

### Option A: Review the Power BI Dashboard

Open the final Power BI files to review the dashboard deliverables.

1. [Power BI Dashboard (.pbix)](Power%20BI%20Files/Cyclistic%20Case%20Study%20Visualizations%20%28Final%29.pbix)  
2. [Dashboard PDF](Power%20BI%20Files/Cyclistic%20Case%20Study%20Visualizations%20%28Final%29.pdf)  

### Option B: Review the SQL Work

Open the SQL folders to review the queries and outputs.

- [SQL Files](SQL%20Files/)
- [Analysis Queries](SQL%20Files/analysis%20queries)
- [Analysis Query CSV Outputs](SQL%20Files/analysis%20queries%20csvs)
- [Data Cleaning SQL](SQL%20Files/data_cleaning)

### Option C: Review the Cleaning and Pivot Tables

- [Cleaned Dataset and Pivot Tables (Google Sheets)](https://docs.google.com/spreadsheets/d/1TSul1ksvHAXaogqjXtFZ5MPEoyNczS6uFo51ncu_AEQ/edit)

### Option D: Review the Visual Screenshots

- [Power BI Screenshots](images/power%20bi%20screenshots)
- [Pivot Table Screenshots](images/pivot%20screenshots)

---

## Deliverables

1. Cleaned and merged bike trip dataset  
2. Pivot table analysis validating rider behavior patterns  
3. BigQuery SQL analysis files and outputs  
4. Power BI dashboard showing customer vs subscriber differences  
5. Business-focused recommendations for membership conversion  

---

## Key Takeaways

- Subscribers generate the vast majority of rides and show strong weekday commuting behavior
- Casual riders take longer trips and are more active on weekends and in warmer periods
- Recreational customer behavior suggests opportunities for conversion messaging around value and frequency
- Geographic and station-level patterns support location-based promotions
- Seasonal and weekend usage trends support more targeted campaign timing

---

## Recommendations

- Target high-usage casual riders during weekends and warmer months, when customer activity is highest
- Promote annual memberships as cost-effective options for riders who take longer and more frequent leisure trips
- Time digital campaigns around weekends, warmer months, and non-commuting hours when customer activity is strongest
- Focus station-based promotions near parks, waterfronts, and tourist-heavy areas where customer starts are more concentrated

---

## Why This Project Matters

Marketing analytics is not just about describing behavior. It is about finding patterns that can drive growth decisions.

This project matters because it combines:

- Data cleaning
- Data validation
- Pivot table exploration
- SQL analysis
- Dashboarding
- Business recommendations

That makes it a strong example of end-to-end analytics tied directly to customer conversion strategy.

---

## What I Learned

This project strengthened my ability to:

- Clean and validate larger, messier datasets  
- Use pivot tables to uncover and confirm behavioral patterns  
- Work through BigQuery schema and datetime issues  
- Translate SQL analysis into dashboard-ready outputs  
- Connect user behavior insights to practical marketing recommendations  
- Build a business-focused Power BI dashboard from raw trip data  
