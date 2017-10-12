SELECT DISTINCT fname, lname,ssn,essn, hours FROM employee INNER JOIN works_on ON ssn=essn WHERE hours < 18;
