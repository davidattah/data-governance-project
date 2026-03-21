# Data Governance & Quality Assessment Project

## Overview

This project demonstrates a data governance and data quality assessment using SQL and Tableau. The objective was to analyze customer data, identify data quality issues, and develop monitoring metrics to improve data reliability and governance practices.

## Objectives

* Assess data quality across key customer fields
* Identify missing, invalid, and duplicate data
* Develop data quality metrics and KPIs
* Build a dashboard to monitor data health
* Support governance and compliance best practices

## Tools & Technologies

* SQL (MySQL)
* Tableau
* Excel (for initial exploration)
* 
## Dataset

A synthetic customer dataset of 130+ records was created, including:

* Missing values (NULLs and empty fields)
* Invalid formats (emails, phone numbers)
* Duplicate records
* Inconsistent data entries

## Key Analysis Performed

### Data Profiling

* Total record count
* Field-level completeness checks
* Distribution analysis by country

### Data Quality Checks

* Missing values (Email, Phone, Country)
* Invalid email formats
* Duplicate customer records
* Inconsistent data entries

### Data Quality Metrics

* % Missing values by field
* Number of incomplete records
* Data Quality Score per record
* Good vs Poor data classification

## Tableau Dashboard

The Tableau dashboard was developed to monitor key data quality metrics:

### KPIs:

* Total Records
* % Missing Email
* % Missing Phone
* % Missing Country
* Data Quality Score

### Visualizations:

* Good vs Poor Data Quality (Pie Chart)
* Missing Data by Field (Bar Chart)
* Country Distribution
* Invalid Email Analysis

## Key Insights

* A significant portion of records contained missing or invalid email data
* Data quality issues were concentrated in customer contact fields
* Duplicate records were identified, impacting data integrity
* Inconsistent data formats highlighted the need for validation rules


## Governance Recommendations

* Enforce NOT NULL constraints on critical fields
* Implement validation rules for email and phone formats
* Introduce data quality monitoring dashboards
* Establish data stewardship and ownership
* Align data practices with privacy regulations such as PIPEDA

## Outcome

This project demonstrates the ability to:

* Perform data quality assessments using SQL
* Apply data governance principles
* Build monitoring dashboards in Tableau
* Communicate data insights effectively


## Project Assets

* SQL Queries: `queries.sql`
* Dataset: `customers_dataset_130.csv`
* Dashboard: (Add Tableau Public Link Here)
* Report: (Add PDF Link Here)
