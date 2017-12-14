/*========================================================================================================
This is for assignment Task #1, Part #2
=======================================================================================================*/
/* database name  = 'assignment'
   table list : students, advisor
*/
/*-------------------------------------------------------------------------------------------------------
For table students
------------------------------------->>>>>>
id#, name (first and last), 
home address (street, city, zip-code), date of birth, sex, category (e.g., sophomore, junior, graduate), 
nationality, special needs, current status (placed/waiting) and which courses is the student registered for. 
Optionally, one may also add additional comments for a particular student. 
The student information pertains to those currently renting a room and those who are on the waiting list. 
A particular student may rent a room either in the hall of residence or student flat. 
When a student joins the University, he is assigned a member of staff who acts as his Advisor. 
The Advisor is responsible for monitoring the student welfare and academic progress 
throughout his time at the University. 
The data kept for a students Advisor includes full name, position, 
name of the department, phone number and office location/number. 
We assume that there are no two advisors in the same department will have the same name. 
-------------------------------------------------------------------------------------------------------*/
-- drop table students;
create table students (
    id              int primary key identity(100000,1), 
    department_id   int,
    first_name      nvarchar(30),
    last_name       nvarchar(30), 
    phone           nvarchar(12),
    street          nvarchar(30),
    city            nvarchar(30),
    zipcode         nvarchar( 6), 
    dob             nvarchar(11), 
    sex             nvarchar( 1), 
    advisor         int, 
    contacts_sin    nvarchar( 9), 
    category        nvarchar( 1), /* 1=sophomore, junior, 9=graduate), */ 
    nationality     nvarchar(30),
    special_needs   nvarchar(30), 
    current_status  nvarchar( 1), /* 'placed' or 'waiting' */ 
    comments        nvarchar(30)  /* for a particular student.  */
);

alter table students add foreign key (department_id) references departments(id);
alter table students add foreign key (advisor) references staffs(id);
alter table students add foreign key (contacts_sin) references contacts(sin);
create index idx_first_name on students(first_name);

insert into students values (310,'Jack 1','Bon 1','4168881111', '101 Younge Street', 'Toronto',    'M2M3R3','1995-01-01','M', 1100,'111222331','1','Canada','NO Special','P','No comments');
insert into students values (310,'Jack 2','Bon 2','4168881112', '102 Younge Street', 'Oakville',   'M2M3R3','1996-01-01','M', 1100,'111222332','2','Canada','NO Special','P','No comments');
insert into students values (310,'Jack 3','Bon 3','4168881113', '103 Younge Street', 'Richmod Hill', 'M2M3R3','1998-01-01','M', 1100,'111222333','3','Canada','NO Special','P','No comments');
insert into students values (312,'Jack 4','Bon 4','4168881114', '104 Younge Street', 'Toronto', 'M2M3R3','1995-01-01','M', 1100,'111222334','4','Canada','NO Special','P','No comments');
insert into students values (312,'Jack 5','Bon 5','4168881115', '105 Younge Street', 'Toronto', 'M2M3R3','1995-01-01','M', 1100,'111222334','1','Canada','NO Special','P','No comments');
insert into students values (313,'Jack 6','Bon 6','4168881116', '106 Younge Street', 'Toronto', 'M2M3R3','1995-01-01','M', 1100,'111222335','2','Canada','NO Special','P','No comments');
insert into students values (313,'Jack 7','Bon 7','4168881117', '107 Younge Street', 'Toronto', 'M2M3R3','1995-01-01','M', 1100,'111222335','3','Canada','NO Special','P','No comments');
insert into students values (313,'Jack 8','Bon 8','4168881118', '108 Younge Street', 'Toronto', 'M2M3R3','1995-01-01','M', 1100,'111222336','4','Canada','NO Special','P','No comments');
insert into students values (313,'Jack 9','Bon 9','4168881119', '109 Younge Street', 'Toronto', 'M2M3R3','1995-01-01','M', 1100,'111222337','1','Canada','NO Special','P','No comments');
insert into students values (315,'Eric 1','Sun 1','4168882121', '111 Younge Street', 'Toronto', 'M2M3R3','1995-01-01','M', 1100,'111222338','2','Canada','NO Special','P','No comments');
insert into students values (315,'Eric 2','Sun 2','4168882131', '121 Younge Street', 'Toronto', 'M2M3R3','1995-01-01','M', 1100,'111222339','3','Canada','NO Special','P','No comments');
insert into students values (315,'Eric 3','Sun 3','4168882141', '131 Younge Street', 'Toronto', 'M2M3R3','1995-01-01','M', 1100,'111222340','4','Canada','NO Special','P','No comments');
insert into students values (315,'Eric 4','Sun 4','4168882151', '141 Younge Street', 'Toronto', 'M2M3R3','1995-01-01','M', 1100,'111222341','1','Canada','NO Special','P','No comments');
insert into students values (315,'Eric 5','Sun 5','4168882161', '151 Younge Street', 'Toronto', 'M2M3R3','1995-01-01','M', 1100,'111222342','2','Canada','NO Special','P','No comments');
insert into students values (315,'Eric 6','Sun 6','4168882171', '161 Younge Street', 'Toronto', 'M2M3R3','1995-01-01','M', 1100,'111222343','3','Canada','NO Special','P','No comments');
insert into students values (315,'Eric 7','Sun 7','4168882181', '171 Younge Street', 'Toronto', 'M2M3R3','1995-01-01','M', 1100,'111222344','4','Canada','NO Special','P','No comments');
insert into students values (315,'Eric 8','Sun 8','4168882191', '181 Younge Street', 'Toronto', 'M2M3R3','1995-01-01','M', 1100,'111222345','1','Canada','NO Special','P','No comments');
insert into students values (315,'Eric 9','Sun 9','4168883111', '191 Younge Street', 'Toronto', 'M2M3R3','1995-01-01','M', 1100,'111222346','1','Canada','NO Special','P','No comments');

