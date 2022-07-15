-- Single Function --

desc dual
select * from dual;

select lower('SQL Course') -- lower 소문자로 변경
from dual;

select upper('SQL Course') -- upper 대문자로 변경
from dual;

select initcap('SQL course') -- 각 단어의 첫글자를 대문자로 변경
from dual;

select last_name
from employees
where last_name = 'higgins'; -- data는 대소문자 구별

select last_name
from employees
where last_name = 'Higgins'; -- data는 대소문자 구별

select last_name
from employees
where lower(last_name) = 'higgins';

select concat('Hello', 'World') -- parameter를 붙여서 실행
from dual;

select substr('HelloWorld', 2, 5) -- 필요 부분을 때어냄 2 : 인덱스 5: 길이
from dual;

select substr('Hello', -1, 1) -- 뒤에서 글자를 뜯을경우 -로 index 계산
from dual;

select length('Hello') -- 글자 길이를 알아냄
from dual;

select instr('Hello', 'l') -- 처음 발견된 index를 알려줌 / sql은 index 1부터 시작
from dual;
select instr('Hello', 'w') -- 값이 없다면 0으로 출력
from dual;

select lpad(salary, 5, '*') -- 왼쪽에 특정문자 채우기
from employees;

select rpad(salary, 5, '*') -- 오른쪽에 특정문자 채우기
from employees;

select replace('JACK and JUE', 'J', 'BL') -- 글자를 대체하는 경우
from dual;

select trim('H' from 'Hello') -- 특정글자를 뜯어냄
from dual;
select trim('l' from 'Hello') -- 머리와 꼬리만 신경씀
from dual;
select trim(' ' from ' Hello ')
from dual;

-- 과제] 위 query에서 ' '가 trim 됐음을 눈으로 확인
select '|' || trim(' ' from ' Hello ') || '|'
from dual;
select trim(' Hello World ')
from dual;

select employee_id, concat(first_name, last_name) name,
    job_id, length(last_name), instr(last_name, 'a') "Contains 'a'?"
from employees
where substr(job_id, 4) = 'PROG';

-- 과제] 아래 문장에서, where 절을 like로 refactoring 하라.
select employee_id, concat(first_name, last_name) name,
    job_id, length(last_name), instr(last_name, 'a') "Contains 'a'?"
from employees
where job_id like '%PROG%';

-- 과제] 이름이 J나 A나 M으로 시작하는 사원들의 이름, 이름의 글자수를 조회하라.
--      이름은 첫글자는 대문자, 나머지는 소문자로 출력한다.
select initcap(last_name), length(last_name)
from employees
where last_name like 'J%' or
    last_name like 'A%' or
    last_name like 'M%';
---------------------------------

select round(45.926, 2) -- 반올림 (반올림대상, 소수점자리수)
from dual;

select trunc(45.926, 2) -- 버림 (반올림대상, 소수점자리수)
from dual;

select mod(1600, 300) -- 나머지 (나머지대상, 나누는수)
from dual;

select round(45.923, 0), round(45.923) -- 실수를 정수로 바꾸고싶을때 자리수없이도 가능
from dual;
select trunc(45.923, 0), trunc(45.923)
from dual;

select last_name, salary, salary - mod(salary, 10000)
from employees;

-- 과제] 사원들의 이름, 월급, 15.5% 인상된 월급(New Salary, 정수), 인상액(Increase)을 조회하라.
select last_name, salary, trunc(salary * 1.155) "New Salary",
    trunc(salary * 1.155) - salary "Increase"
from employees;
-----------------------------------------------------

select sysdate -- server의 시각
from dual;

select sysdate + 1 -- 다음날
from dual;

select sysdate - 1 -- 전날
from dual;

select sysdate - sysdate -- 날짜사이의 차이
from dual;

select last_name, sysdate - hire_date
from employees
where department_id = 90;

-- 과제] 90번 부서 사원들의 이름, 근속년수를 조회하라.
select last_name, trunc((sysdate - hire_date) / 365)
from employees
where department_id = 90;

select months_between('2022/12/31', '2021/12/31') -- 개월수 차이
from dual;

select add_months('2022/07/14', 1) -- n개월 이후 날짜
from dual;

select next_day('2022/07/14', 5) -- 해당날짜 후 요일 (일요일 = 1 부터 시작)
from dual;

select next_day('2022/07/14', 'thursday')
from dual;

select next_day('2022/07/14', 'thu')
from dual;

select last_day('2022/07/14') -- 해당 월의 말일
from dual;

-- 과제] 20년 이상 재직한 사원들의 이름, 첫 월급일을 조회하라.
--      월급은 매월 말일에 지급한다.
select last_name, last_day(hire_date)
from employees
where trunc((sysdate - hire_date) / 365 ) >= 20;
-- 다른코드
select last_name, last_day(hire_date)
from employees
where months_between(sysdate, hire_date) >= 12 * 20;

-- 과제] 사원들의 이름, 월급그래프를 조회하라.
--      그래프는 $1000당 * 하나를 표시한다.
select last_name, rpad(' ', salary / 1000 + 1, '*')
from employees;

-- 과제] 위 그래프를 월급 기준 내림차순 정렬하라.
select last_name, rpad(' ', salary / 1000 + 1, '*')
from employees
order by 2 desc;