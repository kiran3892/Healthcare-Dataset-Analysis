--Data cleaning and formating columns
create table shc as (
  select
    initcap(`Name`) as patient_name,
    Age as age,
    Gender as gender,
    `Blood Type` as blood_type,
    `Medical Condition` as medical_condition,
    `Date of Admission` as admission_date,
    Doctor as doctor,
    Hospital as hospital,
    `Insurance Provider` as insurance_provider,
    round(`Billing Amount`,0) as billing_amount,
    `Room Number` as room_number,
    `Admission Type` as admission_type,
    `Discharge Date` as discharge_date,
    Medication as medication,
    `Test Results` as test_results
  from bhc 
);

select * from shc;
