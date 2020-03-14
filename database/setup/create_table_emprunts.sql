CREATE TABLE EMPRUNTS 
(
  NUMERO NUMBER(10) NOT NULL 
, MEMBRE NUMBER(6) 
, CREELE DATE DEFAULT sysdate 
, CONSTRAINT EMPRUNTS_PK PRIMARY KEY 
  (
    NUMERO 
  )
  ENABLE 
);

ALTER TABLE EMPRUNTS
ADD CONSTRAINT EMPRUNTS_FK1 FOREIGN KEY
(
  MEMBRE 
)
REFERENCES MEMBRES
(
  NUMERO 
)
ENABLE;

Insert into EMPRUNTS (NUMERO,MEMBRE,CREELE) values ('1','1',to_date('01/09/16','DD/MM/RR'));
Insert into EMPRUNTS (NUMERO,MEMBRE,CREELE) values ('2','3',to_date('11/09/16','DD/MM/RR'));
Insert into EMPRUNTS (NUMERO,MEMBRE,CREELE) values ('3','4',to_date('21/09/16','DD/MM/RR'));
Insert into EMPRUNTS (NUMERO,MEMBRE,CREELE) values ('4','1',to_date('01/10/16','DD/MM/RR'));
Insert into EMPRUNTS (NUMERO,MEMBRE,CREELE) values ('5','5',to_date('11/10/16','DD/MM/RR'));
Insert into EMPRUNTS (NUMERO,MEMBRE,CREELE) values ('6','2',to_date('21/10/16','DD/MM/RR'));
Insert into EMPRUNTS (NUMERO,MEMBRE,CREELE) values ('7','4',to_date('31/10/16','DD/MM/RR'));
Insert into EMPRUNTS (NUMERO,MEMBRE,CREELE) values ('8','1',to_date('10/11/16','DD/MM/RR'));
Insert into EMPRUNTS (NUMERO,MEMBRE,CREELE) values ('9','9',to_date('20/11/16','DD/MM/RR'));
Insert into EMPRUNTS (NUMERO,MEMBRE,CREELE) values ('10','6',to_date('30/11/16','DD/MM/RR'));
Insert into EMPRUNTS (NUMERO,MEMBRE,CREELE) values ('11','1',to_date('10/12/16','DD/MM/RR'));
Insert into EMPRUNTS (NUMERO,MEMBRE,CREELE) values ('12','6',to_date('20/12/16','DD/MM/RR'));
Insert into EMPRUNTS (NUMERO,MEMBRE,CREELE) values ('13','2',to_date('30/12/16','DD/MM/RR'));
Insert into EMPRUNTS (NUMERO,MEMBRE,CREELE) values ('14','4',to_date('09/01/17','DD/MM/RR'));
Insert into EMPRUNTS (NUMERO,MEMBRE,CREELE) values ('15','1',to_date('19/01/17','DD/MM/RR'));
Insert into EMPRUNTS (NUMERO,MEMBRE,CREELE) values ('16','3',to_date('29/01/17','DD/MM/RR'));
Insert into EMPRUNTS (NUMERO,MEMBRE,CREELE) values ('17','1',to_date('08/02/17','DD/MM/RR'));
Insert into EMPRUNTS (NUMERO,MEMBRE,CREELE) values ('18','5',to_date('18/02/17','DD/MM/RR'));
Insert into EMPRUNTS (NUMERO,MEMBRE,CREELE) values ('19','4',to_date('28/02/17','DD/MM/RR'));
Insert into EMPRUNTS (NUMERO,MEMBRE,CREELE) values ('20','1',to_date('10/03/17','DD/MM/RR'));