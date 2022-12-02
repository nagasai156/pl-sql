--example 1

DECLARE 
a NUMBER :=10;
BEGIN
dbms_output.put_line(‘Program started.' );
IF( a > 100 ) THEN
dbms_output.put_line('a is greater than 100'); 
END IF;
dbms_output.put_line(‘Program completed.');
END;

--example 2

DECLARE 
a CHAR(1) :=’u’;
BEGIN
IF UPPER(a) in ('A’,'E','I','0','U' ) THEN 
dbms_output.put_line(‘The character is in English Vowels');
END IF;
END;

--example 3

DECLARE 
a NUMBER:=11;
BEGIN
dbms_output.put_line (‘Program started');
IF( mod(a,2)=0) THEN 
dbms_output.put_line('a is even number' ); 
ELSE
dbms_output.put_line('a is odd number1); 
END IF;
dbms_output.put_line (‘Program completed.’);
END;


--example 4

DECLARE
mark NUMBER :=55;
BEGIN
dbms_output.put_line(‘Program started.’ );
IF( mark >= 70) THEN 
dbms_output.put_line(‘Grade A’);
ELSIF(mark >= 40 AND mark < 70) THEN
dbms_output.put_line(‘Grade B'); 
ELSIF(mark >=35 AND mark < 40) THEN
dbms_output.put_line(‘Grade C’);
END IF;
dbms_output.put_line(‘Program completed.’); 
END;

