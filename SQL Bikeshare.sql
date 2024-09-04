select*
from dbo.bike_share_yr_0;

select*
from dbo.bike_share_yr_1;

select*
from dbo.bike_share_yr_0
union all
select* 
from dbo.bike_share_yr_1;

select*
from dbo.cost_table;


with cte as (
select*
from dbo.bike_share_yr_0
union all
select* 
from dbo.bike_share_yr_1
)

select
date,
season,
a.yr,
weekday,
hr,
rider_type,
riders,
price,
COGS,
riders*price as revenue,
riders*price - COGS as profit
from cte a
left join dbo.cost_table  b
on a.yr = b.yr;

