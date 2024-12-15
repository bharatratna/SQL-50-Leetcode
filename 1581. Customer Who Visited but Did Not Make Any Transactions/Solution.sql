/* Write your T-SQL query statement below */
Select customer_id, count(Customer_id) as count_no_trans  from Visits v
 left join Transactions t on v.visit_id =t.visit_id 
where transaction_id is null 
group by  customer_id

order by  customer_id
