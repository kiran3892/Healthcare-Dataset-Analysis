--Most common diseases
select
medical_condition as Disease,
count(*) as Number_of_records
from shc
group by 1
order by 2 desc;

--Costliest medical conditions
select
medical_condition as Disease,
sum(billing_amount) as Amount
from shc
group by 1
order by 2 desc;

--Disease-wise patient volume
select
medical_condition as Disease,
count(*) as patient_volume
from shc
group by 1
order by 2 desc;