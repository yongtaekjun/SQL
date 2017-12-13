*========================================================================================================
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
    department_id   int,
    first_name      varchar(30),
    last_name       varchar(30), 
    phone           varchar(12),
    street          varchar(30),
    city            varchar(30),
    zipcode         varchar( 6), 
    dob             varchar(11), 
    sex             varchar( 1), 
    advisor         int, 
    contacts_sin    int, 
    category        varchar( 1), /* 1=sophomore, junior, 9=graduate), */ 
    nationality     varchar(30),
    special_needs   varchar(30), 
    current_status  varchar( 8), /* 'placed' or 'waiting' */ 
    comments        varchar(30)  /* for a particular student.  */;
);
insert into students ('Jack 1','Bon 1','4168881111', '101 Younge Street', 'Toronto',    'M2M3R3','1995-01-01','M','1','Canada','NO Special','waiting','No comments');
insert into students ('Jack 2','Bon 2','4168881112', '102 Younge Street', 'Oakville',   'M2M3R3','1996-01-01','M','2','Canada','NO Special','waiting','No comments');
insert into students ('Jack 3','Bon 3','4168881113', '103 Younge Street', 'Richmod Hill', 'M2M3R3','1998-01-01','M','3','Canada','NO Special','waiting','No comments');
insert into students ('Jack 4','Bon 4','4168881114', '104 Younge Street', 'Toronto', 'M2M3R3','1995-01-01','M','4','Canada','NO Special','waiting','No comments');
insert into students ('Jack 5','Bon 5','4168881115', '105 Younge Street', 'Toronto', 'M2M3R3','1995-01-01','M','1','Canada','NO Special','waiting','No comments');
insert into students ('Jack 6','Bon 6','4168881116', '106 Younge Street', 'Toronto', 'M2M3R3','1995-01-01','M','2','Canada','NO Special','waiting','No comments');
insert into students ('Jack 7','Bon 7','4168881117', '107 Younge Street', 'Toronto', 'M2M3R3','1995-01-01','M','3','Canada','NO Special','waiting','No comments');
insert into students ('Jack 8','Bon 8','4168881118', '108 Younge Street', 'Toronto', 'M2M3R3','1995-01-01','M','4','Canada','NO Special','waiting','No comments');
insert into students ('Jack 9','Bon 9','4168881119', '109 Younge Street', 'Toronto', 'M2M3R3','1995-01-01','M','1','Canada','NO Special','waiting','No comments');
insert into students ('Eric 1','Sun 1','4168882121', '111 Younge Street', 'Toronto', 'M2M3R3','1995-01-01','M','2','Canada','NO Special','waiting','No comments');
insert into students ('Eric 2','Sun 2','4168882131', '121 Younge Street', 'Toronto', 'M2M3R3','1995-01-01','M','3','Canada','NO Special','waiting','No comments');
insert into students ('Eric 3','Sun 3','4168882141', '131 Younge Street', 'Toronto', 'M2M3R3','1995-01-01','M','4','Canada','NO Special','waiting','No comments');
insert into students ('Eric 4','Sun 4','4168882151', '141 Younge Street', 'Toronto', 'M2M3R3','1995-01-01','M','1','Canada','NO Special','waiting','No comments');
insert into students ('Eric 5','Sun 5','4168882161', '151 Younge Street', 'Toronto', 'M2M3R3','1995-01-01','M','2','Canada','NO Special','waiting','No comments');
insert into students ('Eric 6','Sun 6','4168882171', '161 Younge Street', 'Toronto', 'M2M3R3','1995-01-01','M','3','Canada','NO Special','waiting','No comments');
insert into students ('Eric 7','Sun 7','4168882181', '171 Younge Street', 'Toronto', 'M2M3R3','1995-01-01','M','4','Canada','NO Special','waiting','No comments');
insert into students ('Eric 8','Sun 8','4168882191', '181 Younge Street', 'Toronto', 'M2M3R3','1995-01-01','M','1','Canada','NO Special','waiting','No comments');
insert into students ('Eric 9','Sun 9','4168883111', '191 Younge Street', 'Toronto', 'M2M3R3','1995-01-01','M','1','Canada','NO Special','waiting','No comments');


/*-------------------------------------------------------------------------------------------------------
For table Halls of Residence
------------------------------------->>>>>>
create table halls_of_residence (
*/
create table buildings (
    id      int primary key,
    purpose varchar( 1), -- H:Halls of Residence, F: Flats, L:Lectures, R:Restaurants, G:General, E:Etc  
    title   varchar(40),
    street  varchar(30), 
    city    varchar(30), 
    zipcode varchar( 6) 
);
insert into building ( 100,'G','Toronto HQ','425 Bloor Street 2rd floor','Toronto','M2NM2N' );
insert into building ( 101,'G','Schaborough HQ','333 James Road','Schaborough','M2NM2D' );
insert into building ( 102,'G','Mississaga HQ','533 Brad Road','Mississaga','M2NM2D' );

