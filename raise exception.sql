DECLARE
    e_credit_too_high EXCEPTION;
    PRAGMA exception_init( e_credit_too_high, -20001 );
    l_max_credit customers.credit_limit%TYPE;
    l_customer_id customers.customer_id%TYPE := &customer_id;
    l_credit customers.credit_limit%TYPE := &credit_limit;
BEGIN
    SELECT MAX(credit_limit) 
    INTO l_max_credit
    FROM customers;
    
    IF l_credit > l_max_credit THEN 
        RAISE e_credit_too_high;
    END IF;
    
    UPDATE customers 
    SET credit_limit = l_credit
    WHERE customer_id = l_customer_id;
    
    COMMIT;
END;
/

DECLARE
    l_customer_id customers.customer_id%TYPE := &customer_id;
BEGIN
    IF l_customer_id < 0 THEN
        RAISE invalid_number;
    END IF;
END;
/

DECLARE
    e_credit_too_high EXCEPTION;
    PRAGMA exception_init( e_credit_too_high, -20001 );
    l_max_credit customers.credit_limit%TYPE;
    l_customer_id customers.customer_id%TYPE := &customer_id;
    l_credit customers.credit_limit%TYPE     := &credit_limit;
BEGIN
    BEGIN
        -- get the max credit limit
        SELECT MAX(credit_limit) 
        INTO l_max_credit
        FROM customers;
        
        IF l_credit > l_max_credit THEN 
            RAISE e_credit_too_high;
        END IF;
        EXCEPTION
            WHEN e_credit_too_high THEN
                dbms_output.put_line('The credit is too high' || l_credit);
                RAISE; 
    END;
EXCEPTION
    WHEN e_credit_too_high THEN
        
        SELECT avg(credit_limit) 
        into l_credit
        from customers;
        
        
        dbms_output.put_line('Adjusted credit to ' || l_credit);
    
      
        UPDATE customers 
        SET credit_limit = l_credit
        WHERE customer_id = l_customer_id;
   
        COMMIT;
END;
/

SELECT * FROM customers 
WHERE customer_id = 100;