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
create table students (
    id              int indentity(100000,1), 
    first_name      varchar(30),
    last_name       varchar(30), 
    phone           varchar(12),
    street          varchar(30),
    city            varchar(30),
    zipcode         varchar( 6), 
    dob             varchar(11), 
    sex             varchar( 1), 
    category        varchar( 1), /* 1=sophomore, junior, 9=graduate), */ 
    nationality     varchar(30),
    special_needs   varchar(30), 
    current_status  varchar( 8), /* 'placed' or 'waiting' */ 
    course_id       int, 
    comments        varchar(30)  /* for a particular student.  */;
);
insert into students ('Jack 1','Bon 1','4168881111', '101 Younge Street', 'Toronto', 'M2M3R3','1995-01-01','M','1','Canada','NO Special','waiting',100,'No comments');
insert into students ('Jack 2','Bon 2','4168881111', '101 Younge Street', 'Toronto', 'M2M3R3','1995-01-01','M','2','Canada','NO Special','waiting',100,'No comments');
insert into students ('Jack 3','Bon 3','4168881111', '101 Younge Street', 'Toronto', 'M2M3R3','1995-01-01','M','3','Canada','NO Special','waiting',100,'No comments');
insert into students ('Jack 4','Bon 4','4168881111', '101 Younge Street', 'Toronto', 'M2M3R3','1995-01-01','M','4','Canada','NO Special','waiting',100,'No comments');
insert into students ('Jack 5','Bon 5','4168881111', '101 Younge Street', 'Toronto', 'M2M3R3','1995-01-01','M','1','Canada','NO Special','waiting',100,'No comments');
insert into students ('Jack 6','Bon 6','4168881111', '101 Younge Street', 'Toronto', 'M2M3R3','1995-01-01','M','2','Canada','NO Special','waiting',100,'No comments');
insert into students ('Jack 7','Bon 7','4168881111', '101 Younge Street', 'Toronto', 'M2M3R3','1995-01-01','M','3','Canada','NO Special','waiting',100,'No comments');
insert into students ('Jack 8','Bon 8','4168881111', '101 Younge Street', 'Toronto', 'M2M3R3','1995-01-01','M','4','Canada','NO Special','waiting',100,'No comments');
insert into students ('Jack 9','Bon 9','4168881111', '101 Younge Street', 'Toronto', 'M2M3R3','1995-01-01','M','1','Canada','NO Special','waiting',100,'No comments');
insert into students ('Eric 1','Sun 1','4168882111', '101 Younge Street', 'Toronto', 'M2M3R3','1995-01-01','M','2','Canada','NO Special','waiting',100,'No comments');
insert into students ('Eric 2','Sun 2','4168882111', '101 Younge Street', 'Toronto', 'M2M3R3','1995-01-01','M','3','Canada','NO Special','waiting',100,'No comments');
insert into students ('Eric 3','Sun 3','4168882111', '101 Younge Street', 'Toronto', 'M2M3R3','1995-01-01','M','4','Canada','NO Special','waiting',100,'No comments');
insert into students ('Eric 4','Sun 4','4168882111', '101 Younge Street', 'Toronto', 'M2M3R3','1995-01-01','M','1','Canada','NO Special','waiting',100,'No comments');
insert into students ('Eric 5','Sun 5','4168882111', '101 Younge Street', 'Toronto', 'M2M3R3','1995-01-01','M','2','Canada','NO Special','waiting',100,'No comments');
insert into students ('Eric 6','Sun 6','4168882111', '101 Younge Street', 'Toronto', 'M2M3R3','1995-01-01','M','3','Canada','NO Special','waiting',100,'No comments');
insert into students ('Eric 7','Sun 7','4168882111', '101 Younge Street', 'Toronto', 'M2M3R3','1995-01-01','M','4','Canada','NO Special','waiting',100,'No comments');
insert into students ('Eric 8','Sun 8','4168882111', '101 Younge Street', 'Toronto', 'M2M3R3','1995-01-01','M','1','Canada','NO Special','waiting',100,'No comments');
insert into students ('Eric 9','Sun 9','4168882111', '101 Younge Street', 'Toronto', 'M2M3R3','1995-01-01','M','1','Canada','NO Special','waiting',100,'No comments');


