--Insurance coverage distribution
select
insurance_provider,
sum(billing_amount) as Insured_amount
from shc
group by 1
order by 2 desc;

--Average billing per insurance provider
select
insurance_provider,
round(Avg(billing_amount),0) as Avg_Insured_amount
from shc
group by 1
order by 2 desc;

--High-value insurance partners
select
insurance_provider,
sum(billing_amount) as Insured_amount
from shc
group by 1
order by 2 desc
limit 3;