select * from students;


/*
  to ensure that the accommodation is well maintained. The information recorded for each inspection 
  includes name of the staff member who carried out the inspection, the date the inspection was made, 
  an indication of whether 
  the property was found to be in a satisfactory condition (yes/no), 
  plus additional comments, if needed. 
*/
create table building_inspections (
    id              int primary key,
    building_id     int,
    inspector       int,    -- FK of staffs_id
    excution_date   nvarchar(20),
    is_satisfaction nvarchar( 1), -- 'Y' or 'N'
    comments        nvarchar(30)

);

alter table building_inspections add foreign key (building_id) references buildings(id);
alter table building_inspections add foreign key (inspector) references staffs(id);


insert into building_inspections values (10, 100, 1111,'20170103','Y','No comments');
insert into building_inspections values (11, 101, 1111,'20170113','Y','No comments');
insert into building_inspections values (12, 102, 1112,'20170123','Y','No comments');
insert into building_inspections values (13, 111, 1113,'20170203','Y','No comments');
insert into building_inspections values (14, 112, 1114,'20170213','Y','No comments');
insert into building_inspections values (15, 113, 1111,'20170303','Y','No comments');
insert into building_inspections values (16, 114, 1112,'20170313','Y','No comments');
insert into building_inspections values (17, 201, 1113,'20170403','N','Some comments');
insert into building_inspections values (18, 202, 1114,'20170413','Y','No comments');
insert into building_inspections values (19, 203, 1115,'20170523','Y','No comments');

-- delete from building_inspections;

create table building_managers (
    building_id     int,
    staffs_id       int,    -- FK of staffs_id
    role_title   nvarchar(20)
    --foreign key building_id references buildings.id
);

alter table building_managers add foreign key (building_id) references buildings(id);
alter table building_managers add foreign key (staffs_id) references staffs(id);

insert into building_managers values ( 101, 1101, 'Manager' );
insert into building_managers values ( 101, 1102, 'Assistant Manager' );
insert into building_managers values ( 101, 1103, 'Administrator' );
insert into building_managers values ( 101, 1104, 'Cleaner' );
insert into building_managers values ( 101, 1105, 'Electrician' );

insert into building_managers values ( 111, 1106, 'Manager' );
insert into building_managers values ( 111, 1107, 'Assistant Manager' );
insert into building_managers values ( 111, 1108, 'Administrator' );
insert into building_managers values ( 111, 1109, 'Cleaner' );
insert into building_managers values ( 111, 1110, 'Electrician' );

select * from building_managers;


/*-------------------------------------------------------------------------------------------------------
For table Halls of Residence
------------------------------------->>>>>>
create table halls_of_residence (
*/
create table buildings (
    id      int primary key,
    purpose nvarchar( 1), -- H:Halls of Residence, F: Flats, L:Lectures, R:Restaurants, G:General, E:Etc  
    title   nvarchar(40),
    street  nvarchar(30), 
    city    nvarchar(30), 
    zipcode nvarchar( 6) 
);

insert into buildings values ( 100,'G','Toronto HQ','425 Bloor Street 2rd floor','Toronto','M2NM2N' );
insert into buildings values ( 101,'G','Schaborough HQ','333 James Road','Schaborough','M2NM2D' );
insert into buildings values ( 102,'G','Mississaga HQ','533 Brad Road','Mississaga','M2NM2D' );

-- this is for residencial building --------------------------------------------------
insert into buildings values ( 111,'H','Toronto Hall #1','111 Bloor Street','Toronto','M2NM2N' );
insert into buildings values ( 112,'H','Toronto Hall #2','425 Young Street','Toronto','M2NM2N' );
insert into buildings values ( 113,'H','North York Hall #1','176 Finch Avenue East','North York','M2NM2N' );
insert into buildings values ( 114,'H','Schaborough Hall #1','425 Markham Road','Schaborough','M2NM2N' );

insert into buildings values ( 201,'F','Flat #201','201 Bloor Street 3rd floor','Toronto','M2NM2N');
insert into buildings values ( 202,'F','Flat #202','202 Bloor Street 3rd floor','Toronto','M2NM2N');
insert into buildings values ( 203,'F','Flat #203','203 Bloor Street 3rd floor','Toronto','M2NM2N');
insert into buildings values ( 204,'F','Flat #204','204 Bloor Street 3rd floor','Toronto','M2NM2N');
insert into buildings values ( 205,'F','Flat #205','205 Bloor Street 3rd floor','Toronto','M2NM2N');
insert into buildings values ( 206,'F','Flat #206','206 Bloor Street 3rd floor','Toronto','M2NM2N');
insert into buildings values ( 207,'F','Flat #207','207 Bloor Street 3rd floor','Toronto','M2NM2N');
insert into buildings values ( 208,'F','Flat #208','208 Bloor Street 3rd floor','Toronto','M2NM2N');
insert into buildings values ( 209,'F','Flat #209','209 Bloor Street 3rd floor','Toronto','M2NM2N');