/*-------------------------------------------------------------------------------------------------------
For table Halls of Residence
------------------------------------->>>>>>
create table halls_of_residence (
*/
create table building (
    id      int primary key,
    style   varchar( 1), -- H:Halls of Residence, F: Flats, L:Lectures, R:Restaurants, G:General, E:Etc  
    title   varchar(40),
    street  varchar(30), 
    city    varchar(30), 
    zipcode varchar( 6), 
    phone   varchar(12),
    manager int        -- FK of staffs if it is student_flats, it value is null
);
insert into building ( 100,'G','Toronto Office','425 Bloor Street 2rd floor','Toronto','M2NM2N','4161112222', 100001 );
insert into building ( 101,'G','Schaborough Office','333 James Road','Schaborough','M2NM2D','4161112223', 100002 );
insert into building ( 103,'G','Mississaga Office','333 Brad Road','Mississaga','M2NM2D','4161112224', 100003 );

insert into building ( 111,'H','Toronto Dome #1','111 Bloor Street','Toronto','M2NM2N','9051112222', 100020 );
insert into building ( 112,'H','Toronto Dome #2','425 Young Street','Toronto','M2NM2N','9051112223', 100021 );
insert into building ( 113,'H','North York #1','176 Finch Avenue East','North York','M2NM2N','9051112224', 100022 );
insert into building ( 114,'H','Schaborough #1','425 Markham Road','Schaborough','M2NM2N','9051112225', 100023 );

insert into building ( 201,'F','Flat #1','425 Bloor Street 3rd floor','Toronto','M2NM2N','9051113221', 0 );
insert into building ( 202,'F','Flat #1','425 Bloor Street 3rd floor','Toronto','M2NM2N','9051113222', 0 );
insert into building ( 203,'F','Flat #1','425 Bloor Street 3rd floor','Toronto','M2NM2N','9051113223', 0 );
insert into building ( 204,'F','Flat #1','425 Bloor Street 3rd floor','Toronto','M2NM2N','9051113224', 0 );
insert into building ( 205,'F','Flat #1','425 Bloor Street 3rd floor','Toronto','M2NM2N','9051113225', 0 );
insert into building ( 206,'F','Flat #1','425 Bloor Street 3rd floor','Toronto','M2NM2N','9051113226', 0 );
insert into building ( 207,'F','Flat #1','425 Bloor Street 3rd floor','Toronto','M2NM2N','9051113227', 0 );
insert into building ( 208,'F','Flat #1','425 Bloor Street 3rd floor','Toronto','M2NM2N','9051113228', 0 );




/*-------------------------------------------------------------------------------------------------------
For table room
------------------------------------->>>>>>
*/
create table rooms (
    id              int primary key,
    room_class      varchar(1), -- classification of the room R:Residence, L:Lecture, O:Office, M: Maintenance, W: Washroom
    building_id     int not null,
    title           varchar(20),
    rental_rate     int -- when the room_class is 'R'
);
insert into rooms (1200, 'O', 100, 'Accomodation Office', 0 );

insert into rooms (1201, 'R', 111, '1201', 2400 );
insert into rooms (1202, 'R', 111, '1202', 2600 );
insert into rooms (1203, 'R', 111, '1203', 2400 );
insert into rooms (1204, 'R', 111, '1204', 2400 );
insert into rooms (1205, 'R', 111, '1205', 2600 );
insert into rooms (1206, 'R', 111, '1206', 2400 );
insert into rooms (1207, 'R', 111, '1207', 2400 );

insert into rooms (1301, 'R', 112, '1301', 2400 );
insert into rooms (1302, 'R', 112, '1302', 2600 );
insert into rooms (1303, 'R', 112, '1303', 2400 );
insert into rooms (1304, 'R', 112, '1304', 2400 );
insert into rooms (1305, 'R', 112, '1305', 2600 );
insert into rooms (1306, 'R', 112, '1306', 2400 );
insert into rooms (1307, 'R', 112, '1307', 2400 );


insert into rooms (1401, 'R', 201, '1401', 3100 );
insert into rooms (1402, 'R', 201, '1402', 3100 );
insert into rooms (1403, 'R', 202, '1403', 3100 );
insert into rooms (1404, 'R', 202, '1404', 3100 );
insert into rooms (1405, 'R', 203, '1405', 3100 );
insert into rooms (1406, 'R', 203, '1406', 3100 );
insert into rooms (1407, 'R', 203, '1407', 3100 );
insert into rooms (1408, 'R', 203, '1408', 3100 );
insert into rooms (1409, 'R', 204, '1409', 3100 );
insert into rooms (1410, 'R', 204, '1410', 3100 );

insert into rooms (1411, 'R', 205, '1411', 3100 );
insert into rooms (1412, 'R', 205, '1412', 3100 );
insert into rooms (1413, 'R', 205, '1413', 3100 );
insert into rooms (1414, 'R', 205, '1414', 3100 );
insert into rooms (1415, 'R', 206, '1415', 3100 );
insert into rooms (1416, 'R', 206, '1416', 3100 );

