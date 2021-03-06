SELECT DISTINCT s.snum, sname FROM salespeople s, customers couter WHERE EXISTS ( SELECT * FROM customers cinner WHERE cinner.snum=couter.snum AND cinner.cnum <> couter.cnum) AND s.snum=couter.snum;
/* was easier to go select snum, sname from salespeople s where (select count(*) from customers c where s.snum=c.snum)>1;
 */
SELECT * FROM orders oouter WHERE amt > (SELECT avg(amt) FROM orders oinner WHERE oouter.cnum = oinner.cnum);

SELECT fname, lname FROM employee WHERE NOT EXISTS (SELECT * FROM dependent WHERE ssn=essn);

INSERT INTO department VALUES
('TempDept', 6, 123456789,
TO_DATE('18-Jul-2002', 'DD-MON-YYYY'));
INSERT INTO project VALUES
('TempProject', 50, 'Houston', 6);

SELECT pno FROM works_on, employee WHERE lname = 'Smith' AND works_on.essn = employee.ssn UNION SELECT pnumber FROM department, project, employee WHERE lname = 'Smith' AND project.dnum = dnumber AND mgrssn = employee.ssn;

UPDATE employee SET salary = salary + salary*.10 WHERE lname <> 'Borg';

SELECT lname, salary FROM employee;

DROP TABLE hou_emp;

CREATE TABLE hou_emp
AS (SELECT * FROM employee WHERE address LIKE '%Houston%');

SELECT * FROM hou_emp;
DROP TABLE emp_dep;

CREATE TABLE emp_dep
	AS (SELECT e.fname, e.lname, d.dependent_name, d.sex, d.bdate
	FROM employee e, dependent d
	WHERE d.essn = e.ssn) ORDER BY fname;


SELECT * FROM emp_dep;

