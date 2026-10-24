from my_db.main.nyctaxi as taxi
select  distinct YEAR(taxi.tpep_pickup_datetime);  --check if all years are 2025

DELETE FROM my_db.main.nyctaxi WHERE YEAR(tpep_pickup_datetime)<>2025;  --delete all years aren't 2025

select count(*) from my_db.main.nyctaxi;  --check the recoreds

select distinct YEAR(tpep_pickup_datetime),MONTH(tpep_pickup_datetime)
from nyctaxi 
group by YEAR(tpep_pickup_datetime), MONTH(tpep_pickup_datetime)
order by 1,2;  --check if all months present

delete from my_db.main.nyctaxi where Month(tpep_pickup_datetime)<>1; --delete all monthes except one

select * from my_db.main.nyctaxi; --show the table