/*-------------------------------------------------------------------------------------------------------
For table room
------------------------------------->>>>>>
*/
create table rooms (
    id              int primary key,
    purpose         nvarchar(1), -- classification of the room R:Residence, L:Lecture, O:Office, M: Maintenance, W: Washroom
    buildings_id    int not null,
    title           nvarchar(20),
    rental_rate     int -- when the room_class is 'R'
);

alter table rooms add foreign key (buildings_id) references buildings(id);
create index idx_rent on rooms(rental_rate);

-- delete from rooms;

insert into rooms values  (1001, 'O', 100, 'Accomodation Office', 0 );
insert into rooms values  (1002, 'L', 100, 'Class 1002', 0 );
insert into rooms values  (1003, 'L', 100, 'Class 1003', 0 );
insert into rooms values  (1004, 'L', 100, 'Class 1004', 0 );
insert into rooms values  (1005, 'L', 100, 'Class 1005', 0 );
insert into rooms values  (1006, 'L', 100, 'Class 1006', 0 );
insert into rooms values  (1007, 'L', 100, 'Class 1007', 0 );

insert into rooms values  (1012, 'L', 101, 'Class 1012', 0 );
insert into rooms values  (1013, 'L', 101, 'Class 1013', 0 );
insert into rooms values  (1014, 'L', 101, 'Class 1014', 0 );
insert into rooms values  (1015, 'L', 101, 'Class 1015', 0 );
insert into rooms values  (1016, 'L', 101, 'Class 1016', 0 );
insert into rooms values  (1017, 'L', 101, 'Class 1017', 0 );


insert into rooms values  (1022, 'L', 102, 'Class 1022', 0 );
insert into rooms values  (1023, 'L', 102, 'Class 1023', 0 );
insert into rooms values  (1024, 'L', 102, 'Class 1024', 0 );
insert into rooms values  (1025, 'L', 102, 'Class 1025', 0 );
insert into rooms values  (1026, 'L', 102, 'Class 1026', 0 );
insert into rooms values  (1027, 'L', 102, 'Class 1027', 0 );

insert into rooms values  (1200, 'O', 111, 'Hall #1 Office', 0 );
insert into rooms values  (1201, 'R', 111, '1201', 2400 );
insert into rooms values  (1202, 'R', 111, '1202', 2600 );
insert into rooms values  (1203, 'R', 111, '1203', 2400 );
insert into rooms values  (1204, 'R', 111, '1204', 2400 );
insert into rooms values  (1205, 'R', 111, '1205', 2600 );
insert into rooms values  (1206, 'R', 111, '1206', 2400 );
insert into rooms values  (1207, 'R', 111, '1207', 2400 );
insert into rooms values  (1208, 'R', 111, '1208', 2400 );
insert into rooms values  (1209, 'R', 111, '1209', 2400 );
insert into rooms values  (1210, 'R', 111, '1210', 2400 );
insert into rooms values  (1211, 'R', 111, '1211', 2400 );

insert into rooms values  (1301, 'R', 112, '1301', 2400 );
insert into rooms values  (1302, 'R', 112, '1302', 2600 );
insert into rooms values  (1303, 'R', 112, '1303', 2400 );
insert into rooms values  (1304, 'R', 112, '1304', 2400 );
insert into rooms values  (1305, 'R', 112, '1305', 2600 );
insert into rooms values  (1306, 'R', 112, '1306', 2400 );
insert into rooms values  (1307, 'R', 112, '1307', 2400 );
insert into rooms values  (1308, 'R', 112, '1308', 2400 );
insert into rooms values  (1309, 'R', 112, '1309', 2400 );

insert into rooms values  (1311, 'R', 113, '1311', 2400 );
insert into rooms values  (1312, 'R', 113, '1312', 2600 );
insert into rooms values  (1313, 'R', 113, '1313', 2400 );
insert into rooms values  (1314, 'R', 113, '1314', 2400 );
insert into rooms values  (1315, 'R', 113, '1315', 2600 );
insert into rooms values  (1316, 'R', 113, '1316', 2400 );
insert into rooms values  (1317, 'R', 113, '1317', 2400 );
insert into rooms values  (1318, 'R', 113, '1318', 2400 );
insert into rooms values  (1319, 'R', 113, '1319', 2400 );

insert into rooms values  (1321, 'R', 114, '1321', 2400 );
insert into rooms values  (1322, 'R', 114, '1322', 2600 );
insert into rooms values  (1323, 'R', 114, '1323', 2400 );
insert into rooms values  (1324, 'R', 114, '1324', 2400 );
insert into rooms values  (1325, 'R', 114, '1325', 2600 );
insert into rooms values  (1326, 'R', 114, '1326', 2400 );
insert into rooms values  (1327, 'R', 114, '1327', 2400 );
insert into rooms values  (1328, 'R', 114, '1328', 2400 );
insert into rooms values  (1329, 'R', 114, '1329', 2400 );