-- this is for residencial building --------------------------------------------------
insert into building ( 111,'H','Toronto Hall #1','111 Bloor Street','Toronto','M2NM2N' );
insert into building ( 112,'H','Toronto Hall #2','425 Young Street','Toronto','M2NM2N' );
insert into building ( 113,'H','North York Hall #1','176 Finch Avenue East','North York','M2NM2N' );
insert into building ( 114,'H','Schaborough Hall #1','425 Markham Road','Schaborough','M2NM2N' );

insert into building ( 201,'F','Flat #201','201 Bloor Street 3rd floor','Toronto','M2NM2N');
insert into building ( 202,'F','Flat #202','202 Bloor Street 3rd floor','Toronto','M2NM2N');
insert into building ( 203,'F','Flat #203','203 Bloor Street 3rd floor','Toronto','M2NM2N');
insert into building ( 204,'F','Flat #204','204 Bloor Street 3rd floor','Toronto','M2NM2N');
insert into building ( 205,'F','Flat #205','205 Bloor Street 3rd floor','Toronto','M2NM2N');
insert into building ( 206,'F','Flat #206','206 Bloor Street 3rd floor','Toronto','M2NM2N');
insert into building ( 207,'F','Flat #207','207 Bloor Street 3rd floor','Toronto','M2NM2N');
insert into building ( 208,'F','Flat #208','208 Bloor Street 3rd floor','Toronto','M2NM2N');
insert into building ( 209,'F','Flat #209','209 Bloor Street 3rd floor','Toronto','M2NM2N');


/*-------------------------------------------------------------------------------------------------------
For table room
------------------------------------->>>>>>
*/
create table rooms (
    id              int primary key,
    purpose         varchar(1), -- classification of the room R:Residence, L:Lecture, O:Office, M: Maintenance, W: Washroom
    buildings_id    int not null,
    title           varchar(20),
    rental_rate     int -- when the room_class is 'R'
);
insert into rooms (1001, 'O', 100, 'Accomodation Office', 0 );
insert into rooms (1002, 'L', 100, 'Class 1002', 0 );
insert into rooms (1003, 'L', 100, 'Class 1003', 0 );
insert into rooms (1004, 'L', 100, 'Class 1004', 0 );
insert into rooms (1005, 'L', 100, 'Class 1005', 0 );
insert into rooms (1006, 'L', 100, 'Class 1006', 0 );
insert into rooms (1007, 'L', 100, 'Class 1007', 0 );

insert into rooms (1012, 'L', 101, 'Class 1012', 0 );
insert into rooms (1013, 'L', 101, 'Class 1013', 0 );
insert into rooms (1014, 'L', 101, 'Class 1014', 0 );
insert into rooms (1015, 'L', 101, 'Class 1015', 0 );
insert into rooms (1016, 'L', 101, 'Class 1016', 0 );
insert into rooms (1017, 'L', 101, 'Class 1017', 0 );


insert into rooms (1022, 'L', 102, 'Class 1022', 0 );
insert into rooms (1023, 'L', 102, 'Class 1023', 0 );
insert into rooms (1024, 'L', 102, 'Class 1024', 0 );
insert into rooms (1025, 'L', 102, 'Class 1025', 0 );
insert into rooms (1026, 'L', 102, 'Class 1026', 0 );
insert into rooms (1027, 'L', 102, 'Class 1027', 0 );

insert into rooms (1200, 'O', 111, 'Hall #1 Office', 0 );
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

insert into rooms (1301, 'R', 113, '1301', 2400 );
insert into rooms (1302, 'R', 113, '1302', 2600 );
insert into rooms (1303, 'R', 113, '1303', 2400 );
insert into rooms (1304, 'R', 113, '1304', 2400 );
insert into rooms (1305, 'R', 113, '1305', 2600 );
insert into rooms (1306, 'R', 113, '1306', 2400 );
insert into rooms (1307, 'R', 113, '1307', 2400 );

insert into rooms (1301, 'R', 114, '1301', 2400 );
insert into rooms (1302, 'R', 114, '1302', 2600 );
insert into rooms (1303, 'R', 114, '1303', 2400 );
insert into rooms (1304, 'R', 114, '1304', 2400 );
insert into rooms (1305, 'R', 114, '1305', 2600 );
insert into rooms (1306, 'R', 114, '1306', 2400 );
insert into rooms (1307, 'R', 114, '1307', 2400 );

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
    students_id      int,   -- forgine key of students
    buildings_id     int,  -- forgine key of halls
    rooms_number     int, -- forgin key of rooms
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
    leases_id               int,
    quarter                 int,
    issue_date              varchar(20),
    paid_date               varchar(20),
    due_date                varchar(20),
    method_of_payment       varchar(1), -- 'Q': cheque, 'D': debit or cash, 'C': credit_card
    class_of_credit_card    varchar(1), -- when method of payment is 3 (credit_card ),'V': VISA, 'M': Mster, 'A': Amex
    credit_card_number      varchar(16), -- when method of payment is 3
    foreign key (leases_id) references leases(id)
);

