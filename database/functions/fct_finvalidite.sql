CREATE OR REPLACE FUNCTION FCT_FINVALIDITE(
    mnumero membres.numero%TYPE
) RETURN DATE IS
BEGIN
    FOR record_date IN (
        SELECT (m.finadhesion - 14) AS date_limite
        FROM membres m
        WHERE m.numero = mnumero
    )
    LOOP
        RETURN record_date.date_limite;
    END LOOP;
END FCT_FINVALIDITE;