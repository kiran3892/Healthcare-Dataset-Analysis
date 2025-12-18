--Doctor Performance & Workload
select
count(distinct doctor) as total_doctors,
count(distinct patient_name) as total_patients,
round(count(distinct patient_name)/count(distinct doctor),2) as workload,
sum(billing_amount) as revenue_generated
from shc;

--Number of patients handled per doctor
select
distinct doctor,
count(*) as patients_covered
from shc
group by 1
order by 2 desc;

--Average revenue generated per doctor
select
distinct doctor,
round(avg(billing_amount),0) as revenue_generated
from shc
group by 1
order by 2 desc;