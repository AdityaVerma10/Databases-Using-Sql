CREATE DATABASE COMPANY;
USE COMPANY;

CREATE TABLE EMPLOYEE (
	emp_id INT PRIMARY KEY,
    emp_name VARCHAR(255),
    emp_email VARCHAR(255),
    contact_no INT(10),
    city varchar(255)
    );
    
INSERT INTO EMPLOYEE
VALUES ('1','SURESH','suresh123@gmail.com','85432125','Gujrat'),
('2','Mayank','mayank123@gmail.com','21254356','Maheshwar'),
('3','nilesh','nilesh345@gmail.com','9567512','pune'),
('4','Sonu','sonu7846@gmail.com','2125545','indore'),
('5','Dinesh','dinesh34@gmail.com','123548565','Nashik');

select * from employee;
    
CREATE TABLE CLIENT_DETAILS(
	c_id int primary key,
    c_name varchar(255),
    email varchar(255),
    phoneNo int (10),
    city varchar(255),
    empid int ,
    FOREIGN KEY (empid) REFERENCES EMPLOYEE(emp_id)
    );
    
    insert into client_details
    values ('1','mac','mac2343@gmail.com','771522','macico','3'),
    ('2','jac','jac24@gmail.com','25223356','newyork','3'),
    ('3','mini','mini12@gmail.com','761852','switherland','1'),
    ('4','jordern','jordern@gmail.com','88522','canada','5'),
    ('5','pratap','pratap4353@gmail.com','958522','mumbai','2');
    
    select * from client_details;
    
CREATE TABLE PROJECT(
	p_id INT PRIMARY KEY,
    p_name varchar(255),
    empid INT ,
    clientid int,
    startdate datetime,
    FOREIGN KEY (empid) REFERENCES EMPLOYEE (emp_id),
    FOREIGN KEY (clientid) references CLIENT_DETAILS (c_id)
    );
    
insert into project 
values ('1','A','1','3','2023-9-3'),
		('2','b','2','1','2023-1-5'),
		('3','c','3','5','2023-2-3'),
		('4','A','3','2','2023-8-8'),
		('5','A','5','4','2023-10-30');
        
select * from project;


