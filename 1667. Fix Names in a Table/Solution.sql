/* Write your T-SQL query statement below */



SELECT user_id,name

 FROM Users  
 where name =TRIM( UPPER(LEFT(name, 1)) + LOWER(Substring(name,2, LEN(name) - 1)) )
order by user_id
