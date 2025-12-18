--Total and average billing amount
select
round(sum(billing_amount),0) as Total_billing_amount,
round(avg(billing_amount),0) as Avg_billing_amount
from shc;

--Revenue contribution by hospital
select
hospital,
sum(billing_amount) as Revenue_generated
from shc
group by 1
order by 2 desc;

--Admission-type-based billing trends
select
admission_type,
round(Avg(billing_amount),0) as Avg_billing
from shc
group by 1
order by 2 desc;