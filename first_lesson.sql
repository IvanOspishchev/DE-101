select 
city,
count(distinct order_id) as number_orders,
sum(sales) as sum_ord
from orders as o
where category in ('Furniture', 'Technology')
and extract('year' from order_date) = 2018 
group by city
having sum(sales) > 10000
order by sum_ord desc
;


select 
count(*)
, count(distinct o.order_id) --easy way to calculate unique value
from orders o
left join "returns" r
	on o.order_id = r.order_id

--9994 rows
-- inner 3226 rows
	
	
select 
count(*)
, count(distinct o.order_id) 
from orders o
where order_id in (select distinct order_id from "returns" r2)


select now(); --timestamp
select date_trunc('day' , now());