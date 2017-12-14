---===================================================================
-- This is for assignment of task #1 part #1 related to the captial table
---===================================================================

--  choose database
use assignment;

----------------------------------------------------------------------
-- task #1 part #1 requirement #1 create table
----------------------------------------------------------------------

create table  states (
    id          int identity (1,1) ,
    state       varchar(30),
    capital     varchar(30),
    population  int,
    area        int,
    famous_people   varchar(30),
    nick_name   varchar(30),
    join_year   int,
    state_bird   varchar(30)
);
----------------------------------------------------------------------
-- task #1 part #2 requirement #1 insert table
----------------------------------------------------------------------
insert into  states values ( 'Alaska', 'Juneau', 479000, 586412, 'Joe Juneau','Last Frontier', 1959, 'Ptarmigan' );
insert into  states values ( 'Arizona', 'Phoenix', 2963000, 113909, 'Geronimo', 'Grand Canyon State', 1912, 'Cactus Wren' );
insert into  states values ( 'California', 'Sacramento', 25174000, 158693, 'Jack London', 'Golden State', 1850, 'Quail' );
insert into  states values ( 'Florida', 'Tallahassee', 10680000, 58560, 'Joseph Stilwell', 'Sunshine State', 1845, 'Mockingbird' );
insert into  states values ( 'Hawaii', 'Honolulu', 1023000, 6450, 'Don Ho', 'Aloha State', 1959, 'Goose' );
insert into  states values ( 'Idaho', 'Boise', 989000, 83557, 'Sacajawea', 'Gem State', 1890, 'Bluebird' );
insert into  states values ( 'Kansas', 'Topeka', 2425000, 82264, 'Amelia Earhart', 'Sunflower State', 1861, 'Meadowlark' );
insert into  states values ( 'Maine', 'Augusta', 1146000, 33215, 'Henry Longfellow', 'Pine Tree State', 1820, 'Chickadee' );
insert into  states values ( 'Nebraska', 'Lincoln', 1597000, 77227, 'Fred Astaire', 'Cornhusker State', 1867, 'Meadowlark' );
insert into  states values ( 'New Jersey', 'Trenton', 7468000, 7836, 'Stephen Crane', 'Garden State', 1787, 'Goldfinch' );
insert into  states values ( 'New York', 'Albany', 17667000, 49576, 'Walt Whitman', 'Empire State', 1788, 'Bluebird' );
insert into  states values ( 'Ohio', 'Columbus', 10746000, 41222, 'Bob Hope', 'Buckeye State', 1803, 'Cardinal' );
insert into  states values ( 'Washington', 'Olympia', 4300000, 68192, 'Bing Crosby', 'Evergreen State', 1889, 'Goldfinch');
insert into  states values ( 'Wisconsin', 'Madison', 4751000, 56154, 'Spencer Tracy', 'Badger State', 1848, 'Robin');


----------------------------------------------------------------------
-- task #1 part #2 requirement #2 select table
-- List the states that entered the union between 1850-1920, inclusive ( hint: type in 1850...1920).  
----------------------------------------------------------------------
select state,join_year 
from  states 
where join_year between 1850 and 1920;


----------------------------------------------------------------------
-- task #1 part #2 requirement #3 select table
-- List the states with areas of less than 60,000 square miles that also have more than 10,000,000 people. 
----------------------------------------------------------------------
select state, format(area,'#,###') as 'area', format(population,'#,###') as 'population' 
from  states 
where area < 60000 and population > 10000000;
 
----------------------------------------------------------------------
-- task #1 part #2 requirement #4 select table
-- List the states with areas of less than 60,000 square miles that also have more than 10,000,000 people. 
----------------------------------------------------------------------
select top 100 * into famous_sort from  states order by population desc; -- top 100 is most important item

select * from famous_sort; -- for test: it is works