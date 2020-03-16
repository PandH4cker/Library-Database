DECLARE
    seq_id  INTEGER;
BEGIN
    SELECT 
        MAX(e.numero) + 1
    INTO
        seq_id
    FROM
        EMPRUNTS E;
    
    EXECUTE IMMEDIATE
        'CREATE SEQUENCE SEQ_EMPRUNTS INCREMENT BY 1 START WITH ' || seq_id;
END;