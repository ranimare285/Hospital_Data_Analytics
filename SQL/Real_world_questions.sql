select * from patients;

select * from admissions;

select * from diagnoses;

select * from billing;


-- Q1. Find the total number of patients.
SELECT COUNT(*) AS total_patients
FROM patients;

-- Q2. Find the number of admissions by ward type.
SELECT
    ward_type,
    COUNT(*) AS total_admissions
FROM admissions
GROUP BY ward_type
ORDER BY total_admissions DESC;

-- Q3. Find the top 5 states with the highest number of patients.
SELECT
    state,
    COUNT(*) AS total_patients
FROM patients
GROUP BY state
ORDER BY total_patients DESC
LIMIT 5;

-- Q4. Find the average length of stay by admission type.
SELECT
    admit_type,
    ROUND(AVG(los_days), 2) AS avg_los
FROM admissions
GROUP BY admit_type
ORDER BY avg_los DESC;

-- Q5. Find the top 10 hospitals by admission count.
SELECT
    hospital_id,
    COUNT(*) AS total_admissions
FROM admissions
GROUP BY hospital_id
ORDER BY total_admissions DESC
LIMIT 10;

-- Q6. Find the total billing amount by cost category.
SELECT
    cost_category,
    SUM(total_cost_inr) AS total_billing
FROM billing
GROUP BY cost_category
ORDER BY total_billing DESC;

-- Q7. Find the average out-of-pocket cost by insurance type.
SELECT
    p.insurance_type,
    ROUND(AVG(b.out_of_pocket_inr), 2) AS avg_out_of_pocket
FROM patients p
JOIN admissions a
    ON p.patient_id = a.patient_id
JOIN billing b
    ON a.admission_id = b.admission_id
GROUP BY p.insurance_type
ORDER BY avg_out_of_pocket DESC;

-- Q8. Find the top 10 diagnosis categories.
SELECT
    diag_category,
    COUNT(*) AS diagnosis_count
FROM diagnoses
GROUP BY diag_category
ORDER BY diagnosis_count DESC
LIMIT 10;

-- Q9. Find the monthly admission trend.
SELECT
    YEAR(admit_date) AS admit_year,
    MONTH(admit_date) AS admit_month,
    COUNT(*) AS total_admissions
FROM admissions
GROUP BY
    YEAR(admit_date),
    MONTH(admit_date)
ORDER BY
    admit_year,
    admit_month;

-- Q10. Find patients who have been admitted more than once.
SELECT
    patient_id,
    COUNT(*) AS admission_count
FROM admissions
GROUP BY patient_id
HAVING COUNT(*) > 1
ORDER BY admission_count DESC;

-- Q11. Find the average billing amount for each ward type.
SELECT
    a.ward_type,
    ROUND(AVG(b.total_cost_inr), 2) AS avg_billing
FROM admissions a
JOIN billing b
    ON a.admission_id = b.admission_id
GROUP BY a.ward_type
ORDER BY avg_billing DESC;

-- Q12. Find the total government subsidy provided by insurance type.
SELECT
    p.insurance_type,
    SUM(b.govt_subsidy_inr) AS total_subsidy
FROM patients p
JOIN admissions a
    ON p.patient_id = a.patient_id
JOIN billing b
    ON a.admission_id = b.admission_id
GROUP BY p.insurance_type
ORDER BY total_subsidy DESC;

-- Q13. Find the top 10 patients by total billing.
SELECT
    p.patient_id,
    SUM(b.total_cost_inr) AS total_billing
FROM patients p
JOIN admissions a
    ON p.patient_id = a.patient_id
JOIN billing b
    ON a.admission_id = b.admission_id
GROUP BY p.patient_id
ORDER BY total_billing DESC
LIMIT 10;

-- Q14. Find the readmission rate by ward type.
SELECT
    ward_type,
    COUNT(*) AS total_admissions,
    SUM(readmitted_30d) AS readmitted_patients,
    ROUND(
        SUM(readmitted_30d) * 100.0 / COUNT(*),
        2
    ) AS readmission_rate
FROM admissions
GROUP BY ward_type
ORDER BY readmission_rate DESC;

-- Q15. Find the top 10 diagnoses categories by total billing.
SELECT
    d.diag_category,
    COUNT(DISTINCT d.admission_id) AS total_admissions,
    SUM(b.total_cost_inr) AS total_billing
FROM diagnoses d
JOIN billing b
    ON d.admission_id = b.admission_id
GROUP BY d.diag_category
ORDER BY total_billing DESC
LIMIT 10;

