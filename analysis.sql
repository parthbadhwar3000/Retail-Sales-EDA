-- List top-selling products (by quantity, revenue).

select Product, Sum(Quantity_Ordered) as total_no_sold,
Round(sum(Sales),2) as revenue
from SALES
group by Product
order by revenue desc,total_no_sold desc
limit 10;