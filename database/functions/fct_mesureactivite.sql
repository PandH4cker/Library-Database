CREATE OR REPLACE FUNCTION FCT_MESUREACTIVITE(
    periode NUMBER
) RETURN NUMBER IS 
maxEmprunts NUMBER;
numeroMembre NUMBER;
BEGIN
  maxEmprunts := 0;
  numeroMembre := 0;
  FOR record_membre IN (
    SELECT
        e.membre
    FROM
        emprunts e
    GROUP BY
        e.membre
    ORDER BY
        e.membre
  )
  LOOP
    FOR record_date IN (
        SELECT
            e.creele
        FROM
            emprunts e
        WHERE e.membre = record_membre.membre
    )
    LOOP
       FOR record_max IN (
            SELECT
                SUM(d.exemplaire) as maxEmprunts
            FROM
                detailsemprunts d
            WHERE
                d.emprunt IN (
                    SELECT
                        e.numero
                    FROM 
                        emprunts e
                    WHERE
                        e.creele BETWEEN record_date.creele AND ADD_MONTHS(record_date.creele, periode)
                        AND e.membre = record_membre.membre
                )
       )
       LOOP
        IF maxEmprunts < record_max.maxEmprunts THEN
            maxEmprunts := record_max.maxEmprunts;
            numeroMembre := record_membre.membre;
        END IF;
       END LOOP;
    END LOOP;
  END LOOP;
  RETURN numeroMembre;
END FCT_MESUREACTIVITE;