SET serveroutput ON SIZE 1000000;
DECLARE
  TYPE t_name IS RECORD(
    first_name employees.first_name%TYPE,
    last_name employees.last_name%TYPE
  );
  r_name      t_name;
  r_name2     t_name;
  r_name_null t_name;
  n_emp_id employees.employee_id%TYPE := 200;
BEGIN
  -- assign employee's infomation to record
  SELECT first_name,
         last_name
  INTO r_name
  FROM employees
  WHERE employee_id = n_emp_id;

 
  r_name2 := r_name;
 
  DBMS_OUTPUT.PUT_LINE(r_name2.first_name || ',' || r_name2.last_name);

  
  r_name2 := r_name_null; 


  IF r_name2.first_name IS NULL AND
     r_name2.last_name IS NULL THEN
    DBMS_OUTPUT.PUT_LINE('Record r_name2 is NULL');
  END IF;

END;
/