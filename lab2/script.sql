DROP TABLE lab2a;

CREATE TABLE lab2a (i int, r number(6,2), txt varchar2(20), when date);

INSERT INTO lab2a VALUES (1, 1.1, 'String 1',TO_DATE('01-Jan-2017', 'dd-mon-yyyy') );
INSERT INTO lab2a VALUES (2, 2.2, 'String 2',TO_DATE('02-Jan-2017', 'dd-mon-yyyy') );
INSERT INTO lab2a VALUES (3, 3.3, 'String 3',TO_DATE('03-Jan-2017', 'dd-mon-yyyy') );
INSERT INTO lab2a VALUES (4, 4.4, 'String 4',TO_DATE('04-Jan-2017', 'dd-mon-yyyy') );
INSERT INTO lab2a VALUES (5, 5.5, 'String 5',TO_DATE('05-Jan-2017', 'dd-mon-yyyy') );
INSERT INTO lab2a VALUES (6, 6.6, 'String 6',TO_DATE('06-Jan-2017', 'dd-mon-yyyy') );
INSERT INTO lab2a VALUES (7, 7.7, 'String 7',TO_DATE('07-Jan-2017', 'dd-mon-yyyy') );
INSERT INTO lab2a VALUES (8, 8.8, 'String 8',TO_DATE('08-Jan-2017', 'dd-mon-yyyy') );


COMMIT;
