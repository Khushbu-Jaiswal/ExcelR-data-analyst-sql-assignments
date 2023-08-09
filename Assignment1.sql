SELECT * FROM assignment.suppliers;
alter table suppliers modify supplier_name varchar(30) unique not null;
desc emp;
alter table emp
add deptno varchar(50);
ALTER TABLE emp
  RENAME COLUMN emp_no to emp_id;
desc emp;
UPDATE emp SET deptno = 
case
when emp_id % 2 = 0 THEN 20
when emp_id % 3 = 0 THEN 30
when emp_id % 4 = 0 THEN 40
when emp_id % 5 = 0 THEN 50
ELSE  10
END;
select * from employee;
create unique index empid on employee (empid);
ALTER TABLE emp RENAME COLUMN emp_id to emp_no;

CREATE VIEW emp_sal
as
select emp_no, 
       CONCAT( first_name, ' ', last_name) as Employee,
       salary
  from emp
    order by salary desc;

select *
  from emp_sal;
  desc emp_sal;
  