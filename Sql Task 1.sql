create table employee (
	Employee_id int primary key,
	first_name varchar,
	last_name varchar,
	designation varchar,
	salary int
)

select * from employee

insert into employee values(1,'william','smith','CEO',250000)
insert into employee values(2,'rezza','fredd','sr manager',100000)
insert into employee values(3,'mohan','kumar','web develpoer',50000)
insert into employee values(4,'cindy','mac','senior hr',50000)
insert into employee values(5,'vince','jose','Hr consultant',30000)
insert into employee values(6,'rajiv','kumar','it admin',25000)
insert into employee values(7,'john','thomas','sr technical lead',45000)
insert into employee values(8,'oshane','mathew','data scientist',50000)
insert into employee values(9,'chin','yeu','data analyst',20000)
insert into employee values(10,'linda','greedman','receotionist',15000)

select * from employee

create table employee_details(
	user_id int primary key,
	name varchar(100),
	joinig_date date,
	work_location varchar(50),
	job_status varchar(50),
	employee_id int,
	FOREIGN KEY (employee_id) REFERENCES employee(employee_id)
	
)

select * from employee_details

insert into employee_details values(1,'jack','30-04-2021','pune','permanent',1)
insert into employee_details values(2,'mark','30-04-2021','nagpur','permanent',2)
insert into employee_details values(3,'tony','30-05-2022','delhi','permanent',3)
insert into employee_details values(4,'david','30-05-2022','mumbai','permanent',4)
insert into employee_details values(5,'john','30-04-2023','pune','permanent',5)
	
select * from employee_details


create table employee_reward(
	s_no int primary key,
	employee_name varchar(100),
	department varchar(100),
	joing_date date,
	rating int,
	FOREIGN KEY (rating) REFERENCES employee(employee_id)
	)
	
select * from employee_reward

insert into employee_reward values(1,'hasan','marketing','30-04-2011',3.5)
insert into employee_reward values(2,'mary','sales','30-04-2011',5.5)
insert into employee_reward values(3,'michael','finance','25-02-2012',4.5)
insert into employee_reward values(4,'smith','human resource','30-03-2012',6.5)
insert into employee_reward values(5,'jones','marketing','27-05-2010',7.5)

select * from employee_reward
