# 🚀 Multi-Source ETL Pipeline for GANS

![Python](https://img.shields.io/badge/Python-3.10-blue)
![MySQL](https://img.shields.io/badge/MySQL-Database-blue)
![ETL](https://img.shields.io/badge/ETL-Pipeline-orange)
![Jupyter](https://img.shields.io/badge/Jupyter-Notebook-orange)
![Status](https://img.shields.io/badge/Project-Completed-green)

---

## 🎯 Project Overview

This project demonstrates a **multi-source ETL (Extract, Transform, Load) pipeline** that integrates data from multiple external sources into a centralized relational database.

The pipeline collects data related to **cities, population, weather, airports, and flights**, processes and transforms it using Python, and loads it into a structured MySQL database for analysis.

The goal is to simulate a **real-world data engineering workflow** that converts scattered data sources into a unified, query-ready system for analytics.

---

## 🧠 Problem Statement

In real-world systems, data is distributed across multiple APIs and datasets.

This project solves the problem:

> How can we integrate multiple heterogeneous data sources into a single structured database for analysis and decision-making?

---

## ⚙️ ETL Pipeline Architecture

```
Data Sources (APIs + Wikipedia + Internal Data)
         ↓
Extract (Python scripts)
         ↓
Transform (Pandas cleaning & processing)
         ↓
Load (MySQL relational database)
         ↓
Analytics / Query-ready data
```
---

## 📊 Data Sources

This pipeline integrates multiple datasets to build a unified city-level database.

### 🏙️ Cities Data
- **Source:** Internal dataset
- **Data Collected:**
  - City names
  - Country information
  - Latitude and longitude

---

### 👥 Population Data
- **Source:** Wikipedia
- **Data Collected:**
  - Population values
  - Area information
  - Timestamp/year of data

---

### 🌤️ Weather Data
- **Source:** OpenWeather API
- **Data Collected:**
  - Temperature
  - Feels-like temperature
  - Weather conditions
  - Humidity
  - Wind speed
  - Rain information

---

### ✈️ Airports Data
- **Source:** AeroDataBox API
- **Data Collected:**
  - ICAO and IATA codes
  - Airport name
  - Geographic coordinates

---

### 🔗 Cities-Airports Mapping (cities_airports)
- **Source:** Derived dataset
- **Data Collected:**
  - Relationship between cities and airports
  - Foreign key mapping (city_id ↔ ICAO)

---

### 🛫 Flights Data
- **Source:** AeroDataBox API
- **Data Collected:**
  - Flight numbers
  - Scheduled arrival time
  - Updated arrival time
  - Departure airport
  - ICAO reference

---

## 🚀 Key Features

- Multi-source data extraction using APIs and datasets  
- Data cleaning and transformation using Python (Pandas)  
- Relational database design with MySQL  
- Foreign key relationships for data integrity  
- End-to-end ETL pipeline implementation  
- Scalable structure for additional data sources  

---

## 🛠️ Technologies Used

### Programming
- Python

### Libraries
- pandas
- requests
- sqlalchemy
- pymysql
- beautifulsoup4

### Database
- MySQL

### Environment
- Jupyter Notebook

---

## 📁 Project Structure

```text
multi-source-etl-pipeline-for-gans/
│
├── 📂 SQL
│   └── Cities_db.sql
│
├── 📂 jupyter notebook
│   └── gans_final.ipynb
│
├── 📂 screenshot
│   └── database.png
│
├── .gitignore
└── README.md
```

---

## 🗄️ Database Design

The project uses a **normalized relational schema** to ensure structured and consistent data storage.

### Main Tables (in order of data flow)

- cities  
- population  
- weather  
- airports  
- cities_airports  
- flights  

These tables are connected using **primary and foreign key relationships**.

---

## 📈 Database Schema

The following diagram illustrates the relational database design used in this project.

![Database Schema](screenshot/database.png)

---

## 🔗 Project Files

### 🗄️ SQL Script
- [Database Schema (SQL)](https://github.com/keertikamanikandan/multi-source-etl-pipeline-for-gans/blob/main/SQL/Cities_db.sql)
  
### 📓 Jupyter Notebook
- [ETL Pipeline Notebook](https://github.com/keertikamanikandan/multi-source-etl-pipeline-for-gans/blob/main/jupyter%20notebook/gans_final.ipynb)


---

## 🔗 How to Use This Project

### 1. Clone Repository

```bash
git clone https://github.com/your-username/multi-source-etl-pipeline-for-gans.git
```

### 2. Create Database

Run the SQL script in MySQL:

```text
SQL/Cities_db.sql
```

This will create all required tables in MySQL.

### 3. Run ETL Pipeline

Open the Jupyter Notebook:

```text
jupyter notebook/gans_final.ipynb
```

Run all cells sequentially to execute the ETL pipeline.

---

### 4. Configure API Keys

Before running the notebook, ensure you add your API keys for:
- OpenWeather API
- AeroDataBox API

---

## 🚀 Future Improvements

- Automate the ETL pipeline using scheduling tools  
- Improve data validation and error handling for API data  
- Optimize database performance using indexing and query tuning  
- Extend the pipeline with additional cities and data sources  

---
## 🎯 Conclusion

This project demonstrates a complete end-to-end ETL pipeline that integrates multiple real-world data sources into a structured relational database.

By combining city, population, weather, airport, and flight data, the system creates a unified dataset that can support deeper analysis and decision-making. The project highlights key data engineering concepts such as data extraction from APIs, transformation using Python, relational database design, and data loading into MySQL.

Overall, this pipeline serves as a strong foundation for scalable data integration systems and can be extended further with automation, cloud deployment, and real-time data processing capabilities.

---

## 📧 Contact

**Keertika Manikandan**

- GitHub: https://github.com/keertikamanikandan
- LinkedIn: https://linkedin.com/in/keertika-palaniappan
