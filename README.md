# TokyoOlympicsAzure
## Overview
This project demonstrates an end-to-end data pipeline for the Tokyo 2020 Olympics dataset, from data ingestion and transformation in Azure Synapse Analytics to creating interactive visualizations in Tableau. The goal is to provide insights into various aspects of the Olympics, including medal distribution, participation trends, and country performance.

## Objectives
- **Ingest** raw data from CSV files into Azure Synapse Analytics.
- **Transform and Clean** the data using SQL in Synapse Analytics.
- **Aggregate** the data to create meaningful datasets for analysis.
- **Visualize** the processed data using Tableau to create interactive dashboards.

## Project Workflow
The project is divided into several key stages:

### 1. Data Ingestion
- **Tools Used**: Azure Synapse Analytics, Azure Data Factory
- **Process**:
  1. **Azure Data Factory Pipeline**: Created a pipeline in Azure Data Factory to load raw CSV files (Athletes.csv, Coaches.csv, EntriesGender.csv, Medals.csv, Teams.csv) into Azure Data Lake.
  2. **Ingestion to Synapse**: Data was ingested from Azure Data Lake into Azure Synapse Analytics using built-in connectors.

### 2. Data Transformation and Cleaning
- **Tools Used**: Azure Synapse Analytics (SQL Pool)
- **Process**:
  1. **Data Cleaning**: Performed data cleaning operations such as removing duplicates, handling missing values, and standardizing formats using SQL.
  2. **Transformation**: Transformed the data into more useful formats, such as creating calculated fields (e.g., `Total Medals`), pivoting gender data, and normalizing country names.
  3. **Aggregation**: Aggregated data by creating summary tables that count medals by country, discipline, and gender.

### 3. Data Aggregation and Optimization
- **Tools Used**: Azure Synapse Analytics (SQL Pool)
- **Process**:
  1. **SQL Queries**: Wrote SQL queries to aggregate data, such as summing up medal counts, calculating participation rates, and creating ranking tables.
  2. **Optimization**: Optimized queries and data structures for performance, ensuring quick retrieval and processing times in Tableau.

### 4. Data Visualization in Tableau
- **Tools Used**: Tableau Desktop (or Tableau Public)
- **Process**:
  1. **Connecting to Synapse**: Connected Tableau to Azure Synapse Analytics to pull in the aggregated and cleaned datasets.
  2. **Creating Visualizations**: Developed various visualizations, including bar charts, heat maps, line graphs, and more, to provide insights into the Olympics data.
  3. **Dashboard Development**: Combined the visualizations into interactive dashboards, adding filters, tooltips, and actions for an enhanced user experience.
