--Average Length of Stay (LOS)
select
round(avg(datediff(discharge_date, admission_date)),0) as Avg_length_of_stay
from shc;

--LOS comparison across hospitals
select
hospital,
round(avg(datediff(discharge_date, admission_date)),0) as Avg_length_of_stay
from shc
group by 1
order by 2 desc;

-- Admission and Discharge stats
select
count(*) as patients_records,
count(admission_date) as total_admissions,
count(discharge_date) as total_discharges
from shc;
