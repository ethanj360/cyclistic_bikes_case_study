# Cyclistic Bike Share Case Study

## TL;DR
Analyzed Cyclistic bike share data to compare how casual riders and annual subscribers use bikes differently. Cleaned and merged raw datasets, explored behavior using pivot tables, ran SQL analysis in BigQuery, and built a Power BI dashboard. Found that subscribers primarily use bikes for weekday commuting, while customers ride longer, more recreational trips on weekends and during warmer months. These patterns highlight clear opportunities to convert casual riders into annual members through targeted marketing and station-based promotions.


## Overview
This project analyzes historical bike trip data for Cyclistic, a bike share company, to understand how casual riders and annual members use bikes differently. The primary objective is to identify behavioral patterns that can help Cyclistic convert more casual riders into annual members.

The analysis follows a complete data analytics workflow, including data cleaning, exploratory analysis with pivot tables, SQL querying in Google BigQuery, and dashboard development in Power BI.

---

## Business Task
Cyclistic’s marketing team aims to increase the number of annual memberships.

Key questions guiding this analysis include:
- How do annual members and casual riders use Cyclistic bikes differently?
- Why might casual riders choose to purchase an annual membership?
- How can Cyclistic use digital media to influence casual riders to become members?

---

## Stakeholders
- Lily Moreno, Director of Marketing  
- Cyclistic Marketing Analytics Team  
- Cyclistic Executive Leadership  

---

## Data Sources
Public bike trip data provided by Cyclistic and Divvy.

