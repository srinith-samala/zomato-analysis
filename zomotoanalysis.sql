CREATE TABLE zomato (
    restaurant_id VARCHAR(50),
    restaurant_name VARCHAR(255),
    country_code VARCHAR(10),
    city VARCHAR(100),
    address VARCHAR(500),
    locality VARCHAR(255),
    locality_verbose VARCHAR(255),
    longitude VARCHAR(50),
    latitude VARCHAR(50),
    cuisines VARCHAR(500),
    avg_cost_for_two VARCHAR(50),
    currency VARCHAR(50),
    has_table_booking VARCHAR(10),
    has_online_delivery VARCHAR(10),
    is_delivering_now VARCHAR(10),
    switch_to_order_menu VARCHAR(10),
    price_range VARCHAR(10),
    aggregate_rating VARCHAR(10),
    rating_color VARCHAR(50),
    rating_text VARCHAR(50),
    votes VARCHAR(50)
);

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/zomato.csv'
INTO TABLE zomato
CHARACTER SET utf8mb4
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

select restaurant_id,count(*) as occurance 
from zomato
group by restaurant_id
having count(*) > 1;

SELECT
	SUM(CASE WHEN restaurant_id IS NULL THEN 1 ELSE 0 END) AS restaurant_id_nulls,
    SUM(CASE WHEN restaurant_name IS NULL THEN 1 ELSE 0 END) AS resurtant_name_nulls,
    SUM(CASE WHEN Country_code IS NULL THEN 1 ELSE 0 END) AS country_code_nulls,
    SUM(CASE WHEN city IS NULL THEN 1 ELSE 0 END) AS city_nulls,
    SUM(CASE WHEN address IS NULL THEN 1 ELSE 0 END) AS address_nulls,
    SUM(CASE WHEN locality IS NULL THEN 1 ELSE 0 END) AS locailty_nulls,
    SUM(CASE WHEN locality_verbose IS NULL THEN 1 ELSE 0 END) AS locality_verbose_nulls,
    SUM(CASE WHEN longitude IS NULL THEN 1 ELSE 0 END) AS longitude_nulls,
    SUM(CASE WHEN latitude IS NULL THEN 1 ELSE 0 END) AS latitude_nulls,
    SUM(CASE WHEN cuisines IS NULL THEN 1 ELSE 0 END) AS cusines_nulls,
    SUM(CASE WHEN avg_cost_for_two IS NULL THEN 1 ELSE 0 END) AS avg_cost_two_nulls,
    SUM(CASE WHEN currency IS NULL THEN 1 ELSE 0 END) AS currency_nulls,
    SUM(CASE WHEN has_table_booking IS NULL THEN 1 ELSE 0 END) AS has_two_table_nulls,
    SUM(CASE WHEN has_online_delivery IS NULL THEN 1 ELSE 0 END) AS as_online_delivery_nulls,
    SUM(CASE WHEN is_delivering_now IS NULL THEN 1 ELSE 0 END) AS is_delivrring_nulls,
    SUM(CASE WHEN switch_to_order_menu IS NULL THEN 1 ELSE 0 END) AS switch_to_order_menu_nulls,
    SUM(CASE WHEN price_range IS NULL THEN 1 ELSE 0 END) AS price_range_nulls,
    SUM(CASE WHEN aggregate_rating IS NULL THEN 1 ELSE 0 END) AS aggregate_rating_nulls,
    SUM(CASE WHEN rating_color IS NULL THEN 1 ELSE 0 END) AS rating_color_nulls,
    SUM(CASE WHEN rating_text IS NULL THEN 1 ELSE 0 END) AS rating_text_nulls,
    SUM(CASE WHEN votes IS NULL THEN 1 ELSE 0 END) AS votes_nulls
FROM zomato;
    
SELECT DISTINCT aggregate_rating from zomato;

SELECT DISTINCT votes from zomato limit 20;

SELECT DISTINCT avg_cost_for_two FROM zomato LIMIT 20;
ALTER TABLE zomato
MODIFY avg_cost_for_two INT;

ALTER TABLE ZOMATO
MODIFY VOTES INT;

ALTER TABLE ZOMATO
MODIFY aggregate_rating DECIMAL(3,1);


SELECT DISTINCT city FROM zomato LIMIT 20;

SELECT DISTINCT currency FROM zomato;
select * from zomato limit 10;
# Which City has a Highest cost of avg_of_two
select city, max(avg_cost_for_two) as max_avg
from zomato
group by city
ORDER BY max_avg DESC LIMIT 1;

# Which Resturant has highest avergare rating 
select restaurant_name, max(aggregate_rating) as max_rating 
from zomato
group by restaurant_name
order by max_rating desc 



# Which city has most number of resturatnt 
select (count(restaurant_id)) as max_resturnt ,city 
from zomato
group by city
order by max_resturnt desc; 

SELECT COUNT(restaurant_id) as count, city 
FROM zomato
GROUP BY city
ORDER BY count ASC
LIMIT 10;

# Does rating affect the price of restrunat
SELECT price_range, avg(aggregate_rating) as avg_rating
FROM zomato
GROUP BY price_range
ORDER BY price_range;

# WHICH RESTUARNT OF CITY GOT MOST VOTES 
SELECT MAX(VOTES) AS MAXIMUM_VOTES,CITY 
FROM ZOMATO 
GROUP BY CITY 
ORDER BY MAXIMUM_VOTES DESC;

# which restaurant got the least votes 
SELECT restaurant_name, city, votes 
FROM zomato 
ORDER BY votes DESC 
LIMIT 1;

SELECT user FROM mysql.user;