insert into rooms values  (1401, 'R', 201, '1401', 3100 );
insert into rooms values  (1402, 'R', 201, '1402', 3100 );

insert into rooms values  (1403, 'R', 202, '1403', 3100 );
insert into rooms values  (1404, 'R', 202, '1404', 3100 );

insert into rooms values  (1405, 'R', 203, '1405', 3100 );
insert into rooms values  (1406, 'R', 203, '1406', 3100 );
insert into rooms values  (1407, 'R', 203, '1407', 3100 );
insert into rooms values  (1408, 'R', 203, '1408', 3100 );

insert into rooms values  (1409, 'R', 204, '1409', 3100 );
insert into rooms values  (1410, 'R', 204, '1410', 3100 );

insert into rooms values  (1411, 'R', 205, '1411', 3100 );
insert into rooms values  (1412, 'R', 205, '1412', 3100 );
insert into rooms values  (1413, 'R', 205, '1413', 3100 );
insert into rooms values  (1414, 'R', 205, '1414', 3100 );

insert into rooms values  (1415, 'R', 206, '1415', 3100 );
insert into rooms values  (1416, 'R', 206, '1416', 3100 );

insert into rooms values  (1417, 'R', 207, '1417', 3100 );
insert into rooms values  (1418, 'R', 207, '1418', 3100 );
insert into rooms values  (1419, 'R', 207, '1419', 3100 );

insert into rooms values  (1420, 'R', 208, '1420', 3100 );
insert into rooms values  (1421, 'R', 208, '1421', 3100 );

/*-------------------------------------------------------------------------------------------------------
For table leases
------------------------------------->>>>>>
A student may rent a room in a hall or student flat for various periods of time. 
New lease agreements are negotiated at the start of each academic year with a minimum rental period of 
one quarter and a maximum rental period of one year (including the Summer quarter). 
Each individual lease agreement between a student and the Accommodation Office is uniquely identified using a lease number.
The information pertaining to each lease includes the lease number, 
duration of the lease (in number of quarters), name and the id# of the student, 
room number, hall number or flat number, 
address details (of the hall or the flat) and the date the student wishes to enter the room, 
along with the date the student wishes to leave the room.
*/
create table leases (
    id              int primary key,
    students_id     int,   -- forgine key of students
    rooms_id        int, -- forgin key of rooms
    signed_date     nvarchar(10),
    start_date      nvarchar(10),
    end_date        nvarchar(10),
    duration        int         --- minimum 1 quater maxmum  4 quaters
);

alter table leases add foreign key (students_id) references students(id);
alter table leases add foreign key (rooms_id) references rooms(id);
create index idx_start_date on leases(start_date);



insert into leases values ( 100000, 100000,1201,'20170801','20171010','20181009',4 );
insert into leases values ( 100001, 100001,1202,'20170802','20171010','20181009',4 );
insert into leases values ( 100002, 100002,1203,'20170803','20171010','20181009',4 );
insert into leases values ( 100003, 100003,1204,'20170804','20171010','20181009',4 );
insert into leases values ( 100004, 100004,1205,'20170805','20171010','20181009',4 );
insert into leases values ( 100005, 100005,1206,'20170806','20171010','20181009',4 );
insert into leases values ( 100006, 100006,1207,'20170807','20171010','20181009',4 );
insert into leases values ( 100007, 100007,1208,'20170808','20171010','20181009',4 );
insert into leases values ( 100008, 100008,1209,'20170809','20171010','20181009',4 );
insert into leases values ( 100009, 100009,1301,'20170811','20171010','20181009',4 );
insert into leases values ( 100010, 100010,1302,'20170812','20171010','20181009',4 );
insert into leases values ( 100011, 100011,1303,'20170813','20171010','20181009',4 );
insert into leases values ( 100012, 100012,1304,'20170814','20171010','20181009',4 );
insert into leases values ( 100013, 100013,1305,'20170815','20171010','20181009',4 );
insert into leases values ( 100014, 100014,1306,'20170816','20171010','20181009',4 );
insert into leases values ( 100015, 100015,1307,'20170817','20171010','20181009',4 );
insert into leases values ( 100016, 100016,1401,'20170818','20171010','20181009',4 );
insert into leases values ( 100017, 100017,1402,'20170819','20171010','20181009',4 );

/*-------------------------------------------------------------------------------------------------------
For table invoices
------------------------------------->>>>>>
At the start of each quarter, each student is sent an invoice for the respective rental period. 
Each invoice has a unique invoice number. 
The rest of the data include the lease number, quarter, payment due, students full name, 
students id#, place number or flat number, and the address (hall/flat). 
Additional data is kept as a Payment, which reflects the invoice number, date of payment, 
method of payment (cheque, cash, credit card (indicate type)) plus, 
if needed, the dates the first and second reminders were sent.
*/
create table invoices (
    id                      bigint identity(100000,1),
    leases_id               int,
    quarter                 int,
    issue_date              nvarchar(20),
    paid_date               nvarchar(20),
    due_date                nvarchar(20),
    pay_method              nvarchar( 1), -- 'Q': cheque, 'D': debit or cash, 'C': credit_card
    credit_card             nvarchar( 1), -- 'V': VISA, 'M': Mster, 'A': Amex
    card_number             nvarchar(16), -- when method of payment is 3
    foreign key (leases_id) references leases(id)
);
create index idx_due_date on invoices(due_date);


