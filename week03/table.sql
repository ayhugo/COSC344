DROP TABLE lab2a;

CREATE TABLE lab2a (i int, r number(6,2), txt varchar2(20), when date);
INSERT INTO lab2a VALUES (1, 1.1, 'string 1', TO_DATE('1/1/1111', 'DD/MM/YYYY'));
INSERT INTO lab2a VALUES (2, 2.2, 'string 2', TO_DATE('2/1/1111', 'DD/MM/YYYY'));
INSERT INTO lab2a VALUES (3, 3.3, 'string 3', TO_DATE('3/1/1111', 'DD/MM/YYYY'));
INSERT INTO lab2a VALUES (4, 4.4, 'string 4', TO_DATE('4/1/1111', 'DD/MM/YYYY'));
INSERT INTO lab2a VALUES (5, 5.5, 'string 5', TO_DATE('5/1/1111', 'DD/MM/YYYY'));
INSERT INTO lab2a VALUES (6, 6.6, 'string 6', TO_DATE('6/1/1111', 'DD/MM/YYYY'));
INSERT INTO lab2a VALUES (7, 7.7, 'string 7', TO_DATE('7/1/1111', 'DD/MM/YYYY'));
INSERT INTO lab2a VALUES (8, 8.8, 'string 8', TO_DATE('8/1/1111', 'DD/MM/YYYY'));
INSERT INTO lab2a VALUES (9, 9.9, 'string 9', TO_DATE('9/1/1111', 'DD/MM/YYYY'));
INSERT INTO lab2a VALUES (10, 10.1, 'string 10', TO_DATE('10/1/1111', 'DD/MM/YYYY'));


COMMIT;
