# 🏨 Hotel Management System (Data Analysis Project)

## 📌 Project Overview
This project analyzes hotel booking data to understand customer behavior, cancellations, and booking trends.

The project is built using:
- MySQL (for database)
- Power BI (for dashboard & visualization)

---

## 🎯 Objectives
- Analyze hotel booking patterns
- Identify cancellation trends
- Understand guest types (Couples, Family, Single)
- Study monthly booking trends
- Improve business decision-making

---

## 🗂 Dataset Details
The dataset includes:
- Hotel Type (Resort / City)
- Booking Status (Canceled / Check-Out / No-Show)
- Lead Time
- Arrival Date (Year, Month)
- Adults, Children, Babies
- Country
- Room Type (Reserved & Assigned)
- Guest Type

---

## 🛠 Tools Used
- MySQL Workbench
- Power BI Desktop
- GitHub

---

## 🧮 SQL Queries Used

### 1. Monthly Bookings
```sql
SELECT arrival_date_month, COUNT(*) 
FROM hotel_bookings
GROUP BY arrival_date_month;

2. Cancellation Rate
SELECT is_canceled, COUNT(*) 
FROM hotel_bookings
GROUP BY is_canceled;

3. Guest Type Analysis
SELECT guest_type, COUNT(*) 
FROM hotel_bookings
GROUP BY guest_type;

📊 Power BI Dashboard Features
KPI Cards (Total Bookings, Cancellation Rate)
Bar Chart (Bookings by Month)
Pie Chart (Guest Type)
Slicer (Hotel Type, Country, Month)
Table (Detailed Data)

📈 Insights
High cancellations in early bookings (high lead time)
Couples are the most frequent guests
Peak bookings in summer months
Some room types are frequently reassigned

🚀 How to Run Project
Import dataset into MySQL
Run SQL queries
Connect MySQL to Power BI
Build dashboard

👩‍💻 Author
Tanushree

⭐ Conclusion
This project helps understand hotel booking behavior and improves decision-making using data analysis and visualization.


---