create table departments (
    id              int,  -- 100: Accomodation, 101: Building Maintanance, 102: Administration, 103: Financing
    title           varchar(30)
);
insert into departments (101,'Administration');
insert into departments (102,'Marketing');
insert into departments (103,'Building Maintanance');
insert into departments (310,'Application Developer');
insert into departments (312,'Game Developer');
insert into departments (313,'Graphic Designer');
insert into departments (315,'Data Scientist');
insert into departments (321,'Network Administrator');
insert into departments (322,'Database Administrator');
insert into departments (401,'Health Care');

create table positions (
    department_id   int,
    id              int, -- 30: A
    title           varchar(20),
    todo            varchar(50),
    primary key clustered ( department_id, id ),
    foreign key (department_id) references departments(id)
);




create table staffs (
    id              int primary key,
    first_name      varchar(30),
    last_name       varchar(30),
    office_phone    varchar(11),
    cell_phone      varchar(11),
    sex             varchar( 1),
    street          varchar(30),
    city            varchar(30),
    zipcode         varchar( 6),
    dob             varchar( 8)
);

insert into staffs ( 1101,'Staff 1101', 'Staff Last 1101','4161111101','4162221101','F','1101 XXX Street', 'Toronto','M1M3N4','19901101' )
insert into staffs ( 1102,'Staff 1102', 'Staff Last 1102','4161111102','4162221102','F','1102 XXX Street', 'Toronto','M1M3N4','19901102' )
insert into staffs ( 1103,'Staff 1103', 'Staff Last 1103','4161111103','4162221103','F','1103 XXX Street', 'Toronto','M1M3N4','19901103' )
insert into staffs ( 1104,'Staff 1104', 'Staff Last 1104','4161111104','4162221104','F','1104 XXX Street', 'Toronto','M1M3N4','19901104' )
insert into staffs ( 1105,'Staff 1105', 'Staff Last 1105','4161111105','4162221105','F','1105 XXX Street', 'Toronto','M1M3N4','19901105' )
insert into staffs ( 1106,'Staff 1106', 'Staff Last 1106','4161111106','4162221106','F','1106 XXX Street', 'Toronto','M1M3N4','19901106' )
insert into staffs ( 1107,'Staff 1107', 'Staff Last 1107','4161111107','4162221107','F','1107 XXX Street', 'Toronto','M1M3N4','19901107' )
insert into staffs ( 1108,'Staff 1108', 'Staff Last 1108','4161111108','4162221108','F','1108 XXX Street', 'Toronto','M1M3N4','19901108' )
insert into staffs ( 1109,'Staff 1109', 'Staff Last 1109','4161111109','4162221109','F','1109 XXX Street', 'Toronto','M1M3N4','19901109' )
insert into staffs ( 1110,'Staff 1110', 'Staff Last 1110','4161111110','4162221110','F','1110 XXX Street', 'Toronto','M1M3N4','19901110' )


create table staffs_positions (
    staffs_id        int,
    positions_id     int,
    departments_id   int,
    building_id     int,
    is_current      varchar(1), -- 'Y': it is current, 'N': it is past
    date_of_issue   varchar(20)
    primary key clustered ( staffs_id, position_id ),
    foreign key (staffs_id) references staffs(id)
    foreign key (positions_id) references positions(id)
    foreign key (departments_id) references departments(id)
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
    inspector       int,    -- FK of staffs_id
    excution_date   varchar(20),
    is_satisfaction varchar( 1), -- 'Y' or 'N'
    comments        varchar(30)

);
create table building_managers (
    building_id     int,
    staffs_id       int,    -- FK of staffs_id
    role_title   varchar(20)
    --foreign key building_id references buildings.id
);
insert into building_managers ( 101, 100005, 'Manager' );
insert into building_managers ( 101, 100006, 'Assistant Manager' );
insert into building_managers ( 101, 100007, 'Administrator' );
insert into building_managers ( 101, 100008, 'Cleaner' );
insert into building_managers ( 101, 100009, 'Electrician' );

create table courses (
    id              int, 
    title           varchar(20), 
    year            varchar(20), 
    instructor      int, 
    building_id     int, 
    room_number     int, 
    department_id   int
);

create table courses_students (
    courses_id      int, 
    student_id      int, 
    registered_date varchar(20), 
);

create table contacts (
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