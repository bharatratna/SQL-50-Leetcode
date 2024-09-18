/* Write your T-SQL query statement below */

--Incorrect Solution
/*
SELECT user_id,name

 FROM Users  
 where name =TRIM( UPPER(LEFT(name, 1)) + LOWER(Substring(name,2, LEN(name) - 1)) )
order by user_id
*/ 
/* Comparing transformed name coulumn to existing name will not return correcvt output */

--Correct Solution 
SELECT user_id,
  UPPER(LEFT(name, 1)) + LOWER(Substring(name,2, LEN(name) - 1))  as name

 FROM Users  

order by user_id
