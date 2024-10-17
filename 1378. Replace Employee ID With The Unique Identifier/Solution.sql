/* Write your T-SQL query statement below */
Select coalesce(unique_id,null)as unique_id, name from Employees e left join 
EmployeeUNI eu on e.id=eu.id 
