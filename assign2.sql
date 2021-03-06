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
The Advisor is responsible for monitoring the student welfare and academic progress throughout his time at the University. 
The data kept for a students Advisor includes full name, position, name of the department, phone number and office location/number. 
We assume that there are no two advisors in the same department will have the same name. 
-------------------------------------------------------------------------------------------------------*/
create table students (
    id          int indentity(100000,1), 
    first_name  varchar(30),
    last_name  varchar(30), 
    home_number  varchar(30),
    street  varchar(30),
    city  varchar(30),
    zip_code  varchar(30), 
    dob  varchar(30), 
    sex  varchar(30), 
    category  varchar(30), /* (e.g., sophomore, junior, graduate), */ 
    nationality  varchar(30),
    special_needs  varchar(30), 
    current_status  varchar(30), /* 'placed' or 'waiting' */ 
    registered_for  varchar(30), 
    comments  varchar(30) /* for a particular student.  */
);

/*-------------------------------------------------------------------------------------------------------
For table Halls of Residence
------------------------------------->>>>>>
create table halls_of_residence (
*/
create table dom (
    id      int identity(1,1),
    name,   varchar(40),
    address varchar(70), 
    phone_number    varchar(12),
    manager int,        -- if it is student_flats, it value is null
    max_room    int     -- when max_room < 10 it is student flats, else it is halls of residence
);
/*-------------------------------------------------------------------------------------------------------
For table room
------------------------------------->>>>>>
*/
create table room (
    room_number     int identity(100,1),
    hall_id        int not null,
    rental_rate     int
);
/*-------------------------------------------------------------------------------------------------------
For table Students Flats
------------------------------------->>>>>>
*/
create table student_flats (
    id      int identity(100,1),
    name,   varchar(40),
    address varchar(70), 
    phone_number    varchar(12),
    max_room    int
);

/*-------------------------------------------------------------------------------------------------------
For table leases
------------------------------------->>>>>>
*/
create table leases (
    id      int identity(1,1),
    student_id   int,
    hall_id      int, 
    room_number      int,
    signed_date   varchar(10),
    start_date   varchar(10),
    end_date   varchar(10)
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
creat table advisor (

full_name, 
position, 
department,  /* name of department */
phone_number,
office_location
office_number.
); /* We assume that there are no two advisors in the same department will have the same name. */
*/


careate table rooms

hall_name,
room_number,
rent_rate
/* ---------
The place number uniquely identifies each room in all halls 
controlled by the Accommodation Office and is used when renting a room to a student. 
-----------*/

Student Flats.

The Accommodation Office also offers student flats. 
These flats are fully furnished and provide single-room accommodation for groups of two, three or four students. 
The information held on student flats includes a flat number, address and the number of beds available in each flat. 
The flat number uniquely identifies each flat 
Leases. 
A student may rent a room in a hall or student flat for various periods of time. 
New lease agreements are negotiated at the start of each academic year with a minimum rental period of one quarter and 
a maximum rental period of one year (including the Summer quarter). Each individual lease agreement between a student and 
the Accommodation Office is uniquely identified using a lease number. 
The information pertaining to each lease includes the lease number, 
duration of the lease (in number of quarters), name and the id# of the student, room number, 
hall number or flat number, address details (of the hall or the flat) and the date the student wishes to enter the room, 
along with the date the student wishes to leave the room. 
 Invoices. 
At the start of each quarter, each student is sent an invoice for the respective rental period. 
Each invoice has a unique invoice number. The rest of the data include the lease number, quarter, 
payment due, students full name, students id#, place number or flat number, and the address (hall/flat). 
Additional data is kept as a Payment, which reflects the invoice number, 
date of payment, method of payment (cheque, cash, credit card (indicate type)) plus, 
if needed, the dates the first and second reminders were sent. 
 Students Flat Inspections. 
  to ensure that the accommodation is well maintained. The information recorded for each inspection 
  includes name of the staff member who carried out the inspection, the date the inspection was made, 
  an indication of whether 
  the property was found to be in a satisfactory condition (yes/no), 
  plus additional comments, if needed. 

create table accommodation_staffs 
first_name,
last_name,  
home address (street, city, zipcode), 
date of birth, 
sex, 
position, /*-- (e.g, Hall Manager, Administrative Assistant, Cleaner) and ---*/
location, /*-- (e.g., Accommodation Office or Hall). --*/ Here we assume that there are no two staff members having the same name. 

create table courses 
number, 
title, 
year, 
instructor, 
room_number, 
and department name. Each student is associated with the courses he is registered for. 
Here we assume that the course number and the department name can uniquely identify a course. 
Contacts. 
For each student, the office keeps a record of a contact person, which includes SIN/SSN, name (first and last), 
relationship with the student, address (street, city, zipcode) and the contact phone number. 