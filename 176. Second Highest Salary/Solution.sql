/* Write your T-SQL query statement below */
--Method 1 : 

Select max(salary) as SecondHighestSalary from Employee where Salary < (Select max(salary) from Employee )


--Method2:
With EMP_CTE As(
Select Salary , dense_rank()over(order by Salary desc ) as rnk from Employee 
)
Select  (Select Salary from EMP_CTE where rnk=2) as SecondHighestSalary 



