CREATE OR REPLACE PROCEDURE UPDATE_EXEMPLAIRES IS 
BEGIN
  FOR record_isbn IN (
    SELECT 
        SUM(d.exemplaire) AS numberof,
        d.isbn
    FROM
        detailsemprunts d
    GROUP BY
        d.isbn
    ORDER BY
        d.isbn
  )
  LOOP
    UPDATE EXEMPLAIRES
    SET ETAT = 
                CASE
                    WHEN record_isbn.numberof <= 10 THEN 'NE'
                    WHEN record_isbn.numberof >= 11 AND record_isbn.numberof <= 25 THEN 'BO'
                    WHEN record_isbn.numberof >= 26 AND record_isbn.numberof <= 40 THEN 'MO'
                    ELSE 'MA'
                END
    WHERE record_isbn.isbn = isbn;
  END LOOP;
END UPDATE_EXEMPLAIRES;