insert into invoices values (100000,1,'20171110','20171213','20171215','C','M','1111222233334441');
insert into invoices values (100001,1,'20171110','20171213','20171215','C','V','1111222233334442');
insert into invoices values (100002,2,'20171110','20171213','20171215','C','A','1111222233334443');
insert into invoices values (100003,1,'20171110','20171213','20171215','C','M','1111222233334444');
insert into invoices values (100004,3,'20171110','20171213','20171215','C','M','1111222233334445');
insert into invoices values (100005,1,'20171110','20171213','20171215','C','V','1111222233334446');
insert into invoices values (100006,1,'20171110','20171213','20171215','C','V','1111222233334447');
insert into invoices values (100007,1,'20171110','20171213','20171215','C','M','1111222233334448');
insert into invoices values (100008,2,'20171110','20171213','20171215','C','A','1111222233334449');
insert into invoices values (100009,3,'20171110','20171213','20171215','C','A','1111222233334410');
insert into invoices values (100010,1,'20171110','20171213','20171215','C','M','1111222233334411');


create table departments (
    id              int primary key,  -- 100: Accomodation, 101: Building Maintanance, 102: Administration, 103: Financing
    title           nvarchar(30)
);
insert into departments values (101,'Administration');
insert into departments values (102,'Marketing');
insert into departments values (103,'Building Maintanance');

insert into departments values (310,'Application Developer');
insert into departments values (312,'Game Developer');
insert into departments values (313,'Graphic Designer');
insert into departments values (315,'Data Scientist');
insert into departments values (321,'Network Administrator');
insert into departments values (322,'Database Administrator');

insert into departments values (401,'Health Care');

select * from departments;


create table departments_staffs (
    departments_id  int,
    staffs_id       int
);

alter table departments_staffs add foreign key (departments_id) references departments(id);
alter table departments_staffs add foreign key (staffs_id) references staffs(id);
create index idx_staffs_id on departments_staffs (staffs_id);


insert into departments_staffs values ( 101,1100);
insert into departments_staffs values ( 102,1101);
insert into departments_staffs values ( 103,1102);

insert into departments_staffs values ( 310,1103);
insert into departments_staffs values ( 312,1104);
insert into departments_staffs values ( 313,1105);
insert into departments_staffs values ( 315,1106);
insert into departments_staffs values ( 321,1107);
insert into departments_staffs values ( 322,1108);
insert into departments_staffs values ( 401,1109);

create table staffs (
    id              int primary key,
    first_name      nvarchar(30),
    last_name       nvarchar(30),
    office_phone    nvarchar(11),
    cell_phone      nvarchar(11),
    sex             nvarchar( 1),
    street          nvarchar(30),
    city            nvarchar(30),
    zipcode         nvarchar( 6),
    dob             nvarchar( 8)
);

insert into staffs values ( 1100,'Staff 1100', 'Staff Last 1100','4161111100','4162221100','F','1100 XXX Street', 'Toronto','M1M3N4','19901100' )
insert into staffs values ( 1101,'Staff 1101', 'Staff Last 1101','4161111101','4162221101','F','1101 XXX Street', 'Toronto','M1M3N4','19901101' )
insert into staffs values ( 1102,'Staff 1102', 'Staff Last 1102','4161111102','4162221102','F','1102 XXX Street', 'Toronto','M1M3N4','19901102' )
insert into staffs values ( 1103,'Staff 1103', 'Staff Last 1103','4161111103','4162221103','F','1103 XXX Street', 'Toronto','M1M3N4','19901103' )
insert into staffs values ( 1104,'Staff 1104', 'Staff Last 1104','4161111104','4162221104','F','1104 XXX Street', 'Toronto','M1M3N4','19901104' )
insert into staffs values ( 1105,'Staff 1105', 'Staff Last 1105','4161111105','4162221105','F','1105 XXX Street', 'Toronto','M1M3N4','19901105' )
insert into staffs values ( 1106,'Staff 1106', 'Staff Last 1106','4161111106','4162221106','F','1106 XXX Street', 'Toronto','M1M3N4','19901106' )
insert into staffs values ( 1107,'Staff 1107', 'Staff Last 1107','4161111107','4162221107','F','1107 XXX Street', 'Toronto','M1M3N4','19901107' )
insert into staffs values ( 1108,'Staff 1108', 'Staff Last 1108','4161111108','4162221108','F','1108 XXX Street', 'Toronto','M1M3N4','19901108' )
insert into staffs values ( 1109,'Staff 1109', 'Staff Last 1109','4161111109','4162221109','F','1109 XXX Street', 'Toronto','M1M3N4','19901109' )

