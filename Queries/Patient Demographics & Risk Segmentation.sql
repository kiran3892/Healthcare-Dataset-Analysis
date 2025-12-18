--Age group classification (Child, Adult, Middle ged, Senior, Elderly)
select
case
    when age between 0 and 18 then 'Child'
    when age between 19 and 35 then 'Adult'
    when age between 36 and 60 then 'Middle_Aged'
    when age between 61 and 80 then 'Senior'
    when age > 80 then 'Elderly'
    end as age_group,
count(*) as patients_number
from shc
group by 1
order by 2 desc;

--Gender-based patient distribution
select
gender,
count(*) as patients
from shc
group by 1;

-- High-Cost Patient Identification
select
patient_name,
patient_bill_amount,
Avg_billing_amount
from (select
            patient_name,
            round(sum(billing_amount),0) as patient_bill_amount,
            (select round(Avg(billing_amount),0) from shc) as Avg_billing_amount
            from shc
            group by 1)
where patient_bill_amount > Avg_billing_amount;


-- High repeatition Patient Identification
select
patient_name,
count(*) as number_of_visits
from shc
group by 1
order by 2 desc;
