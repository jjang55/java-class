select last_name || ', ' || job_id "Emp and Titel"
from employees;

select last_name, salary
from employees
where salary > 12000;

select last_name, hire_date
from employees
where hire_date like '2005%';

select last_name
from employees
where last_name like '_o%';

select last_name, salary, department_id
from employees
where salary between 5000 and 12000
and department_id in (20, 50);

select last_name, job_id, salary
from employees
where job_id like 'SA%'
and salary not in (2500, 3500);

select initcap(last_name), length(last_name)
from employees
where last_name like 'J%'
or last_name like 'A%'
or last_name like 'M%';

select last_name, last_day(hire_date)
from employees
where (sysdate - hire_date) / 365 >= 20;

select last_name, to_char(hire_date, 'YYYY.MM.DD'),
    to_char(next_day(add_months(hire_date, 3), 2), 'YYYY.MM.DD')
from employees;

select last_name, job_id, salary * 12
from employees;

select last_name, hire_date,
    case to_char(hire_date, 'Day') when 'Monday' then 1
        when 'Tuseday' then 2
        when 'Wdensday' then 3
        when 'Thusday' then 4
        when 'Friday' then 5
        when 'Satrday' then 6
        when 'Sunday' then 7
    end week
from employees
order by to_char(hire_date);

select last_name, hire_date, 
    case when to_char(hire_date) <= '2005/12/31' then '100만원'
    else '10만원'
    end
from employees;

select avg(nvl(commission_pct, 0))
from employees;

select count(*)
from employees e, employees m
where e.employee_id = m.employee_id;

select manager_id, 
    (select min(salary)
    from employees
    where 
from employees
where min(salary) > 6000

select sum(salary) = (select ;

select e.last_name, e.job_id, e.department_id, d.department_name, l.city
from employees e join departments d
on e.department_id = d.department_id
join locations l
on l.location_id = d.location_id
and city = 'Toronto';

select e.last_name, e.hire_date, m.last_name, m.hire_date
from employees e join employees m
on e.manager_id = m.employee_id
and e.hire_date < m.hire_date;

select c.last_name, c.hire_date
from employee a join employee c
