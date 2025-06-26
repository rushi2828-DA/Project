create database monkeypox;
use monkeypox;

select * from monkeypox_data;

-- all the countery
select distinct location from monkeypox_data;

-- total number of cases reported
select count(new_cases) from monkeypox_data;
select count(total_deaths) from monkeypox_data;
select sum(total_cases) from monkeypox_data;
select avg(total_cases) from monkeypox_data;

-- cases 1-40,40-100,more than 100
select * from monkeypox_data where new_cases between 1 and 40;
select * from monkeypox_data where new_cases between 40 and 100;
select * from monkeypox_data where new_cases >100;

-- total cases of each country
select location, count(new_cases) as cases from monkeypox_data group by location;

-- total death of each country
select location , count(new_deaths) as death from monkeypox_data group by location;

-- specific caese
select * from monkeypox_data where location ='brazil';

-- total case per location
select sum(new_cases),location from monkeypox_data group by location;

-- specific date
select * from monkeypox_data where date='2022-07-01';

-- how many entries
select count(*)from monkeypox_data;

-- min and max
select min(date) from monkeypox_data;
select max(date) from monkeypox_data;

-- like clause
select * from monkeypox_data where location like'u%';
select * from monkeypox_data where location like '%a%';

-- total death per country
select sum(total_deaths)as death ,location from monkeypox_data group by location;

