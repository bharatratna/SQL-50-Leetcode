--Method 1 :
SELECT * 
FROM Users 
WHERE PATINDEX('[a-zA-Z][a-zA-Z0-9_.-]%@leetcode.com', mail) > 0
AND PATINDEX('%#%', mail) = 0




--Method 2 :
Select * from Users 
where mail 
like 
'[a-zA-Z]%[a-zA-Z0-9_.-]%@leetcode.com'
and mail not like '%[^a-zA-Z0-9_.-]%@leetcode.com'

