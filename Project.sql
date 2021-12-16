use HRDatabase

select province_territory,COUNT(*) as 'Count of wind turbines' from wind
group by province_territory
order by COUNT(*) desc

select province_territory,sum(total_project_capacity_mw) as ' Sum of Electrical capacity in megawatts' from wind
group by province_territory 
order by sum(total_project_capacity_mw) desc 
 

select manufacturer,count(*) as 'Count of manufacturer',
SUM (case when province_territory='Alberta' then 1 else 0 end) as 'Alberta',
sum (case when province_territory='Ontario' then 1 else 0 end) as 'Ontario',
sum (case when province_territory='British Columbia' then 1 else 0 end) as 'British Columbia',
sum (case when province_territory='Saskatchewan' then 1 else 0 end) as 'Saskatchewan',
sum (case when province_territory='Quebec' then 1 else 0 end) as 'Quebec',
sum (case when province_territory='Prince Edward Island' then 1 else 0 end) as 'Prince Edward Island',
sum (case when province_territory='New Brunswick' then 1 else 0 end) as 'New Brunswick',
sum (case when province_territory='Manitoba' then 1 else 0 end) as 'Manitoba',
SUM (case when province_territory='Newfoundland and Labrador' then 1 else 0 end) as 'Newfoundland and Labrador',
sum (case when province_territory='Yukon' then 1 else 0 end) as 'Yukon',
sum (case when province_territory='Northwest Territories' then 1 else 0 end) as 'Northwest Territories'
from wind
group by manufacturer
order by count(*) desc


select distinct commissioning_date, count(*) as ' count of wind turbines' from wind
where commissioning_date is not null
group by commissioning_date
order by count(*) desc

select distinct rotor_diameter_m, sum(turbine_rated_capacity_k_w) 
as ' Sum of turbine rated capacity in kilowatts' from wind
group by rotor_diameter_m
order by rotor_diameter_m

select manufacturer, avg(turbine_rated_capacity_k_w) 
as ' Average of turbine rated capacity'
from wind
group by manufacturer
order by avg(turbine_rated_capacity_k_w) desc

select province_territory, avg(hub_height_m) 
as 'Height of turbines (m)'
from wind
group by province_territory
order by avg(hub_height_m) desc





