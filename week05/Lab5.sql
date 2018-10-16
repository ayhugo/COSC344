SELECT snum, MAX(amt) FROM orders GROUP BY snum ORDER BY snum;

SELECT snum, MAX(amt) FROM orders GROUP BY snum having max(amt) > 3000;

SELECT fname, lname, salary FROM employee ORDER BY salary, lname;

SELECT orders.onum, customers.cname, customers.cnum, salespeople.snum FROM customers, salespeople, orders WHERE NOT salespeople.city = customers.city  AND customers.cnum = orders.cnum AND customers.snum = salespeople.snum;

SELECT cname, amt FROM customers, orders  WHERE amt = (SELECT DISTINCT MAX(amt) FROM orders) AND customers.cnum = orders.cnum;

SELECT * FROM orders WHERE amt > ALL(SELECT AVG(amt) FROM orders WHERE odate = TO_DATE('03-10-1990' , 'dd-mm-yyyy'));

SELECT * FROM orders WHERE snum = (SELECT snum FROM salespeople WHERE city IN ('London') AND orders.snum = salespeople.snum);
