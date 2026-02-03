# Cyclistic Bike Share Case Study

## Overview
This project analyzes historical bike trip data for Cyclistic, a bike share company, to understand how casual riders and annual members use bikes differently. The goal of this analysis is to identify behavioral patterns that can inform strategies to convert casual riders into annual members.

The analysis follows a full data analytics workflow including data cleaning, SQL analysis, and dashboard development in Power BI.

---

## Business Task
Cyclistic’s marketing team wants to maximize the number of annual memberships.

Key questions include:
• How do annual members and casual riders use Cyclistic bikes differently?
• Why would casual riders purchase an annual membership?
• How can Cyclistic use digital media to influence casual riders to become members?

---

## Stakeholders
• Lily Moreno, Director of Marketing  
• Cyclistic Marketing Analytics Team  
• Cyclistic Executive Leadership  

---

## Data Sources
Public bike trip data provided by Cyclistic and Divvy.

Data sources:

• [Cyclistic Ride Trip Data 2019 Q1](https://docs.google.com/spreadsheets/d/1winAdsMgjizcwRZF0vy5VHZv9Asw52x4daojS48MsMM/edit?gid=640449855#gid=640449855)

• [Cyclistic Ride Trip Data 2020 Q1](https://docs.google.com/spreadsheets/d/1awxji14ish6Nez8q2vTYvLoW3giU9EacpI2fB7oxFAQ/edit?gid=1797029090#gid=1797029090)

Data covers multiple months of ride history and includes ride timing, duration, user type, and station information.

---

## Data Cleaning and Preparation
The following steps were taken to ensure data accuracy, consistency, and privacy:

• Saved original raw files before making changes  
• Verified column consistency across monthly datasets  
• Standardized user type values (subscriber vs customer)  
• Removed personal and sensitive fields such as birth year and gender  
• Removed unused columns including station IDs, coordinates, and rideable type  
• Renamed columns for clarity (ride_id to trip_id)  
• Recalculated ride duration to ensure consistency  
• Converted date and time fields to proper formats  
• Removed invalid rides with negative duration or duration greater than 24 hours  
• Added derived columns including weekday and AM/PM time segments  
• Merged monthly datasets into a single cleaned file  

---

## Key Problems and Solutions

### Issue: Ride duration calculations returned incorrect values
Solution:
Date and time fields were reformatted properly and ride duration was recalculated using consistent datetime logic.

### Issue: Spreadsheet crashes during merge
Solution:
Data was pasted in chunks and column counts were validated to ensure full merges without data loss.

### Issue: BigQuery schema errors during upload
Solution:
Auto schema detection was disabled and field types were manually defined. A new table was created with correct data types instead of strings.

### Issue: Start and end time fields returned null values
Solution:
Datetime fields were explicitly cast and validated before loading into analysis tables.

---

## Analysis and Key Findings

### Who rides
Subscribers account for over 90 percent of total rides, indicating significantly higher overall engagement.

### When they ride
Subscribers show strong weekday morning and evening usage, consistent with commuting patterns. Customer usage increases on weekends and during warmer months.

### How long they ride
Customers consistently take longer rides, while subscribers favor shorter, more frequent trips.

### Why they ride
Customers are far more likely to take round trips, suggesting recreational usage rather than point to point commuting.

---

## Visualizations and Dashboard
All analysis results are presented in an interactive Power BI dashboard.

Dashboard includes:
• Subscriber vs customer usage overview  
• Monthly usage trends  
• Ride duration and trip length analysis  
• Round trip behavior  
• Weekday vs weekend usage patterns  

Power BI files:

• [Cyclistic Case Study Visualizations](Cyclistic Case Study Visualizations (Final).pbix)

• [Visualizations PDF](Cyclistic Case Study Visualizations (Final).pdf)

---

## Recommendations
1. Target high usage casual riders during weekends and peak seasons with membership promotions.
2. Promote annual memberships as cost effective options for frequent leisure riders.
3. Use digital ads timed around weekends and warmer months when customer activity peaks.

---

## What I Learned
This project strengthened my ability to work with large datasets, resolve data quality issues, and translate behavioral patterns into business recommendations. I gained hands on experience with SQL, Power BI, and real world data cleaning challenges while practicing stakeholder focused analysis.

---

## Tools Used
• SQL (Google BigQuery)
• Google Sheets
• Power BI
• Excel

