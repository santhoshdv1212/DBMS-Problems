select b.product_id,b.product_name from 
sales a left join product b 
on a.product_id=b.product_id
group by b.product_id,b.product_name
having min(a.sale_date)>='2019-01-01'
and max(a.sale_date)<='2019-03-31';