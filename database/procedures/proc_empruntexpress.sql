create or replace PROCEDURE PROC_EMPRUNTEXPRESS(
    numeroMembre IN emprunts.membre%TYPE,
    isbn IN detailsemprunts.isbn%TYPE,
    numero IN detailsemprunts.numero%TYPE
) IS
numeroEmprunt INTEGER;
BEGIN
  numeroEmprunt := SEQ_EMPRUNTS.nextval;
  INSERT INTO EMPRUNTS(numero, membre, creele) VALUES(numeroEmprunt, numeroMembre, sysdate);
  INSERT INTO DETAILSEMPRUNTS(emprunt, numero, isbn, exemplaire) VALUES(numeroEmprunt, numero, isbn, 1);
END PROC_EMPRUNTEXPRESS;