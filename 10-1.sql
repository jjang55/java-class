drop table hire_dates;

create table hire_dates(
id number(8),
hire_date date default sysdate);

select tname
from tab;

-- ����] drop table ��, �� ���� ���� �������, ������� ���ϰ�, ��ȸ�϶�.
select tname
from tab
where tname not like 'BIN%';

insert into hire_dates values(1, to_date('2025/12/21'));
insert into hire_dates values(2, null);
insert into hire_dates(id) values(3);

commit;

select *
from hire_dates;
------------------------

create user you identified by you;
grant connect, resource to you;

------------------------------------

select tname
from tab;

create table depts(
department_id number(3) constraint depts_deptid_pk primary key,
department_name varchar2(20));

desc user_constraints

select constraint_name, constraint_type, table_name
from user_constraints;