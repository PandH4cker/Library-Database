CREATE OR REPLACE FUNCTION FCT_NBOUVNONRENDUS(
    numeroMembre IN emprunts.membre%TYPE
) RETURN NUMBER IS 
BEGIN
  FOR record_nonrendus IN (
    SELECT 
        COUNT(*) AS nonrendus
    FROM 
        detailsemprunts d
    WHERE d.emprunt IN (SELECT 
                            e.numero
                        FROM 
                            EMPRUNTS E
                        WHERE 
                            e.membre = numeroMembre AND etat = 'EC')
          AND d.rendule IS NULL
  )
  LOOP
    RETURN record_nonrendus.nonrendus;
  END LOOP;
END FCT_NBOUVNONRENDUS;