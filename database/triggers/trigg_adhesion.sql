create or replace TRIGGER TRIGG_ADHESION 
BEFORE INSERT ON EMPRUNTS FOR EACH ROW
DECLARE
    INVALID_DATE EXCEPTION;
BEGIN
  FOR record_membre IN (
    SELECT 
        *
    FROM 
        membres m
    WHERE
        m.numero = :new.membre
  )
  LOOP
    IF record_membre.finadhesion < sysdate THEN
        RAISE INVALID_DATE;
    END IF;
  END LOOP;
  EXCEPTION
        WHEN INVALID_DATE THEN
            raise_application_error(-20111, 'Fin adhesion non valide.');
END;