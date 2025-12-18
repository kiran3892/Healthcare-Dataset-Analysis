-- Most prescribed medications
select
medication,
count(*) as recommendation_number
from shc
group by 1
order by 2 desc;

-- Test result frequency analysis
select
test_results,
count(*) as test_count
from shc
group by 1
order by 2 desc;

-- blood type and patients number relation
select
blood_type,
count(*) as patients_number
from shc
group by 1
order by 2 desc;


-- Patients blood type and medical condition relation
select
blood_type,
medical_condition,
count(*) as patients_number
from shc
group by 1,2
order by 1, 3 desc;




