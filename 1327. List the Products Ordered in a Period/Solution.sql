/* Write your T-SQL query statement below */
with cte as (
Select P.Product_id ,P.Product_name, sum(o.unit) as Unit
from Products p 
inner join Orders o
on p.product_id =o.product_id  
where o.order_date between '2020-02-01' and '2020-02-29'

group by P.product_id,P.Product_name
having sum(o.unit)>=100
)
Select Product_name ,Unit  from cte



order by Product_name
