use employee;
select distinct salary from employees;
select age as employee_age, salary as employee_salary from employees;
select *  from employees
where salary > 50000 and hire_date < '2016-01-01';

select * from employees where designation is null;

update employees
set designation = 'Data scientist'
where designation is null;

select * from employees
order by department_id asc, salary desc;

select * from employees
where year(hire_date)=2018
order by hire_date
limit 5;

SELECT SUM(E.SALARY) AS Total_Finance_Salary
FROM EMPLOYEES E
JOIN DEPARTMENTS D 
ON E.DEPARTMENT_ID = D.DEPARTMENT_ID
WHERE D.DEPARTMENT_NAME = 'Finance';

select min(age) as Minimum_Age from employees;

select l.location, max(e.salary) as max_salary
from employees e
join location l on e.location_id = l.location_id
group by l.location;

select designation,avg(salary) as Average_Salary
from employees
where designation like '%Analyst%'
group by designation;

select d.department_name,count(e.employee_id) as Employee_Count
from departments d
left join employees e on d.department_id=e.department_id
group by d.department_id,d.department_name
having count(e.employee_id)<3;

select l.location,avg(e.age) as Average_Age from employees e
join location l on e.location_id = l.location_id
where e.gender = 'f'
group by l.location
having avg(e.age) < 30;

SELECT E.EMPLOYEE_NAME, E.DESIGNATION, D.DEPARTMENT_NAME
FROM EMPLOYEES E
INNER JOIN DEPARTMENTS D ON E.DEPARTMENT_ID = D.DEPARTMENT_ID;

SELECT D.DEPARTMENT_NAME, COUNT(E.EMPLOYEE_ID) AS Total_Employees
FROM DEPARTMENTS D
LEFT JOIN EMPLOYEES E ON D.DEPARTMENT_ID = E.DEPARTMENT_ID
GROUP BY D.DEPARTMENT_ID, D.DEPARTMENT_NAME;

SELECT L.LOCATION, E.EMPLOYEE_NAME
FROM EMPLOYEES E
RIGHT JOIN LOCATION L ON E.LOCATION_ID = L.LOCATION_ID;