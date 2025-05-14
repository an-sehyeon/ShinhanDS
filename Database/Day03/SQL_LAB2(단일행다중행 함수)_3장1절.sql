========================================
		단일행 함수
========================================

1. 이름이 'adam' 인 직원의 급여와 입사일을 조회하시오.
select 
from employees
where first_name = initcap('adam');


2. 나라 명이 'united states of america' 인 나라의 국가 코드를 조회하시오.
select country_id
from countries
where lower(country_name) = 'united states of america';


3. 'Adam의 입사일은 95/11/02 이고, 급여는 7000 입니다.' 이런 식으로 직원
정보를 조회하시오.
-- concat(a,b)
select concat(first_name,'의 입사일은 ')||hire_date||' 이고, 급여는 '||salary||' 입니다.'
from employees;




4. 이름이 5글자 이하인 직원들의 이름, 급여, 입사일을 조회하시오.
select first_name, salary, hire_date
from employees
where length(first_name) <= 5;



5.2006년도에 입사한 직원의 이름, 입사일을 조회하시오.
select first_name, salary, hire_date
from employees
where hire_date between '2006/01/01' and '2006/12/31';
--where  to_cahr(hire_data,'yyyy') = 2006;;





6. 7년 이상 장기 근속한 직원들의 이름, 입사일, 급여, 근무년차를 조회하시오.
select first_name, hire_date, salary, months_between(sysdate, hire_date)/12 년차
from employees
where months_between(sysdate, hire_date)/12 >= 20
;

=============Group 함수==================


7. 각 부서별 인원수를 조회하되 인원수가 5명 이상인 부서만 출력되도록 하시오.
select department_id, count(*)
from employees
group by department_id
having count(*) >= 5
;





8. 각 부서별 최대급여와 최소급여를 조회하시오.
   단, 최대급여와 최소급여가 같은 부서는 직원이 한명일 가능성이 높기때문에 
   조회결과에서 제외시킨다.
select department_id, max(salary), min(salary)
from employees
group by department_id
having max(salary) <> min(salary)
;



   
9. 부서가 50, 80, 110 번인 직원들 중에서 급여를 5000 이상 24000 이하를 받는
   직원들을 대상으로 부서별 평균 급여를 조회하시오.
   다, 평균급여가 8000 이상인 부서만 출력되어야 하며, 출력결과를 평균급여가 높은
   부서면저 출력되도록 해야 한다.
select department_id, round(avg(salary)) "평균"
from employees
where department_id in(50,80,110)
and salary between 5000 and 24000
group by department_id
having avg(salary) >= 8000
order by  평균 desc;




