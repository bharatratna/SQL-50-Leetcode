/* Write your T-SQL query statement below */

Select top 1  id ,count(*) as num from (
Select requester_id as id  from RequestAccepted
union all 
Select accepter_id as id  from RequestAccepted

) as tabl1
group by id
order by num desc 
