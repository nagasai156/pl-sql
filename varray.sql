DECLARE
    TYPE t_name_type IS VARRAY(2) 
        OF VARCHAR2(20) NOT NULL;
    t_names t_name_type  := t_name_type('John','Jane');
    t_enames t_name_type := t_name_type();
BEGIN
    dbms_output.put_line("The number of elements in t_enames " || t_enames.COUNT);
    
   
    dbms_output.put_line("The number of elements in t_names " || t_names.COUNT);
END;
/


DECLARE
    TYPE r_customer_type IS RECORD(
        customer_name customers.NAME%TYPE,
        credit_limit customers.credit_limit%TYPE
    ); 
    
    TYPE t_customer_type IS VARRAY(2) 
        OF r_customer_type;

    t_customers t_customer_type := t_customer_type();
BEGIN
    t_customers.EXTEND;
    t_customers(t_customers.LAST).customer_name := 'ABC Corp';
    t_customers(t_customers.LAST).credit_limit  := 10000;
    
    t_customers.EXTEND;
    t_customers(t_customers.LAST).customer_name := 'XYZ Inc';
    t_customers(t_customers.LAST).credit_limit  := 20000;
    
    dbms_output.put_line('The number of customers is ' || t_customers.COUNT);
END;
/
