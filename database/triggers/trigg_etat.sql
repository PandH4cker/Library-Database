CREATE OR REPLACE TRIGGER TRIGG_ETAT 
BEFORE INSERT OR UPDATE OF NUMERO ON EXEMPLAIRES
BEGIN
  IF NOT UPDATING('etat') THEN
    raise_application_error(-20113, 'La colonne etat doit être également mise à jour ou insérée.');
  END IF;
END;