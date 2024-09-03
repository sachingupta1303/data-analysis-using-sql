

-- mobile analysis using sql--

create schema sachingupta;
use sachingupta;
show tables;

select * from mobile;

-- check mobile features and price list--
select phone_name, price from mobile;

-- find out the price of 5 expensive phones--
select phone_name ,price ,Brands  from mobile 
order by price desc
limit 5;

-- find out the price of 5 cheapest phone--
select * from mobile
order by price asc
limit 5;

-- list of top 5 samsung phones with price and all features--
select * from mobile 
where brands = "Samsung"
order by price desc
limit 5;

-- must have android phone list then top 5 high price android phones--

select * from mobile 
where Operating_System_Type ="Android"
order by price desc
limit 5;

select * from mobile ;

-- Q6: Must have android phone list then top 5 lower price android phones 

select * from mobile 
where Operating_System_Type ="Android"
order by price asc
limit 5; 

--  Q7: Must have IOS phone list then top 5 High price IOS phones

select * from mobile 
where Operating_System_Type ="IOS"
order by price desc
limit 5;

--  Q8: Must have IOS phone list then top 5 lower price IOS phones

select * from mobile 
where Operating_System_Type ="IOS"
order by price asc
limit 5;

--  Q9: write a query which phone support 5g and also top 5 phone with 5g support

select * from mobile 
where 5G_Availability ="yes"
order by price desc
limit 5;


--  Q10: Total price of all mobile is to be found with brand name
select Brands,sum(price) from mobile 
group by brands;

-- Which phones have the highest price within each brand?
select brands,max(price) from mobile
group by brands;

--  which noikiya phone is  highest price

-- What are the details of phones that support 5G and have at least 128GB of internal storage?
select * from mobile
where 5G_availability ="yes" or ram_storage ="128 gb" ;

select avg(price) from mobile;

-- How many phones are available from each country of origin?

select country_of_origin, count(phone_name) from mobile
group by country_of_origin;


-- What is the average price of phones that have at least 8GB of RAM storage?

select avg(price) from mobile 
where RAM_Storage >=8; 

-- List all phones that have a USB Type-C connection and are 5G compatible.

select * from mobile 
where USB_Type = 'type c' 
and 5g_availability ='yes' ;


-- What are the details of phones that have a selfie camera with at least 12MP resolution?

select * from mobile 
where Selfie_Camera >12;

 select * from mobile;

-- How many phones are in the highest battery capacity range for each brand?

select count(phone_name) as total_counts ,phone_name , brands
from mobile 
group by brands
having max(battery_capacity);


-- What are the different price ranges available for phones with a battery capacity of 4000mAh or more?

select price_range ,phone_name from mobile 
where battery_capacity >= 4000 ;

