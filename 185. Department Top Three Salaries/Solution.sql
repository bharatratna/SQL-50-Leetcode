/* Write your T-SQL query statement below */

with cte as (
Select d.name as Department,
e.name as Employee,
e.salary as Salary,
dense_rank()  over(partition by departmentId order by salary desc) as rnk


from Employee e
join Department d 
on e.departmentId=d.id 

)
Select Department, Employee ,Salary
from cte 

where rnk<=3