insert into staffs values ( 1110,'Staff 1110', 'Staff Last 1110','4161111110','4162221110','F','1110 XXX Street', 'Toronto','M1M3N4','19901110' )
insert into staffs values ( 1111,'Staff 1111', 'Staff Last 1111','4161111111','4162221111','F','1111 XXX Street', 'Toronto','M1M3N4','19901101' )
insert into staffs values ( 1112,'Staff 1112', 'Staff Last 1112','4161111112','4162221112','F','1112 XXX Street', 'Toronto','M1M3N4','19901102' )
insert into staffs values ( 1113,'Staff 1113', 'Staff Last 1113','4161111113','4162221113','F','1113 XXX Street', 'Toronto','M1M3N4','19901103' )
insert into staffs values ( 1114,'Staff 1114', 'Staff Last 1114','4161111114','4162221114','F','1114 XXX Street', 'Toronto','M1M3N4','19901104' )
insert into staffs values ( 1115,'Staff 1115', 'Staff Last 1115','4161111115','4162221115','F','1115 XXX Street', 'Toronto','M1M3N4','19901105' )
insert into staffs values ( 1116,'Staff 1116', 'Staff Last 1116','4161111116','4162221116','F','1116 XXX Street', 'Toronto','M1M3N4','19901106' )
insert into staffs values ( 1117,'Staff 1117', 'Staff Last 1117','4161111117','4162221117','F','1117 XXX Street', 'Toronto','M1M3N4','19901107' )
insert into staffs values ( 1118,'Staff 1118', 'Staff Last 1118','4161111118','4162221118','F','1118 XXX Street', 'Toronto','M1M3N4','19901108' )
insert into staffs values ( 1119,'Staff 1119', 'Staff Last 1119','4161111119','4162221119','F','1119 XXX Street', 'Toronto','M1M3N4','19901109' )

insert into staffs values ( 1120,'Staff 1120', 'Staff Last 1120','4161111120','4162221120','F','1120 XXX Street', 'Toronto','M1M3N4','19901110' )
insert into staffs values ( 1121,'Staff 1121', 'Staff Last 1121','4161111121','4162221121','F','1121 XXX Street', 'Toronto','M1M3N4','19901101' )
insert into staffs values ( 1122,'Staff 1122', 'Staff Last 1122','4161111122','4162221122','F','1122 XXX Street', 'Toronto','M1M3N4','19901102' )
insert into staffs values ( 1123,'Staff 1123', 'Staff Last 1123','4161111123','4162221123','F','1123 XXX Street', 'Toronto','M1M3N4','19901103' )
insert into staffs values ( 1124,'Staff 1124', 'Staff Last 1124','4161111124','4162221124','F','1124 XXX Street', 'Toronto','M1M3N4','19901104' )
insert into staffs values ( 1125,'Staff 1125', 'Staff Last 1125','4161111125','4162221125','F','1125 XXX Street', 'Toronto','M1M3N4','19901105' )
insert into staffs values ( 1126,'Staff 1126', 'Staff Last 1126','4161111126','4162221126','F','1126 XXX Street', 'Toronto','M1M3N4','19901106' )
insert into staffs values ( 1127,'Staff 1127', 'Staff Last 1127','4161111127','4162221127','F','1127 XXX Street', 'Toronto','M1M3N4','19901107' )
insert into staffs values ( 1128,'Staff 1128', 'Staff Last 1128','4161111128','4162221128','F','1128 XXX Street', 'Toronto','M1M3N4','19901108' )
insert into staffs values ( 1129,'Staff 1129', 'Staff Last 1129','4161111129','4162221129','F','1129 XXX Street', 'Toronto','M1M3N4','19901109' )

/*
create table staffs_positions (
    staffs_id        int,
    positions_id     int,
    departments_id   int,
    building_id     int,
    is_current      nvarchar(1), -- 'Y': it is current, 'N': it is past
    date_of_issue   nvarchar(20)
    primary key clustered ( staffs_id, position_id ),
    foreign key (staffs_id) references staffs(id)
    foreign key (positions_id) references positions(id)
    foreign key (departments_id) references departments(id)
);
*/

/*-------------------------------------------------------------------------------------------------------
For table Advisor
------------------------------------->>>>>>
The student information pertains to those currently renting a room and those who are on the waiting list. 
A particular student may rent a room either in the hall of residence or student flat. 
When a student joins the University, 
he is assigned a member of staff who acts as his Advisor. 
*/
/*------------------------------------------------------------------------------------------
 The Advisor is responsible for monitoring the student welfare and 
academic progress throughout his time at the University. 
-- display advisor information with a student name
select * from staffs
inner join staffs_positions on staffs_positions.staff_id = staffs.id
    inner join students on students.id = staffs.
where staffs_positions.departments.id = 
*/
/*
creat table advisors (
    id  int
full_name, 
position, 
department,  -- name of department 
phone_number,
office_location
office_number.
); 
The place number uniquely identifies each room in all halls 
controlled by the Accommodation Office and is used when renting a room to a student. 
-----------*/

create table instrutors_courses (
    instructors_id  int,
    courses_id      int    
);

alter table instrutors_courses add foreign key (courses_id) references courses(id);
alter table instrutors_courses add foreign key (instructors_id) references staffs(id);

insert into instrutors_courses values ( 1101, 100 );
insert into instrutors_courses values ( 1101, 103 );
insert into instrutors_courses values ( 1102, 100 );
insert into instrutors_courses values ( 1103, 100 );
insert into instrutors_courses values ( 1104, 100 );
insert into instrutors_courses values ( 1104, 107 );
insert into instrutors_courses values ( 1104, 108 );
insert into instrutors_courses values ( 1105, 101 );
insert into instrutors_courses values ( 1106, 102 );
insert into instrutors_courses values ( 1107, 103 );
insert into instrutors_courses values ( 1108, 104 );
insert into instrutors_courses values ( 1109, 105 );
insert into instrutors_courses values ( 1110, 106 );

