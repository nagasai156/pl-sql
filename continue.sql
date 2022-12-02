--example 1

BEGIN
  FOR n_index IN 1 .. 10
  LOOP
    -- skip odd numbers
    IF MOD( n_index, 2 ) = 1 THEN
      CONTINUE;
    END IF;
    DBMS_OUTPUT.PUT_LINE( n_index );
  END LOOP;
END;


--example 2
BEGIN
  FOR n_index IN 1 .. 10
  LOOP
    -- skip even numbers
    CONTINUE
  WHEN MOD( n_index, 2 ) = 0;
    DBMS_OUTPUT.PUT_LINE( n_index );
  END LOOP;
END;


--example 3
DECLARE 
   a number(2) := 10; 
BEGIN 
   -- while loop execution  
   WHILE a < 20 LOOP 
      dbms_output.put_line ('value of a: ' || a); 
      a := a + 1; 
      IF a = 15 THEN 
         -- skip the loop using the CONTINUE statement 
         a := a + 1; 
         CONTINUE; 
      END IF; 
   END LOOP; 
END; 
/ 