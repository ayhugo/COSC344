SELECT DISTINCT fname, lname FROM employee INNER JOIN works_on ON essn = ssn WHERE hours < 18;
