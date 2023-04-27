1. Show the customer name into First name & Last name column.

select 
substr(customer_name , 1, (locate(' ' ,customer_name)))
 as first_name , 
substr(customer_name,(locate(' ' , customer_name)+1)) 
 as last_name
 from superstoreorders;

2. Total count of categories in shipping.

select ship_mode ,count(*) as total from demo.superstoreorders group by ship_mode;

3. Show Order date& Order ID where order priority is very high

select order_id, order_date from demo.superstoreorders where order_priority='High';

4. Show total & average sales.

select sum(sales) as total_sales, avg(sales) as average_sales from demo.superstoreorders;

5. Show number of cutomers in all regions.

select region, count(*) as No_of_customer from demo.superstoreorders group  by region order by count(*) desc; 

6. Show customer name who's sales is maximum.

select customer_name, sales from demo.superstoreorders where sales<(select max(sales) from demo.superstoreorders) order by sales desc limit 1;

7. Show numbers of countries we has received orders.

select distinct(country) from demo.superstoreorders;

8. Show total number of profit in all market.

select market, sum(profit) as Total_Profit from demo.superstoreorders group by market order by sum(profit) desc;

9. Show shipping cost in top 5 countries.

select max(shipping_cost) as Maximum_Shipping_cost , country from demo.superstoreorders group by country order by max(shipping_cost) desc limit 5;

10. Display the names of the customers whose name contains the
i) Second letter as ‘T’
ii) Fourth letter as ‘M’

select distinct(customer_name) from demo.superstoreorders where customer_name like '__T%';

select distinct(customer_name) as Customer_name from demo.superstoreorders where customer_name like '_M%';
 
