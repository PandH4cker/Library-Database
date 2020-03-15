UPDATE emprunts
SET
    etat = (
        SELECT
            x.etat
        FROM
            (
                SELECT
                    emprunt,
                    etat
                FROM
                    (
                        SELECT
                            x.emprunt,
                            x.numberof,
                            (
                                CASE
                                    WHEN x.numberof = 0 THEN
                                        'RE'
                                    ELSE
                                        'EC'
                                END
                            ) AS etat
                        FROM
                            (
                                SELECT
                                    emprunt,
                                    SUM(
                                        CASE
                                            WHEN d.rendule IS NULL THEN
                                                1
                                            ELSE
                                                0
                                        END
                                    ) AS numberof
                                FROM
                                    detailsemprunts d
                                GROUP BY
                                    emprunt
                            ) x
                    ) x
            ) x
        WHERE
            x.emprunt = emprunts.numero
    );