Data sources include:
- [Cyclistic Ride Trip Data 2019 Q1](https://docs.google.com/spreadsheets/d/1winAdsMgjizcwRZF0vy5VHZv9Asw52x4daojS48MsMM/edit#gid=640449855)
- [Cyclistic Ride Trip Data 2020 Q1](https://docs.google.com/spreadsheets/d/1awxji14ish6Nez8q2vTYvLoW3giU9EacpI2fB7oxFAQ/edit#gid=1797029090)

The data covers multiple months of ride history and includes ride timing, duration, user type, and station information.

---

## Data Cleaning and Preparation
The following steps were taken to ensure data accuracy, consistency, and privacy:

- Saved original raw files before making any changes  
- Verified column consistency across monthly datasets  
- Standardized user type values (subscriber vs customer)  
- Removed personal or sensitive fields such as birth year and gender  
- Removed unused columns including station IDs, coordinates, and rideable type  
- Renamed columns for clarity and consistency (ride_id → trip_id)  
- Recalculated ride duration to ensure consistent measurement  
- Converted date and time fields to proper formats  
- Removed invalid rides with negative durations or durations greater than 24 hours  
- Added weekday/weekend indicators  
- Merged all monthly datasets into a single cleaned file  

Cleaned dataset with pivot tables:  
- [Cyclistic_2019_2020_Cleaned](https://docs.google.com/spreadsheets/d/1TSul1ksvHAXaogqjXtFZ5MPEoyNczS6uFo51ncu_AEQ/edit#gid=1797029090)

---

## Key Problems and Solutions

### Issue: Ride duration calculations returned incorrect values
**Solution:**  
Date and time fields were reformatted correctly, and ride duration was recalculated using consistent datetime logic.

### Issue: Spreadsheet crashes during dataset merges
**Solution:**  
Data was pasted in chunks, and column counts were validated to ensure complete merges without data loss.

### Issue: BigQuery schema errors during upload
**Solution:**  
Auto schema detection was disabled, and field types were manually defined. A new table was created with proper data types instead of strings.

### Issue: Start and end time fields returned null values
**Solution:**  
Datetime fields were explicitly cast and validated prior to loading data into analysis tables.

---

## Analysis and Key Findings

### Who rides
Subscribers account for over 90 percent of total rides, indicating significantly higher overall usage compared to casual riders.

### When they ride
Subscribers show strong weekday morning and evening usage, consistent with commuting behavior. Customer usage increases on weekends and during warmer months.

### How long they ride
Customers consistently take longer rides, while subscribers favor shorter, more frequent trips.

### Why they ride
Customers are far more likely to take round trips, suggesting recreational usage rather than point-to-point commuting.

---

## Pivot Table Analysis

Before building SQL queries and the Power BI dashboard, exploratory analysis was conducted using pivot tables in Google Sheets. These pivot tables helped validate trends, uncover behavioral patterns, and guide deeper analysis.

Full pivot tables are available here for reference and editing:
- [Cyclistic Data and Pivot Tables](https://docs.google.com/spreadsheets/d/1TSul1ksvHAXaogqjXtFZ5MPEoyNczS6uFo51ncu_AEQ/edit#gid=1797029090)

### Key Exploratory Insights

#### Top Start Stations by User Type
Pivot tables revealed distinct geographic usage patterns:
- Subscribers tend to start rides near downtown and business districts  
- Customers frequently start rides near parks, waterfronts, and tourist areas  

This insight supports station-based marketing and localized promotions at high-traffic customer locations.

![Top Start Stations: Subscribers](images/pivot%20screenshots/subscriber_start_station_pivot.png)
![Top Start Stations: Customers](images/pivot%20screenshots/customer_start_station_pivot.png)

---

#### Ride Length Comparison
Average ride length pivot tables showed a clear behavioral difference:
- Customers consistently take longer rides  
- Subscribers favor shorter, repeat trips  

This confirms that customers primarily use bikes for leisure, while subscribers use them for commuting.

![Ride Length Pivot](images/pivot%20screenshots/ride_length_pivot.png)

---

#### Weekday vs Weekend Usage
Pivot tables comparing weekday and weekend usage showed:
- Subscribers ride primarily on weekdays  
- Customers ride disproportionately more on weekends  

This supports targeting casual riders with weekend-focused campaigns and membership offers.

![Weekday vs Weekend](images/pivot%20screenshots/weekday_vs_weekend.png)

---

#### Start Time Patterns
Hourly start time analysis revealed:
- Subscriber rides peak during weekday morning and evening rush hours  
- Customer rides peak during midday and afternoon hours  

This insight helps inform digital advertising timing and messaging strategies.

![Start Hour Patterns](images/pivot%20screenshots/hourly_usage.png)

---

## Visualizations and Dashboard
All analysis results are presented in an interactive Power BI dashboard.

Dashboard includes:
- Subscriber vs Customer Overview
    - Shows total ride volume split
![Subscriber vs Customer Overview](images/power%20bi%20screenshots/subscriber_vs_customer.png)


- Monthly Usage Trends
    - Shows seasonal patterns and riding behavior based on months
 ![Monthly Usage Trends](images/power%bi%screenshots/monthly_trends.png)


- Ride Behavior and Trip Length
    - Highlights difference in ride duration 
- Leisure vs Commuting Usage Patterns
    - Shows what times and days users prefer

Power BI files:
- [Power BI Dashboard (.pbix)](https://github.com/ethanj360/cyclistic_bikes_case_study/blob/main/Power%20BI%20Files/Cyclistic%20Case%20Study%20Visualizations%20(Final).pbix)
- [Dashboard PDF](https://github.com/ethanj360/cyclistic_bikes_case_study/blob/main/Power%20BI%20Files/Cyclistic%20Case%20Study%20Visualizations%20(Final).pdf)

---

## Recommendations
1. Target high-usage casual riders during weekends and peak seasons with membership promotions.  
2. Promote annual memberships as cost-effective options for frequent leisure riders.  
3. Time digital ads around weekends, warmer months, and non-commuting weekday hours.  
4. Focus marketing efforts on high-traffic customer start stations.

---

## What I Learned
This project strengthened my ability to work with large datasets, resolve real-world data quality issues, and translate behavioral insights into actionable business recommendations. I gained hands-on experience with SQL, Power BI, pivot tables, and stakeholder-focused analysis.

---

## Tools Used
- SQL (Google BigQuery)  
- Power BI  
- Pivot Tables  
- Excel  
- Google Sheets  
