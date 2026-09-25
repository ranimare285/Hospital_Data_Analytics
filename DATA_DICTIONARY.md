# 📖 Hospital Data Analysis — Data Dictionary

This document provides a high-level description of the datasets used in the project.

## 1. Patients

**File:** `patients.csv`

Contains patient-level information.

Columns identified from the uploaded dataset:

### Patients

- `patient_id`
- `age`
- `gender`
- `state`
- `bpl_card`
- `insurance_type`
- `comorbidity_count`
- `prev_admissions`

## 2. Admissions

**File:** `admissions.csv`

- `admission_id`
- `patient_id`
- `admit_date`
- `discharge_date`
- `los_days`
- `admit_type`
- `ward_type`
- `hospital_id`
- `discharge_type`
- `num_procedures`
- `charlson_index`
- `hba1c`
- `creatinine`
- `haemoglobin`
- `systolic_bp`
- `readmitted_30d`
- `readmitted_7d`

## 3. Diagnoses

**File:** `diagnoses.csv`

- `diag_id`
- `admission_id`
- `icd10_code`
- `diag_desc`
- `diag_rank`
- `diag_category`

## 4. Billing

**File:** `billing.csv`

- `bill_id`
- `admission_id`
- `total_cost_inr`
- `govt_subsidy_inr`
- `out_of_pocket_inr`
- `cost_category`

## 5. Hospitals

**File:** `hospitals.csv`

- `hospital_id`
- `name`
- `state`
- `tier`
- `beds`
- `teaching`

## Notes

The notebooks contain the detailed data-cleaning and exploratory-analysis logic. Refer to `Data_Cleaning.ipynb` and `Hospital_EDA.ipynb` for the transformations and analysis performed on the datasets.