create table courses (
    id              int primary key, 
    title           nvarchar(20), 
    start_date      nvarchar(8),
    end_date        nvarchar(8),
    departments_id  int,
    rooms_id        int 
);

alter table courses add foreign key (departments_id) references departments(id);


insert into courses values ( 100, 'Course #100','20171010', '20171030', 310, 1002 ); 
insert into courses values ( 101, 'Course #1010','20171010', '20171030', 310, 1002 ); 
insert into courses values ( 102, 'Course #1020','20171010', '20171030', 310, 1003 ); 
insert into courses values ( 103, 'Course #1030','20171010', '20171030', 312, 1003 ); 
insert into courses values ( 104, 'Course #1040','20171010', '20171030', 312, 1003 ); 
insert into courses values ( 105, 'Course #1050','20171010', '20171030', 313, 1004 ); 
insert into courses values ( 106, 'Course #1060','20171010', '20171030', 313, 1004 ); 
insert into courses values ( 107, 'Course #1070','20171010', '20171030', 315, 1005 ); 
insert into courses values ( 108, 'Course #1080','20171010', '20171030', 315, 1005 ); 
insert into courses values ( 109, 'Course #1090','20171010', '20171030', 315, 1005 ); 

select * from courses;


create table courses_schedule (
    courses_id      int,
    day             nvarchar( 1), --'0' = Sunday, '1'=Monday,'2'=Tuesday,...'6'=Saturday
    start_time      int,
    end_time        int    
);

alter table courses_schedule add foreign key (courses_id) references courses(id);

insert into courses_schedule values (100,'1',10,12 );
insert into courses_schedule values (100,'2',20,12 );
insert into courses_schedule values (100,'5',10,12 );
insert into courses_schedule values (101,'1',14,17 );
insert into courses_schedule values (102,'3',14,15 );
insert into courses_schedule values (103,'4', 8,10 );
insert into courses_schedule values (104,'4',18,20 );
insert into courses_schedule values (105,'2',10,12 );
insert into courses_schedule values (106,'3',10,12 );

select * from courses_schedule;

create table courses_students (
    courses_id      int, 
    student_id      int, 
    registered_date nvarchar( 8)
);
alter table courses_students add foreign key (courses_id) references courses(id);
alter table courses_students add foreign key (student_id) references students(id);
create index idx_student_id on courses_students (student_id);

insert into courses_students values ( 100, 100000,'20170910'); 
insert into courses_students values ( 101, 100000,'20170910'); 
insert into courses_students values ( 102, 100000,'20170910'); 
insert into courses_students values ( 103, 100000,'20170910'); 
insert into courses_students values ( 104, 100000,'20170910'); 
insert into courses_students values ( 105, 100001,'20170910'); 
insert into courses_students values ( 106, 100001,'20170910'); 
insert into courses_students values ( 107, 100001,'20170910'); 
insert into courses_students values ( 108, 100001,'20170910'); 
insert into courses_students values ( 109, 100001,'20170910'); 

insert into courses_students values ( 100, 100002,'20170910'); 
insert into courses_students values ( 101, 100002,'20170910'); 
insert into courses_students values ( 102, 100002,'20170910'); 
insert into courses_students values ( 103, 100002,'20170910'); 
insert into courses_students values ( 104, 100002,'20170910'); 
insert into courses_students values ( 105, 100003,'20170910'); 
insert into courses_students values ( 106, 100003,'20170910'); 
insert into courses_students values ( 107, 100003,'20170910'); 
insert into courses_students values ( 108, 100003,'20170910'); 
insert into courses_students values ( 109, 100003,'20170910'); 

insert into courses_students values ( 100, 100004,'20170910'); 
insert into courses_students values ( 101, 100004,'20170910'); 
insert into courses_students values ( 102, 100004,'20170910'); 
insert into courses_students values ( 103, 100004,'20170910'); 
insert into courses_students values ( 104, 100004,'20170910'); 
insert into courses_students values ( 105, 100005,'20170910'); 
insert into courses_students values ( 106, 100005,'20170910'); 
insert into courses_students values ( 107, 100005,'20170910'); 
insert into courses_students values ( 108, 100005,'20170910'); 
insert into courses_students values ( 109, 100005,'20170910'); 

insert into courses_students values ( 100, 100006,'20170910'); 
insert into courses_students values ( 101, 100006,'20170910'); 
insert into courses_students values ( 102, 100006,'20170910'); 
insert into courses_students values ( 103, 100006,'20170910'); 
insert into courses_students values ( 104, 100006,'20170910'); 
insert into courses_students values ( 105, 100007,'20170910'); 
insert into courses_students values ( 106, 100007,'20170910'); 
insert into courses_students values ( 107, 100007,'20170910'); 
insert into courses_students values ( 108, 100007,'20170910'); 
insert into courses_students values ( 109, 100007,'20170910'); 

select * from courses_students;

