#alter
use company;
alter table jobs add column test varchar(20);
select * from jobs;
alter table jobs drop column test;
alter table jobs modify column test varchar(12);
desc jobs;
alter table jobs rename column test to test1;
#alter table employees add constraint fk_2k
#foreign key(employee_id) references jobs(test);
#select
select * from employees limit 10 offset 3;
SELECT CURDATE(), NOW(), YEAR(hire_date), MONTHNAME(hire_date) FROM employees;
select count(*) as Num from employees group by department_id;
SELECT d.department_name, COUNT(*) AS Num
FROM employees e
JOIN departments d ON e.department_id = d.department_id
GROUP BY d.department_name;
SELECT first_name,
  CASE
    WHEN salary > 50000 THEN 'High'
    WHEN salary > 30000 THEN 'Medium'
    ELSE 'Low'
  END AS salary_level
FROM employees;
rename table dependent to depn;
update jobs set test1=1 where test1 is null;
set sql_safe_updates=0;
update jobs
set test1= case
	when test1=1 then 2
    when test1=3 then 5
    else 1000
    end;