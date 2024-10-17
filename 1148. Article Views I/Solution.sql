/* Write your T-SQL query statement below */
/*
Method 3 : 
Select distinct author_id as id from Views 
    where 
    author_id=viewer_id 

    and (Select count(viewer_id) from views)>=1
order by id 
*/


/*
Method 2  :

Select author_id as id from Views 
where author_id= viewer_id
group by author_id
having count(viewer_id)>=1

*/



--Correct approach
--Method 1 :
Select distinct author_id as id from Views 
where 
author_id=viewer_id 
order by id 
