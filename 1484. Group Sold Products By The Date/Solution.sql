/* Write your T-SQL query statement below */
Select Sell_date,
 count(DISTINCT product) as num_sold,  

String_agg(Product ,',') within Group (order by Product)as Products from

(Select DISTINCT sell_date, product from Activities
)
 as distinct_Activities 


group by Sell_date
order by  Sell_date
