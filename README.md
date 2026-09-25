# 🏥 Hospital Data Analysis

## 📌 Project Overview

This project analyzes hospital, patient, admission, diagnosis, and billing data using **Python, SQL, and Power BI**.

The project follows an end-to-end data analytics workflow:

**Raw Data → Data Cleaning → Exploratory Data Analysis → SQL Analysis → Power BI Dashboard**

The objective is to transform raw healthcare-related datasets into meaningful insights that can support analysis of hospital operations, patient admissions, diagnoses, and billing.

---

## 🛠️ Tools & Technologies

- **Python**
  - Pandas
  - NumPy
  - Matplotlib
- **SQL**
  - Table creation
  - Joins
  - Aggregations
  - Filtering
  - Real-world analytical queries
- **Power BI**
  - Interactive dashboard
  - KPIs
  - Visual analysis
  - Filters and drill-down analysis
- **Jupyter Notebook**
- **GitHub**

---

## 📂 Project Structure

```text
Hospital_Data_Analysis/
│
├── README.md
├── DATA_DICTIONARY.md
├── requirements.txt
├── .gitignore
│
├── data/
│   ├── patients.csv
│   ├── admissions.csv
│   ├── diagnoses.csv
│   ├── billing.csv
│   └── hospitals.csv
│
├── notebooks/
│   ├── Data_Cleaning.ipynb
│   └── Hospital_EDA.ipynb
│
├── sql/
│   ├── Tables.sql
│   └── Real_world_questions.sql
│
└── powerbi/
    └── Hospital.pbix
```

---

## 📊 Datasets

The project contains five main datasets:

| Dataset | Description |
|---|---|
| `patients.csv` | Patient-level information |
| `admissions.csv` | Hospital admission records |
| `diagnoses.csv` | Diagnosis information associated with patients/admissions |
| `billing.csv` | Billing and financial information |
| `hospitals.csv` | Hospital-related information |

The uploaded datasets contain approximately:

- **86,400 patients**
- **120,000 admissions**
- **271,341 diagnosis records**
- **120,000 billing records**
- **33 hospitals**

---

## 🔄 Project Workflow

### 1. Data Cleaning — Python

`Data_Cleaning.ipynb` is used to prepare the raw datasets for analysis.

The cleaning workflow includes tasks such as:

- Loading CSV files
- Inspecting data types
- Checking missing values
- Identifying duplicate records
- Converting columns to appropriate data types
- Preparing datasets for analysis
- Performing data-quality checks

### 2. Exploratory Data Analysis — Python

`Hospital_EDA.ipynb` contains exploratory analysis of the hospital datasets.

The analysis uses Python libraries such as:

```python
import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
```

The notebook contains real-world analytical questions and visual exploration of the available healthcare data.

### 3. SQL Analysis

The SQL section contains:

- Database table definitions
- Data analysis queries
- Joins between healthcare datasets
- Aggregations
- Filtering
- Grouping
- Real-world analytical questions

Files:

```text
sql/
├── Tables.sql
└── Real_world_questions.sql
```

### 4. Power BI Dashboard

The final analytical layer is created using Power BI.

The dashboard is provided in:

```text
powerbi/Hospital.pbix
```

It can be used to explore hospital and patient-related metrics interactively.

---

## 🎯 Key Analysis Areas

The project focuses on analytical areas such as:

- Patient analysis
- Hospital analysis
- Admission analysis
- Diagnosis analysis
- Billing analysis
- Hospital-level comparisons
- Patient and admission trends
- Financial analysis
- Data-quality analysis

---

## 📈 Skills Demonstrated

This project demonstrates practical skills in:

### Python
- Data loading
- Data cleaning
- Data preprocessing
- Exploratory Data Analysis
- Pandas
- NumPy
- Matplotlib

### SQL
- Database table creation
- Data querying
- JOIN operations
- GROUP BY
- HAVING
- Aggregations
- Real-world analytical queries

### Power BI
- Dashboard development
- KPI creation
- Interactive visualizations
- Filtering
- Business-oriented data presentation

### Data Analytics
- Data cleaning
- EDA
- Data interpretation
- Business problem solving
- End-to-end analytics workflow

---

## 🚀 How to Use This Project

### Step 1 — Clone the repository

```bash
git clone https://github.com/your-username/Hospital_Data_Analysis.git
cd Hospital_Data_Analysis
```

### Step 2 — Install Python dependencies

```bash
pip install -r requirements.txt
```

### Step 3 — Open the notebooks

Open:

```text
notebooks/Data_Cleaning.ipynb
notebooks/Hospital_EDA.ipynb
```

Run the notebooks in order:

1. Data Cleaning
2. Exploratory Data Analysis

### Step 4 — Run SQL analysis

Import the SQL scripts into your preferred SQL database environment.

Run:

```text
sql/Tables.sql
```

and then:

```text
sql/Real_world_questions.sql
```

### Step 5 — Open the Power BI dashboard

Open:

```text
powerbi/Hospital.pbix
```

in Microsoft Power BI Desktop.

---

## 💡 Project Highlights

- End-to-end healthcare data analytics project
- Multiple related datasets
- Python-based data cleaning
- Exploratory Data Analysis
- Real-world SQL analysis
- Interactive Power BI dashboard
- Demonstrates practical data analyst workflow

---

## 👩‍💻 Author

**Rani**

Aspiring Data Analyst | Python | SQL | Power BI | Pandas | Data Analytics

---

## ⭐ Future Improvements

Potential extensions include:

- Adding automated data pipelines
- Creating additional Power BI pages
- Adding advanced SQL analysis
- Building predictive models
- Adding hospital performance KPIs
- Automating recurring reports
