select * from cars.car_dekho;

-- q1. COUNT OF Total Records  ---- 
select count(Name) from car_dekho; 

-- q2. No of cars available in 2023 --
select count(Name) from car_dekho where year=2023;

-- q3. No of cars available in 2020,2021,2022 -- 
select count(Name) from car_dekho where year=2020; #74
select count(Name) from car_dekho where year=2021; #7
select count(Name) from car_dekho where year=2022; #7
select count(Name) from car_dekho where year=2023; #6
              -- GROUP BY --
select year, count(Name) from car_dekho group by year;
select year,count(Name) from car_dekho where year in (2020,2021,2022,2023) group by year;

-- q4 How many deisel car in 2020 --
select year , count(Name) from car_dekho where year = 2020 and fuel = "Diesel" group by year;


-- q5.How many Petrol cars in 2020 -
select year,count(Name) from car_dekho where year=2020 and fuel = "Petrol" group by year;

-- q6. Print all Fuel cars in all year --
select year,count(*) from car_dekho where fuel = "Petrol" group by year;
select year,count(*) from car_dekho where fuel = "Diesel" group by year;
select year,count(*) from car_dekho where fuel = "CNG" group by year;
select year,count(*) from car_dekho where fuel = "Electric" group by year;


-- q7. In which year there are more than 100 cars? --
select year,count(*) from car_dekho group by year having count(*)>100;
select year,count(*) from car_dekho group by year having count(*)<20;

-- q8. All car count details between 2015 and 2023 -- 
select count(*) from car_dekho where year between 2015 and 2023;

      -- END ---











   
