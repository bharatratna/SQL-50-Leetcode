/* Write your T-SQL query statement below */


with cte1 AS (
Select concat(lat,',',lon) as location
 from Insurance 
group by lat,lon
having count(pid)>1
),
cte2 AS (
Select distinct i1.pid,i1.tiv_2015,i1.tiv_2016,i1.lat,i1.lon 
from Insurance i1 join Insurance i2
on i1.tiv_2015=i2.tiv_2015
and i1.pid <>i2.pid
    WHERE CONCAT(i1.lat, ',', i1.lon) NOT IN (SELECT location FROM cte1)
)
SELECT ROUND(SUM(tiv_2016), 2) AS tiv_2016 
FROM cte2;



