select * from car;

select * from owner;

select owner.name, car.maker, car.model, car.price 
from car, owner 
where car.owner_id = owner.owner_id;

select maker, model, price from car
inner join owner
on owner.owner_id = car.owner_id 
where owner.name like '%Yon%';

-- find out how much Yongtaek's car is worth
/*
this is also comment
*/

select owner.name,  maker, model, format(price,'#,###') from car
inner join owner
on owner.owner_id = car.owner_id 
where owner.name like '%Sha%';

select owner.name, 'has ', maker, model, 'this price is' , format(price,'#,###') from car
inner join owner
on owner.owner_id = car.owner_id 
where owner.name like '%Sha%';

select owner.name,  maker, model, format(price,'#,###') as 'price' from car
inner join owner
on owner.owner_id = car.owner_id 
where owner.name like '%Sha%';

select owner.name,  maker, model, format(price,'#,###') as 'price' from car
inner join owner
on owner.owner_id = car.owner_id 
where owner.name like '%Yong%';

-- find average price of cars

select AVG(price) as 'average price' from car;
select sum (price) as 'sum for all car' from car;
select count(*) as 'total count'  from car;

select format( avg(car.price),'#,###') as 'average' from car
inner join owner
on owner.owner_id = car.owner_id 
where owner.name like '%Sha%';

select format( avg(car.price),'#,###') as 'average' from car
inner join owner
on owner.owner_id = car.owner_id 
where owner.name like '%Yon%';


select * from car;

-- find out name of the owner who most car have

select top (1) owner.name, count(owner.name) from car
inner join owner
on owner.owner_id = car.owner_id
group by owner.name
order by count(*) desc;

-- Marin's method
select top (1)  name, owner.owner_id from owner
inner join car
on owner.owner_id = car.owner_id
where car.owner_id = (
	select top 1 owner_id from car
	group by owner_id
	order by count(*) desc
);
-- find the what average price of most have car.

select owner.name, avg(price) as 'average_price' from car
inner join owner
on owner.owner_id = car.owner_id
where car.owner_id = (
	select top 1 owner_id from car
	group by owner_id
	order by count(*) desc
)
group by name;

--select max( count (owner.name)) , owner.name, count(owner.name) from car

select max(t1.car_count) from 
( select count(car.owner_id) as car_count from car
  group by owner_id
  order by car_count desc 
) t1;





select  owner.name, max ( count(*) ) from (
	select owner.name, count(owner.name) from car
	inner join owner
	on owner.owner_id = car.owner_id
	group by owner.name
	order by count(*) desc
);