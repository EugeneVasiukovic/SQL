
--1)Создать таблицу employees
--- id. serial,  primary key,
--- employee_name. Varchar(50), not null
--Наполнить таблицу employee 70 строками.
--
--


create table employees(
	id serial primary key,
	employee_name varchar(50) not null
);

insert into employees(employee_name)
values ('Валера'),
	   ('Евгений'),
	   ('Саша'),
	   ('Вадим'),
	   ('Андрей'),
	   ('Иван'),
	   ('Никита'),
	   ('Сергей'),
	   ('Николай'),
	   ('Виктория'),
	   ('Анастасия'),
	   ('Евгения'),
	   ('Александра'),
	   ('Валентина'),
	   ('Ксения'),
	   ('Татьяна'),
	   ('Анна'),
	   ('Юния'),
	   ('Варвара'),
	   ('Екатерина'),
	   ('Жорик'),
	   ('Зинаида'),
	   ('Ернан'),
	   ('Артем'),
	   ('Юлия'),
	   ('Иванна'),
	   ('Ирина'),
	   ('Анжела'),
	   ('Рита'),
	   ('Егор'),
	   ('Даша'),
	   ('Миша'),
	   ('Валерия'),
	   ('Яна'),
	   ('Виктор'),
	   ('Кристина'),
	   ('Дмитрий'),
	   ('Людмила'),
	   ('Аля'),
	   ('Даниил'),
	   ('Елена'),
	   ('Анастасия'),
	   ('Евгения'),
	   ('Александра'),
	   ('Валентина'),
	   ('Ксения'),
	   ('Татьяна'),
	   ('Анна'),
	   ('Юния'),
	   ('Варвара'),
	   ('Екатерина'),
	   ('Жорик'),
	   ('Зинаида'),
	   ('Ернан'),
	   ('Артем'),
	   ('Юлия'),
	   ('Иванна'),
	   ('Ирина'),
	   ('Анжела'),
	   ('Рита'),
	   ('Егор'),
	   ('Даша'),
	   ('Миша'),
	   ('Валерия'),
	   ('Яна'),
	   ('Виктор'),
	   ('Кристина'),
	   ('Дмитрий'),
	   ('Людмила'),
	   ('Аля'),
	   ('Даниил');

select	* from employees;



--2)Создать таблицу salary
--- id. Serial  primary key,
--- monthly_salary. Int, not null
--Наполнить таблицу salary 15 строками:
--- 1000
--- 1100
--- 1200
--- 1300
--- 1400
--- 1500
--- 1600
--- 1700
--- 1800
--- 1900
--- 2000
--- 2100
--- 2200
--- 2300
--- 2400
--- 2500

create table salary(
	id serial primary key,
	monthly_salary int not null
);

insert into salary(monthly_salary)
values (1000),
	   (1100),
	   (1200),
	   (1300),
	   (1400),
	   (1500),
	   (1600),
	   (1700),
	   (1800),
	   (1900),
	   (2000),
	   (2100),
	   (2200),
	   (2300),
	   (2400),
	   (2500);


select	* from salary;  



--3)Таблица employee_salary
--
--Создать таблицу employee_salary
--- id. Serial  primary key,
--- employee_id. Int, not null, unique
--- salary_id. Int, not null
--Наполнить таблицу employee_salary 40 строками:
--- в 10 строк из 40 вставить несуществующие employee_id

create table employee_salary(
	id serial primary key,
	employee_id int not null unique,
	salary_id int not null
	
);


insert into employee_salary(employee_id, salary_id)
values  (3,7),
	   (1,4),
	   (5,9),
	   (40,13),
	   (23,4),
	   (11,2),
	   (39,10),
	   (38,16),
	   (7,8),
	   (28,11),
	   (15,13),
	   (27,4),
	   (16,1),
	   (33,7),
	   (21,16),
	   (24,8),
	   (26,17),
	   (25,10),
	   (30,18),
	   (31,14),
	   (8,7),
	   (32,4),
	   (34,9),
	   (35,13),
	   (36,4),
	   (37,2),
	   (2,10),
	   (4,7),
	   (6,8),
	   (9,11),
	   (12,13),
	   (72,11),
	   (73,8),
	   (74,11),
	   (75,13),
	   (76,12),
	   (77,14),
	   (78,15),
	   (79,16),
	   (80,9),
	   (81,8),
	   (82,7);
   
--	  значения которых нет в связаных таблицах
	  
	  
select * from employee_salary;




--4)Таблица roles
--
--Создать таблицу roles
--- id. Serial  primary key,
--- role_name. int, not null, unique
--Поменять тип столба role_name с int на varchar(30)
--Наполнить таблицу roles 20 строками:





create table roles(
	id serial primary key,
	role_name int not null unique
);

alter table roles
alter column role_name type varchar(30);

insert into roles(role_name)
values ('Junior Python developer'),
	    ('Middle Python developer'),
	    ('Senior Python developer'),
	    ('Junior Java developer'),
	    ('Middle Java developer'),
	    ('Senior Java developer'),
	    ('Junior JavaScript developer'),
	    ('Middle JavaScript developer'),
	    ('Senior JavaScript developer'),
	    ('Junior Manual QA engineer'),
	    ('Middle Manual QA engineer'),
	    ('Senior Manual QA engineer'),
	    ('Project Manager'),
	    ('Designer'),
	    ('HR'),
	    ('CEO'),
	    ('Sales manager'),
	    ('Junior Automation QA engineer'),
	    ('Middle Automation QA engineer'),
	    ('Senior Automation QA engineer');


select * from roles;




Таблица roles_employee

--5)Создать таблицу roles_employee
--- id. Serial  primary key,
--- employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
--- role_id. Int, not null (внешний ключ для таблицы roles, поле id)
--Наполнить таблицу roles_employee 40 строками:




create table roles_employee(
	id serial primary key,
	employee_id int not null unique,
	role_id  int not null,
	foreign key (employee_id)
		references employees(id),
	foreign key (role_id)
		references roles(id)
);

insert into roles_employee(employee_id, role_id)
values (3,7),
	   (1,4),
	   (5,9),
	   (40,13),
	   (23,4),
	   (11,2),
	   (39,10),
	   (38,20),
	   (7,8),
	   (28,11),
	   (15,13),
	   (27,4),
	   (16,1),
	   (33,7),
	   (21,16),
	   (24,20),
	   (26,17),
	   (25,10),
	   (30,18),
	   (31,14),
	   (8,7),
	   (32,4),
	   (34,9),
	   (35,13),
	   (36,4),
	   (37,2),
	   (2,10),
	   (4,20),
	   (6,8),
	   (9,11),
	   (12,9),
	   (13,4),
	   (14,1),
	   (17,7),
	   (18,16),
	   (19,20),
	   (20,17),
	   (29,10),
	   (22,18),
	   (10,14);

--   TRUNCATE TABLE test RESTART IDENTITY;
	   
select * from roles_employee;