create table contacts (
    sin             nvarchar( 9) primary key,
    first_name      nvarchar(30),
    last_name       nvarchar(30),
    relation        nvarchar( 1),
    street          nvarchar(30),
    city            nvarchar(30),
    zipcode         nvarchar( 6),
    phone           nvarchar(11)
);

insert into contacts values ('111222331','Contact First 01','Contact Last 01','P','101 Some Street', 'City 01','ZIP101','4161111101');
insert into contacts values ('111222332','Contact First 02','Contact Last 02','P','102 Some Street', 'City 02','ZIP102','4161111102');
insert into contacts values ('111222333','Contact First 03','Contact Last 03','P','103 Some Street', 'City 03','ZIP103','4161111103');
insert into contacts values ('111222334','Contact First 04','Contact Last 04','P','104 Some Street', 'City 04','ZIP104','4161111104');
insert into contacts values ('111222335','Contact First 05','Contact Last 05','P','105 Some Street', 'City 05','ZIP105','4161111105');
insert into contacts values ('111222336','Contact First 06','Contact Last 06','P','106 Some Street', 'City 06','ZIP106','4161111106');
insert into contacts values ('111222337','Contact First 07','Contact Last 07','P','107 Some Street', 'City 07','ZIP107','4161111107');
insert into contacts values ('111222338','Contact First 08','Contact Last 08','P','108 Some Street', 'City 08','ZIP108','4161111108');
insert into contacts values ('111222339','Contact First 09','Contact Last 09','P','109 Some Street', 'City 09','ZIP109','4161111109');
insert into contacts values ('111222340','Contact First 10','Contact Last 10','P','110 Some Street', 'City 10','ZIP110','4161111110');
insert into contacts values ('111222341','Contact First 11','Contact Last 11','P','111 Some Street', 'City 10','ZIP110','4161111111');
insert into contacts values ('111222342','Contact First 12','Contact Last 12','P','112 Some Street', 'City 10','ZIP110','4161111112');
insert into contacts values ('111222343','Contact First 13','Contact Last 13','P','113 Some Street', 'City 10','ZIP110','4161111113');
insert into contacts values ('111222344','Contact First 14','Contact Last 14','P','114 Some Street', 'City 10','ZIP110','4161111114');
insert into contacts values ('111222345','Contact First 15','Contact Last 15','P','115 Some Street', 'City 10','ZIP110','4161111115');
insert into contacts values ('111222346','Contact First 16','Contact Last 16','P','116 Some Street', 'City 10','ZIP110','4161111116');
insert into contacts values ('111222347','Contact First 17','Contact Last 17','P','117 Some Street', 'City 10','ZIP110','4161111117');
insert into contacts values ('111222348','Contact First 18','Contact Last 18','P','118 Some Street', 'City 10','ZIP110','4161111118');
insert into contacts values ('111222349','Contact First 19','Contact Last 19','P','119 Some Street', 'City 10','ZIP110','4161111119');
insert into contacts values ('111222350','Contact First 20','Contact Last 20','P','120 Some Street', 'City 10','ZIP110','4161111120');

select * from contacts;
-- delete from contacts;
select * from buildings;
/*--
*/
/*********************************************************************************************************/
/*  List student information with halls number                                                           */
/*********************************************************************************************************/
select students.first_name, students.last_name, buildings.title from students
inner join leases on leases.students_id = students.id
    inner join rooms on rooms.id = leases.rooms_id
        inner join buildings on buildings.id = rooms.buildings_id
		where buildings.id = 111;

/*********************************************************************************************************/
/*  List student information with halls name                                                             */
/*********************************************************************************************************/

select students.first_name, students.last_name, buildings.title from students
inner join leases on leases.students_id = students.id
    inner join rooms on rooms.id = leases.rooms_id
        inner join buildings on buildings.id = rooms.buildings_id
		where buildings.title = 'Toronto Hall #2';

/*********************************************************************************************************/
/*  List student' course schedules                                                             */
/*********************************************************************************************************/

select students.first_name, students.last_name, courses_schedule.day, courses_schedule.start_time, rooms.id as 'room #', courses.title as 'course title' from courses_schedule
inner join courses on courses.id = courses_schedule.courses_id
    inner join courses_students on courses_students.courses_id = courses.id
        inner join students on students.id = courses_students.student_id
			inner join rooms on rooms.id = courses.rooms_id
			where students.id = 100001;

/*********************************************************************************************************/
/*  List instructor' course schedules                                                             */
/*********************************************************************************************************/

select  staffs.first_name, staffs.last_name, courses_schedule.day, courses_schedule.start_time, rooms.id as 'room #', courses.title as 'course title' from courses_schedule
inner join courses on courses.id = courses_schedule.courses_id
    inner join instrutors_courses on instrutors_courses.courses_id = courses.id
        inner join staffs on staffs.id = instrutors_courses.instructors_id
			inner join rooms on rooms.id = courses.rooms_id
			where staffs.id = 1110;

/*********************************************************************************************************/
/*  List room available                                                                                  */
/*********************************************************************************************************/

select  rooms.id as 'room #', rooms.title , rooms.rental_rate, buildings.id as 'building #', buildings.street, buildings.city from rooms
inner join buildings on buildings.id = rooms.buildings_id
		where rooms.id not in ( select leases.rooms_id from leases ) and rooms.purpose = 'R'
		order by buildings.id
;