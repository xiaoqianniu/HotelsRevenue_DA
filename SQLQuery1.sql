use HotelRevenue;
with hotels as (
select * from dbo.['2018$']
union
select * from dbo.['2019$']
union
select * from dbo.['2020$']
)
-- get hotel's revenue in each year
/*select arrival_date_year,hotel,
round(sum((stays_in_week_nights + stays_in_weekend_nights)* adr),2) as revenue 
from hotels
group by arrival_date_year,hotel;*/

select * from hotels
left join dbo.market_segment$
on hotels.market_segment = dbo.market_segment$.market_segment
left join dbo.meal_cost$
on hotels.meal = dbo.meal_cost$.meal;


