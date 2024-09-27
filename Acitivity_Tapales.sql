
-- create database tapales_2c;

use tapales_2c;


create table employees(

		emp_id int auto_increment primary key,
        fname varchar(50) not null,
        lname varchar(50) not null,
        email varchar(50) not null,
        hire_date date not null,
        department varchar (50) not null
        
     
	
);




create table hours_worked(
			
		record_id int auto_increment primary key,
        emp_id int,
        rate varchar (50) not null,
        hrs_worked time not null,
        overtime_hrs time not null,
        deductions varchar(50) not null,
        foreign key (emp_id) references employees (emp_id) 
  
);


create table reports(

		report_id int auto_increment primary key,
        emp_id int,
        pay_period varchar(50), /* "Monthly" || "Quarterly" */
        grss_sal decimal (10,2) not null,
        net_sal decimal (10,2) not null,
        foreign key (emp_id) references employees (emp_id) 

);



--   insert into employees(fname, lname, email, hire_date, department)
--  values("Rasheed", "Tapales", "tapalesrasheed@gmail.com", "2004-06-11", "IT"),
-- 	   ("Rodeliza", "Tapales", "reodeliza@gmail.com", "1990-10-20", "Accounting"); 
--        
--  insert into hours_worked(emp_id, rate, hrs_worked, overtime_hrs, deductions)
-- values(1, "₱2000", '40:30', '6:00', "₱2000"),
-- 	  (2, "₱3000", '35:00', '5:00', "₱2000");
--       
--      insert into reports (emp_id, pay_period, grss_sal, net_sal)
-- 		values(1," Monthly", 3000.75, 2900.50),
-- 	  (2,", Monthly", 28000.75, 27000.50);
--       
--       
--       select * from employees;
--        select * from hours_worked;
--         select * from reports;
 

 
 