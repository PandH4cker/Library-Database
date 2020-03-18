create or replace TRIGGER TRIGG_UPDATE_EMPRUNTS 
BEFORE UPDATE OF membre ON EMPRUNTS
FOR EACH ROW
BEGIN
  IF UPDATING('membre') THEN
    raise_application_error(-20112, 'Modification du membre non accepté');
  END IF;
END;