insert into rooms (1417, 'R', 207, '1417', 3100 );
insert into rooms (1418, 'R', 207, '1418', 3100 );
insert into rooms (1419, 'R', 207, '1419', 3100 );

insert into rooms (1420, 'R', 208, '1420', 3100 );
insert into rooms (1421, 'R', 208, '1421', 3100 );


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
    id              int identity(1,1),
    student_id      int,   -- forgine key of students
    building_id     int,  -- forgine key of halls
    room_number     int, -- forgin key of rooms
    signed_date     varchar(10),
    start_date      varchar(10),
    end_date        varchar(10),
    duration        int         --- minimum 1 quater maxmum  4 quaters
);

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
    lease_number            int,
    quarter                 int,
    issue_date              varchar(20),
    paid_date               varchar(20),
    due_date                varchar(20),
    method_of_payment       varchar(1), -- 'Q': cheque, 'D': debit or cash, 'C': credit_card
    class_of_credit_card    varchar(1), -- when method of payment is 3 (credit_card ),'V': VISA, 'M': Mster, 'A': Amex
    credit_card_number      varchar(16) -- when method of payment is 3
);

create table departments (
    id              int,  -- 100: Accomodation, 101: Building Maintanance, 102: Administration, 103: Financing
    sub_id          int,
    title           varchar(20),
    sub_title       varchar(20)
);

insert into departments (100,0,'Marketing','CEO');
insert into departments (100,2,'Marketing','Marketing');

insert into departments (112,0,'Building Maintanance','Clenning');
insert into departments (112,1,'Building Maintanance','HVAC');
insert into departments (112,2,'Building Maintanance','Electric');
insert into departments (112,3,'Building Maintanance','Inspection');
insert into departments (112,4,'Building Maintanance','Network');
insert into departments (112,5,'Building Maintanance','Computer');

insert into departments (210,0,'Administration','Administration');
insert into departments (210,1,'Administration','Financing');
insert into departments (210,2,'Administration','Counselling');
insert into departments (210,3,'Administration','Attendance');
insert into departments (210,4,'Administration','Auditing');
insert into departments (210,5,'Administration','Acomodation');
insert into departments (210,6,'Administration','Advisor');

insert into departments (310,0,'Health Care','Health Care');
insert into departments (410,0,'Application Developer','Application Developer');
insert into departments (410,1,'Application Developer','WEB Programming');
insert into departments (410,2,'Application Developer','Android Programming');
insert into departments (410,3,'Application Developer','iOS Programming');
insert into departments (412,0,'Game Developer','Game Developer');
insert into departments (412,1,'Game Developer','Game Design');
insert into departments (412,2,'Game Developer','3D Graphic Design');
insert into departments (412,3,'Game Developer','Animation Programmer');
insert into departments (412,4,'Game Developer','Sound Design');
insert into departments (412,5,'Game Developer','Server Programming');
insert into departments (412,6,'Instructor','Dentist');

create table positions (
    department_id   int,
    id              int, -- 30: A
    title           varchar(20),
    todo            varchar(50)
);




create table staffs (
    id              int identity(100000,1),
    first_name      varchar(20),
    last_name       varchar(20),
    office_phone    varchar(11),
    cell_phone      varchar(11),
    sex             varchar(1),
    street          varchar(20),
    city            varchar(20),
    zip             varchar(6),
    dob             varchar(20)
);


create table staffs_positions (
    staff_id        int,
    department_id   int,
    building_id     int,
    is_current      varchar(1), -- 'Y': it is current, 'N': it is past
    date_of_issue   varchar(20)
);



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
*/
-- display advisor information with a student name
select * from staffs
inner join staffs_positions on staffs_positions.staff_id = staffs.id
    inner join students on students.id = staffs.
where staffs_positions.departments.id = 
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

/*
  to ensure that the accommodation is well maintained. The information recorded for each inspection 
  includes name of the staff member who carried out the inspection, the date the inspection was made, 
  an indication of whether 
  the property was found to be in a satisfactory condition (yes/no), 
  plus additional comments, if needed. 
*/
create table building_inspections (
    id  int,
    building_id     int,
    inspector       int,
    date_of_issue   varchar(20),
    is_satisfaction varchar( 1),
    comments        varchar(30)

);


create table courses (
    id              int, 
    title           varchar(20), 
    year            varchar(20), 
    instructor      int, 
    room_number     int, 
    department_id   int
);

create table contacts (
    id              int,
    student_id      int,
    sin             varchar(20),
    first_name      varchar(20),
    last_name       varchar(20),
    relation        varchar(20),
    street          varchar(20),
    city            varchar(20),
    zipcode         varchar(20),
    phone           varchar(20)
);