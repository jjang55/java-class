-- Single Function --

desc dual
select * from dual;

select lower('SQL Course') -- lower �ҹ��ڷ� ����
from dual;

select upper('SQL Course') -- upper �빮�ڷ� ����
from dual;

select initcap('SQL course') -- �� �ܾ��� ù���ڸ� �빮�ڷ� ����
from dual;

select last_name
from employees
where last_name = 'higgins'; -- data�� ��ҹ��� ����

select last_name
from employees
where last_name = 'Higgins'; -- data�� ��ҹ��� ����

select last_name
from employees
where lower(last_name) = 'higgins';

select concat('Hello', 'World') -- parameter�� �ٿ��� ����
from dual;

select substr('HelloWorld', 2, 5) -- �ʿ� �κ��� ��� 2 : �ε��� 5: ����
from dual;

select substr('Hello', -1, 1) -- �ڿ��� ���ڸ� ������� -�� index ���
from dual;

select length('Hello') -- ���� ���̸� �˾Ƴ�
from dual;

select instr('Hello', 'l') -- ó�� �߰ߵ� index�� �˷��� / sql�� index 1���� ����
from dual;
select instr('Hello', 'w') -- ���� ���ٸ� 0���� ���
from dual;

select lpad(salary, 5, '*') -- ���ʿ� Ư������ ä���
from employees;

select rpad(salary, 5, '*') -- �����ʿ� Ư������ ä���
from employees;

select replace('JACK and JUE', 'J', 'BL') -- ���ڸ� ��ü�ϴ� ���
from dual;

select trim('H' from 'Hello') -- Ư�����ڸ� ��
from dual;
select trim('l' from 'Hello') -- �Ӹ��� ������ �Ű澸
from dual;
select trim(' ' from ' Hello ')
from dual;

-- ����] �� query���� ' '�� trim ������ ������ Ȯ��
select '|' || trim(' ' from ' Hello ') || '|'
from dual;
select trim(' Hello World ')
from dual;

select employee_id, concat(first_name, last_name) name,
    job_id, length(last_name), instr(last_name, 'a') "Contains 'a'?"
from employees
where substr(job_id, 4) = 'PROG';

-- ����] �Ʒ� ���忡��, where ���� like�� refactoring �϶�.
select employee_id, concat(first_name, last_name) name,
    job_id, length(last_name), instr(last_name, 'a') "Contains 'a'?"
from employees
where job_id like '%PROG%';

-- ����] �̸��� J�� A�� M���� �����ϴ� ������� �̸�, �̸��� ���ڼ��� ��ȸ�϶�.
--      �̸��� ù���ڴ� �빮��, �������� �ҹ��ڷ� ����Ѵ�.
select initcap(last_name), length(last_name)
from employees
where last_name like 'J%' or
    last_name like 'A%' or
    last_name like 'M%';
---------------------------------

select round(45.926, 2) -- �ݿø� (�ݿø����, �Ҽ����ڸ���)
from dual;

select trunc(45.926, 2) -- ���� (�ݿø����, �Ҽ����ڸ���)
from dual;

select mod(1600, 300) -- ������ (���������, �����¼�)
from dual;

select round(45.923, 0), round(45.923) -- �Ǽ��� ������ �ٲٰ������ �ڸ������̵� ����
from dual;
select trunc(45.923, 0), trunc(45.923)
from dual;

select last_name, salary, salary - mod(salary, 10000)
from employees;

-- ����] ������� �̸�, ����, 15.5% �λ�� ����(New Salary, ����), �λ��(Increase)�� ��ȸ�϶�.
select last_name, salary, trunc(salary * 1.155) "New Salary",
    trunc(salary * 1.155) - salary "Increase"
from employees;
-----------------------------------------------------

select sysdate -- server�� �ð�
from dual;

select sysdate + 1 -- ������
from dual;

select sysdate - 1 -- ����
from dual;

select sysdate - sysdate -- ��¥������ ����
from dual;

select last_name, sysdate - hire_date
from employees
where department_id = 90;

-- ����] 90�� �μ� ������� �̸�, �ټӳ���� ��ȸ�϶�.
select last_name, trunc((sysdate - hire_date) / 365)
from employees
where department_id = 90;

select months_between('2022/12/31', '2021/12/31') -- ������ ����
from dual;

select add_months('2022/07/14', 1) -- n���� ���� ��¥
from dual;

select next_day('2022/07/14', 5) -- �ش糯¥ �� ���� (�Ͽ��� = 1 ���� ����)
from dual;

select next_day('2022/07/14', 'thursday')
from dual;

select next_day('2022/07/14', 'thu')
from dual;

select last_day('2022/07/14') -- �ش� ���� ����
from dual;

-- ����] 20�� �̻� ������ ������� �̸�, ù �������� ��ȸ�϶�.
--      ������ �ſ� ���Ͽ� �����Ѵ�.
select last_name, last_day(hire_date)
from employees
where trunc((sysdate - hire_date) / 365 ) >= 20;
-- �ٸ��ڵ�
select last_name, last_day(hire_date)
from employees
where months_between(sysdate, hire_date) >= 12 * 20;

-- ����] ������� �̸�, ���ޱ׷����� ��ȸ�϶�.
--      �׷����� $1000�� * �ϳ��� ǥ���Ѵ�.
select last_name, rpad(' ', salary / 1000 + 1, '*')
from employees;

-- ����] �� �׷����� ���� ���� �������� �����϶�.
select last_name, rpad(' ', salary / 1000 + 1, '*')
from employees
order by 2 desc;