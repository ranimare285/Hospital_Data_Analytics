

CREATE TABLE patients (
    patient_id VARCHAR(36),
    age INT,
    gender VARCHAR(10),
    state VARCHAR(50),
    bpl_card BOOLEAN,
    insurance_type VARCHAR(30),
    comorbidity_count INT,
    prev_admissions INT
);

select * from patients;

CREATE TABLE admissions (
    admission_id VARCHAR(36),
    patient_id VARCHAR(36),
    admit_date DATE,
    discharge_date DATE,
    los_days INT,
    admit_type VARCHAR(30),
    ward_type VARCHAR(30),
    hospital_id VARCHAR(36),
    discharge_type VARCHAR(30),
    num_procedures INT,
    charlson_index INT,
    hba1c DECIMAL(5,2),
    creatinine DECIMAL(5,2),
    haemoglobin DECIMAL(5,2),
    systolic_bp INT,
    readmitted_30d BOOLEAN,
    readmitted_7d BOOLEAN,
    FOREIGN KEY (patient_id) REFERENCES patients(patient_id)
);

select * from admissions;

CREATE TABLE diagnoses (
    diag_id VARCHAR(36),
    admission_id VARCHAR(36),
    icd10_code VARCHAR(20),
    diag_desc VARCHAR(255),
    diag_rank INT,
    diag_category VARCHAR(50),
    FOREIGN KEY (admission_id) REFERENCES admissions(admission_id)
);

select * from diagnoses;

CREATE TABLE billing (
    bill_id VARCHAR(36),
    admission_id VARCHAR(36),
    total_cost_inr DECIMAL(12,2),
    govt_subsidy_inr DECIMAL(12,2),
    out_of_pocket_inr DECIMAL(12,2),
    cost_category VARCHAR(50),
    FOREIGN KEY (admission_id) REFERENCES admissions(admission_id)
);

select * from billing;

