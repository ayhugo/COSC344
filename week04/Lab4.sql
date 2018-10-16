DESCRIBE employee;
SELECT dependent_name FROM dependent WHERE relationship='Spouse' OR relationship='Daughter';
SELECT pname FROM project WHERE plocation is NULL;
/* Should be  SELECT fname, lname, dname FROM employee, department WHERE mgrssn=ssn; INNER JOIN is quite powerfull and this way is more simple*/
SELECT fname, lname, dname FROM employee INNER JOIN department ON mgrssn=ssn;
SELECT DISTINCT fname, lname FROM employee INNER JOIN works_on ON essn = ssn WHERE hours < 18;
SELECT fname, lname FROM employee WHERE lname LIKE 'W%';
SELECT sname FROM salespeople WHERE city IN ('San Jose', 'Barcelona');
SELECT DISTINCT cname, amt FROM customers INNER JOIN orders ON customers.cnum = orders.cnum WHERE amt BETWEEN 1500 AND 5000;
SELECT COUNT(*) FROM orders;
SELECT AVG(amt) FROM orders;
