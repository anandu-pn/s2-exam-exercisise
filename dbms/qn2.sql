use company;
select country_name from countries;
select email,phone_number from employees;
select hire_date from employees where last_name in ("Grant","Whalen");
select concat(emp.first_name," ",emp.last_name) as "Shipping employees"
from employees as emp
join jobs as j
on emp.job_id=j.job_id where j.job_title="Shipping Clerk";
 select concat(first_name," ",last_name) as Employee_Name, department_id from 
employees where department_id="8";
select department_name from departments order by department_name desc;
select concat(first_name," ",last_name) as Name from employees where last_name like "k%";
select concat(first_name," ",last_name) as Name from employees where year(hire_date) between 1995 and 1997;
select job_title from jobs where max_salary<=5000;
select lower(email) as Email from employees;
select concat(first_name," ",last_name) as Name from employees where year(hire_date)=1995;
insert into employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id,commissions)
values(207,'Paul','Newton', 'paul.newton@sqltutorial.org','585.123.4567','1987-07-17',2,12000.00,101,11,null);
select * from employees; 
alter table employees drop foreign key employees_ibfk_2;
alter table employees
add constraint lbfk2 foreign key(department_id) references departments(department_id) on delete cascade;
delete from departments where department_name="shipping";
set sql_safe_updates=0;

ALTER TABLE employees 
RENAME COLUMN first_name TO full_name;
select * from employees where hire_date > "1998-01-01" order by first_name;
SELECT employee_id, first_name, hire_date, 
       floor(TIMESTAMPDIFF(month, hire_date, CURDATE())/12) AS ExperienceYears
FROM employees;
