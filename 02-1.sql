-- Where --

select employee_id, last_name, department_id
from employees
where department_id = 90;

-- ����] 176��� ����� ���, �̸��� �μ���ȣ�� ��ȸ�϶�.
select employee_id, last_name, department_id
from employees
where employee_id = 176;

select employee_id, last_name, department_id
from employees
where last_name = 'Whalen';

select employee_id, last_name, hire_date
from employees
where hire_date = '2008/02/06';

select last_name, salary
from employees
where salary <= 3000;

-- ����] $12,000 �̻� ���� ������� �̸�, ������ ��ȸ�϶�.
select last_name, salary
from employees
where salary >= 12000;

select last_name, job_id
from employees
where job_id != 'IT_PROG';
-------------------------------

select last_name, salary
from employees
where salary between 2500 and 3500; -- �̻� ����

select first_name, last_name, job_id, salary
from employees
where last_name between 'King' and 'Smith';

-- ����] 'King' ����� first name, last name, ����, ������ ��ȸ�϶�.
select first_name, last_name, job_id, salary
from employees
where last_name = 'King'; -- �����ʹ� ��ҹ��� ����!

select last_name, hire_date
from employees
where hire_date between '2002/01/01' and '2002/12/31';
-------------------------------------------------

select employee_id, last_name, manager_id
from employees
where manager_id in (100, 101, 201);

select employee_id, last_name, manager_id
from employees
where manager_id = 100 or
    manager_id = 101 or
    manager_id = 201;
    
select employee_id, last_name
from employees
where last_name in ('Hartstein' , 'Vargas');

select last_name, hire_date
from employees
where hire_date in ('2003/06/17', '2005/09/21');
-----------------------------------------------

select first_name
from employees
where first_name like 'S%'; -- like�� �񱳰��� ��� ����

select first_name
from employees
where first_name like '%r';

-- ����] first_name�� s�� ���Ե� ������� ��ȸ�϶�.
select first_name
from employees
where first_name like '%s%';

-- ����] 2005�⿡ �Ի��� ������� �̸�, �Ի����� ��ȸ�϶�.
select last_name, hire_date
from employees
where hire_date like '2005%'; -- %�� wildcard�̰� 0���̻��� ���Ѵ�

select last_name
from employees
where last_name like 'K___'; -- _�� ���� 1���ڸ� ���Ѵ�

-- ����] �̸��� �ι�° ���ڰ� o�� ����� �̸��� ��ȸ�϶�.
select last_name
from employees
where last_name like '_o%';

select last_name, job_id
from employees
where job_id like 'I_\_%' escape '\'; -- Ư�����ڸ� �Ϲݹ��ڷ� �����ϴ� escape���ڴ� ��������

select last_name, job_id
from employees
where job_id like 'IT[_%' escape'[';

-- ����] ������ _R�� �����̵� ������� �̸�, ������ ��ȸ�϶�.
select last_name, job_id
from employees
where job_id like '%\_R%' escape '\';
--------------------------------------

select employee_id, last_name, manager_id
from employees;

select last_name, manager_id
from employees
where manager_id = null; -- ����) ||���̱� �����ڴ� null�� null������ ������������

select last_name, manager_id
from employees
where manager_id is null; -- is null(�� ��Ʈ) : null���� ã����� ���(null�� ���� �ƴ�)
                          -- where ���� true�϶� where �� ����
-----------------------------------------------------------

select last_name, job_id, salary
from employees
where salary >= 5000 and job_id like '%IT%';

select last_name, job_id, salary
from employees
where salary >= 5000 or job_id like '%IT%';

-- ����] ������ $5000 �̻� 12000 �����̴�. �׸���
--      20���̳� 50�� �μ����� ���ϴ� ����� �̸�, ����, �μ���ȣ�� ��ȸ�϶�.
select last_name, salary, department_id
from employees
where 5000 <= salary and salary <= 12000 and (department_id in (20, 50));
-- �ٸ��ڵ�
select last_name, salary, department_id
from employees
where (salary between 5000 and 12000) and 
    department_id in (20, 50);
    
-- ����] �̸��� a�� e�� ���Ե� ������� �̸��� ��ȸ�϶�.
select last_name
from employees
where last_name like '%a%' and 
    last_name like '%e%';
------------------------------------------------

select last_name, job_id
from employees
where job_id not in ('IT_PROG', 'SA_REP'); -- not : ���ϴ� ���� ������

select last_name, salary
from employees
where salary not between 10000 and 15000;

select last_name, job_id
from employees
where job_id not like '%IT%';

select last_name, job_id
from employees
where commission_pct is not null;

--����] ������ 20000�޷� �̻� �޴�, ���� �� ������� �̸�, ������ ��ȸ�϶�.
select last_name, salary
from employees
where not (salary >= 20000 and manager_id is null);

-- ����] ������ �����̴�. �׸���,
--      ������ $2500, $3500�� �ƴ�, ������� �̸�, ����, ������ ��ȸ�϶�.
select last_name, job_id, salary
from employees
where job_id like '%SA%' and 
    not (salary = 2500 or salary = 3500);
-- �ٸ��ڵ�
select last_name, job_id, salary
from employees
where job_id like 'SA%' and
    salary not in (2500, 3500);