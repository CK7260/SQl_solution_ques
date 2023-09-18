create database car;
use car;
-- show all details
select * from car_dekho;

-- Total Cars: To get a count of total records- - 
 select count(*) from car_dekho;
 
-- The manager asked the employee How many cars will be available in 2023?
select count(*)
from car_dekho where year = 2023;

 -- The manager asked the employee How many cars will be available in 2020,2021 and 2022?-- 
select year, count(*) from car_dekho 
where year in(2020,2021,2022) 
group by year;

-- Client asked me to print the total of all cars by year. I don't see all the details.-- 
select year,count(*) from car_dekho group by year;

--  Client asked to car dealer agent How many diesel cars will there be in 2020?
select count(*) from car_dekho
 where fuel ='diesel' and year = 2020;

 -- client requested a car dealer agent How many petrol cars will there be in 2020?--
 select count(*) from car_dekho 
 where fuel = 'petrol' and year = 2020;
 
--  The manager told the employee to give a print All the fuel cars (petrol, diesel, and CING) come by all year--
 select year,count(*) 
 from car_dekho 
 where fuel ='petrol' 
 group by year;
 
 select year,count(*) 
 from car_dekho 
 where fuel ='diesel' ;
 
 select year,count(*) 
 from car_dekho 
 where fuel ='cng' 
 group by year;


-- Manager said there were more than 100 cars in a given year, which year had more than 100 cars?-- 
select year,count(*)
 from car_dekho 
 group by year 
 having count(*) > 100;
 
 
-- The manager said to the employee All cars count details between 2015 and 2023--
select count(*)
from car_dekho 
where year 
between 2015 and 2023; 

-- The manager said to the employee All cars details between 2015 and 2023 we need to complete list--
select * from car_dekho
 where year between 2015 and 2023; 
 
-- END-- 





