--------------------------------------------------------
--  DDL for Table CAIXA
--------------------------------------------------------

  CREATE TABLE "ECLBDIT106"."CAIXA" 
   (	"ID_CAIXA" NUMBER(5,0), 
	"NOME" VARCHAR2(50 BYTE) COLLATE "USING_NLS_COMP", 
	"SENHA" VARCHAR2(20 BYTE) COLLATE "USING_NLS_COMP", 
	"CPF" CHAR(11 BYTE) COLLATE "USING_NLS_COMP", 
	"ID_RES" NUMBER(5,0)
   )  DEFAULT COLLATION "USING_NLS_COMP" SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 10 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "DATA" ;
--------------------------------------------------------
--  DDL for Table LOG_ACESSO
--------------------------------------------------------

  CREATE TABLE "ECLBDIT106"."LOG_ACESSO" 
   (	"VALOR" FLOAT(126), 
	"DATA_E_HORA" VARCHAR2(20 BYTE) COLLATE "USING_NLS_COMP", 
	"ID_USR" NUMBER(5,0), 
	"ID_CAIXA" NUMBER(5,0), 
	"ID_REF" NUMBER(5,0)
   )  DEFAULT COLLATION "USING_NLS_COMP" SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 10 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "DATA" ;
--------------------------------------------------------
--  DDL for Table LOG_RECARGA
--------------------------------------------------------

  CREATE TABLE "ECLBDIT106"."LOG_RECARGA" 
   (	"TIPO_PAG" CHAR(1 BYTE) COLLATE "USING_NLS_COMP", 
	"VALOR" FLOAT(126), 
	"DATA_E_HORA" VARCHAR2(20 BYTE) COLLATE "USING_NLS_COMP", 
	"ID_USR" NUMBER(5,0), 
	"ID_CAIXA" NUMBER(5,0)
   )  DEFAULT COLLATION "USING_NLS_COMP" SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 10 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "DATA" ;
--------------------------------------------------------
--  DDL for Table LOG_TRANSFERENCIA
--------------------------------------------------------

  CREATE TABLE "ECLBDIT106"."LOG_TRANSFERENCIA" 
   (	"VALOR" FLOAT(126), 
	"DATA_E_HORA" VARCHAR2(20 BYTE) COLLATE "USING_NLS_COMP", 
	"ID_USR_DEB" NUMBER(5,0), 
	"ID_USR_CRD" NUMBER(5,0), 
	"ID_CAIXA" NUMBER(5,0)
   )  DEFAULT COLLATION "USING_NLS_COMP" SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 10 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "DATA" ;
--------------------------------------------------------
--  DDL for Table REFEICAO
--------------------------------------------------------

  CREATE TABLE "ECLBDIT106"."REFEICAO" 
   (	"ID_REF" NUMBER(5,0), 
	"TIPO_REF" CHAR(1 BYTE) COLLATE "USING_NLS_COMP", 
	"DATA" DATE, 
	"DESCRICAO" CLOB COLLATE "USING_NLS_COMP", 
	"VALOR_BASE" FLOAT(126), 
	"ID_RES" NUMBER(5,0)
   )  DEFAULT COLLATION "USING_NLS_COMP" SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 10 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "DATA" 
 LOB ("DESCRICAO") STORE AS SECUREFILE (
  TABLESPACE "DATA" ENABLE STORAGE IN ROW CHUNK 8192
  NOCACHE LOGGING  NOCOMPRESS  KEEP_DUPLICATES 
  STORAGE(INITIAL 106496 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) ;
--------------------------------------------------------
--  DDL for Table RESTAURANTE
--------------------------------------------------------

  CREATE TABLE "ECLBDIT106"."RESTAURANTE" 
   (	"ID_RES" NUMBER(5,0), 
	"LOTACAO_MAX" NUMBER(4,0)
   )  DEFAULT COLLATION "USING_NLS_COMP" SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 10 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "DATA" ;
--------------------------------------------------------
--  DDL for Table USUARIO
--------------------------------------------------------

  CREATE TABLE "ECLBDIT106"."USUARIO" 
   (	"ID_USR" NUMBER(5,0), 
	"SALDO" FLOAT(126), 
	"NOME" VARCHAR2(50 BYTE) COLLATE "USING_NLS_COMP", 
	"TIPO_USR" CHAR(1 BYTE) COLLATE "USING_NLS_COMP", 
	"CPF" CHAR(11 BYTE) COLLATE "USING_NLS_COMP", 
	"ULT_ACESSO" VARCHAR2(20 BYTE) COLLATE "USING_NLS_COMP"
   )  DEFAULT COLLATION "USING_NLS_COMP" SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 10 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "DATA" ;
REM INSERTING into ECLBDIT106.CAIXA
SET DEFINE OFF;
Insert into ECLBDIT106.CAIXA (ID_CAIXA,NOME,SENHA,CPF,ID_RES) values ('0','Caixa0','senha0','01133344457','0');
Insert into ECLBDIT106.CAIXA (ID_CAIXA,NOME,SENHA,CPF,ID_RES) values ('1','Caixa1','senha1','11133344457','0');
Insert into ECLBDIT106.CAIXA (ID_CAIXA,NOME,SENHA,CPF,ID_RES) values ('2','Caixa2','senha2','21133344457','0');
Insert into ECLBDIT106.CAIXA (ID_CAIXA,NOME,SENHA,CPF,ID_RES) values ('3','Caixa3','senha3','31133344457','1');
Insert into ECLBDIT106.CAIXA (ID_CAIXA,NOME,SENHA,CPF,ID_RES) values ('4','Caixa4','senha4','41133344457','1');
REM INSERTING into ECLBDIT106.LOG_ACESSO
SET DEFINE OFF;
Insert into ECLBDIT106.LOG_ACESSO (VALOR,DATA_E_HORA,ID_USR,ID_CAIXA,ID_REF) values ('4,5','22/25/08/21','1','0','4');
Insert into ECLBDIT106.LOG_ACESSO (VALOR,DATA_E_HORA,ID_USR,ID_CAIXA,ID_REF) values ('13,5','22/25/08/21','2','0','5');
Insert into ECLBDIT106.LOG_ACESSO (VALOR,DATA_E_HORA,ID_USR,ID_CAIXA,ID_REF) values ('4,5','22/25/08/21','3','0','3');
Insert into ECLBDIT106.LOG_ACESSO (VALOR,DATA_E_HORA,ID_USR,ID_CAIXA,ID_REF) values ('4,5','22/25/08/21','4','1','4');
Insert into ECLBDIT106.LOG_ACESSO (VALOR,DATA_E_HORA,ID_USR,ID_CAIXA,ID_REF) values ('4,5','22/25/08/21','7','0','4');
Insert into ECLBDIT106.LOG_ACESSO (VALOR,DATA_E_HORA,ID_USR,ID_CAIXA,ID_REF) values ('3','22/25/08/21','8','1','6');
Insert into ECLBDIT106.LOG_ACESSO (VALOR,DATA_E_HORA,ID_USR,ID_CAIXA,ID_REF) values ('9','22/25/08/21','9','1','6');
Insert into ECLBDIT106.LOG_ACESSO (VALOR,DATA_E_HORA,ID_USR,ID_CAIXA,ID_REF) values ('3','22/25/08/21','10','1','6');
Insert into ECLBDIT106.LOG_ACESSO (VALOR,DATA_E_HORA,ID_USR,ID_CAIXA,ID_REF) values ('4,5','22/25/08/21','0','2','4');
Insert into ECLBDIT106.LOG_ACESSO (VALOR,DATA_E_HORA,ID_USR,ID_CAIXA,ID_REF) values ('3','16/30/08/21','10','1','6');
Insert into ECLBDIT106.LOG_ACESSO (VALOR,DATA_E_HORA,ID_USR,ID_CAIXA,ID_REF) values ('4,5','18/30/08/21','7','3','4');
REM INSERTING into ECLBDIT106.LOG_RECARGA
SET DEFINE OFF;
Insert into ECLBDIT106.LOG_RECARGA (TIPO_PAG,VALOR,DATA_E_HORA,ID_USR,ID_CAIXA) values ('D','75','18/30/08/21','8','3');
Insert into ECLBDIT106.LOG_RECARGA (TIPO_PAG,VALOR,DATA_E_HORA,ID_USR,ID_CAIXA) values ('D','20','16/30/08/21','0','0');
Insert into ECLBDIT106.LOG_RECARGA (TIPO_PAG,VALOR,DATA_E_HORA,ID_USR,ID_CAIXA) values ('D','55','16/30/08/21','1','0');
Insert into ECLBDIT106.LOG_RECARGA (TIPO_PAG,VALOR,DATA_E_HORA,ID_USR,ID_CAIXA) values ('D','30','16/30/08/21','0','1');
Insert into ECLBDIT106.LOG_RECARGA (TIPO_PAG,VALOR,DATA_E_HORA,ID_USR,ID_CAIXA) values ('C','140','16/30/08/21','2','1');
Insert into ECLBDIT106.LOG_RECARGA (TIPO_PAG,VALOR,DATA_E_HORA,ID_USR,ID_CAIXA) values ('C','200','16/30/08/21','2','0');
Insert into ECLBDIT106.LOG_RECARGA (TIPO_PAG,VALOR,DATA_E_HORA,ID_USR,ID_CAIXA) values ('C','15','16/30/08/21','3','0');
Insert into ECLBDIT106.LOG_RECARGA (TIPO_PAG,VALOR,DATA_E_HORA,ID_USR,ID_CAIXA) values ('C','15,9','18/30/08/21','2','3');
Insert into ECLBDIT106.LOG_RECARGA (TIPO_PAG,VALOR,DATA_E_HORA,ID_USR,ID_CAIXA) values ('C','17','18/30/08/21','1','3');
REM INSERTING into ECLBDIT106.LOG_TRANSFERENCIA
SET DEFINE OFF;
Insert into ECLBDIT106.LOG_TRANSFERENCIA (VALOR,DATA_E_HORA,ID_USR_DEB,ID_USR_CRD,ID_CAIXA) values ('80','18/30/08/21','12','3','3');
Insert into ECLBDIT106.LOG_TRANSFERENCIA (VALOR,DATA_E_HORA,ID_USR_DEB,ID_USR_CRD,ID_CAIXA) values ('100','20/25/08/21','3','4','2');
Insert into ECLBDIT106.LOG_TRANSFERENCIA (VALOR,DATA_E_HORA,ID_USR_DEB,ID_USR_CRD,ID_CAIXA) values ('10','20/25/08/21','7','4','2');
Insert into ECLBDIT106.LOG_TRANSFERENCIA (VALOR,DATA_E_HORA,ID_USR_DEB,ID_USR_CRD,ID_CAIXA) values ('25','20/25/08/21','10','9','0');
Insert into ECLBDIT106.LOG_TRANSFERENCIA (VALOR,DATA_E_HORA,ID_USR_DEB,ID_USR_CRD,ID_CAIXA) values ('105','20/25/08/21','2','10','0');
Insert into ECLBDIT106.LOG_TRANSFERENCIA (VALOR,DATA_E_HORA,ID_USR_DEB,ID_USR_CRD,ID_CAIXA) values ('10','20/25/08/21','1','8','3');
Insert into ECLBDIT106.LOG_TRANSFERENCIA (VALOR,DATA_E_HORA,ID_USR_DEB,ID_USR_CRD,ID_CAIXA) values ('100','16/30/08/21','3','4','2');
REM INSERTING into ECLBDIT106.REFEICAO
SET DEFINE OFF;
Insert into ECLBDIT106.REFEICAO (ID_REF,TIPO_REF,DATA,VALOR_BASE,ID_RES) values ('0','C',to_date('01/01/21','DD/MM/RR'),'1','0');
Insert into ECLBDIT106.REFEICAO (ID_REF,TIPO_REF,DATA,VALOR_BASE,ID_RES) values ('1','C',to_date('01/01/21','DD/MM/RR'),'1','0');
Insert into ECLBDIT106.REFEICAO (ID_REF,TIPO_REF,DATA,VALOR_BASE,ID_RES) values ('3','C',to_date('01/01/21','DD/MM/RR'),'1','1');
Insert into ECLBDIT106.REFEICAO (ID_REF,TIPO_REF,DATA,VALOR_BASE,ID_RES) values ('4','A',to_date('01/01/21','DD/MM/RR'),'3','0');
Insert into ECLBDIT106.REFEICAO (ID_REF,TIPO_REF,DATA,VALOR_BASE,ID_RES) values ('5','A',to_date('01/01/21','DD/MM/RR'),'3','1');
Insert into ECLBDIT106.REFEICAO (ID_REF,TIPO_REF,DATA,VALOR_BASE,ID_RES) values ('6','J',to_date('01/01/21','DD/MM/RR'),'2','0');
Insert into ECLBDIT106.REFEICAO (ID_REF,TIPO_REF,DATA,VALOR_BASE,ID_RES) values ('7','J',to_date('01/01/21','DD/MM/RR'),'2','0');
Insert into ECLBDIT106.REFEICAO (ID_REF,TIPO_REF,DATA,VALOR_BASE,ID_RES) values ('8','J',to_date('01/01/21','DD/MM/RR'),'2','1');
REM INSERTING into ECLBDIT106.RESTAURANTE
SET DEFINE OFF;
Insert into ECLBDIT106.RESTAURANTE (ID_RES,LOTACAO_MAX) values ('0','110');
Insert into ECLBDIT106.RESTAURANTE (ID_RES,LOTACAO_MAX) values ('1','250');
Insert into ECLBDIT106.RESTAURANTE (ID_RES,LOTACAO_MAX) values ('2','150');
Insert into ECLBDIT106.RESTAURANTE (ID_RES,LOTACAO_MAX) values ('3','175');
Insert into ECLBDIT106.RESTAURANTE (ID_RES,LOTACAO_MAX) values ('4','200');
REM INSERTING into ECLBDIT106.USUARIO
SET DEFINE OFF;
Insert into ECLBDIT106.USUARIO (ID_USR,SALDO,NOME,TIPO_USR,CPF,ULT_ACESSO) values ('11','15','Aluno6','A','41133744455','01/27/08/21');
Insert into ECLBDIT106.USUARIO (ID_USR,SALDO,NOME,TIPO_USR,CPF,ULT_ACESSO) values ('12','70','Aluno7','A','51133744455','01/27/08/21');
Insert into ECLBDIT106.USUARIO (ID_USR,SALDO,NOME,TIPO_USR,CPF,ULT_ACESSO) values ('13','150','Aluno8','A','61133744455','01/27/08/21');
Insert into ECLBDIT106.USUARIO (ID_USR,SALDO,NOME,TIPO_USR,CPF,ULT_ACESSO) values ('14','150','Aluno9','A','71133744455','01/27/08/21');
Insert into ECLBDIT106.USUARIO (ID_USR,SALDO,NOME,TIPO_USR,CPF,ULT_ACESSO) values ('15','150','Aluno10','A','81133744455','01/27/08/21');
Insert into ECLBDIT106.USUARIO (ID_USR,SALDO,NOME,TIPO_USR,CPF,ULT_ACESSO) values ('16','150','Aluno11','A','91133744455','01/27/08/21');
Insert into ECLBDIT106.USUARIO (ID_USR,SALDO,NOME,TIPO_USR,CPF,ULT_ACESSO) values ('0','195,5','Aluno0','A','01133344455','22/25/08/21');
Insert into ECLBDIT106.USUARIO (ID_USR,SALDO,NOME,TIPO_USR,CPF,ULT_ACESSO) values ('1','161','Aluno1','A','11133344455','22/25/08/21');
Insert into ECLBDIT106.USUARIO (ID_USR,SALDO,NOME,TIPO_USR,CPF,ULT_ACESSO) values ('2','524,9','Servidor0','S','21133344455','22/25/08/21');
Insert into ECLBDIT106.USUARIO (ID_USR,SALDO,NOME,TIPO_USR,CPF,ULT_ACESSO) values ('3','293','Servidor1','S','31133344455','22/25/08/21');
Insert into ECLBDIT106.USUARIO (ID_USR,SALDO,NOME,TIPO_USR,CPF,ULT_ACESSO) values ('4','195','Aluno2','A','41133344455','22/25/08/21');
Insert into ECLBDIT106.USUARIO (ID_USR,SALDO,NOME,TIPO_USR,CPF,ULT_ACESSO) values ('7','13','Aluno3','A','01173344455','18/30/08/21');
Insert into ECLBDIT106.USUARIO (ID_USR,SALDO,NOME,TIPO_USR,CPF,ULT_ACESSO) values ('8','102,5','Aluno4','A','11137344455','24/11/11/19');
Insert into ECLBDIT106.USUARIO (ID_USR,SALDO,NOME,TIPO_USR,CPF,ULT_ACESSO) values ('9','91','Servidor3','S','21733344455','22/25/08/21');
Insert into ECLBDIT106.USUARIO (ID_USR,SALDO,NOME,TIPO_USR,CPF,ULT_ACESSO) values ('10','99','Aluno5','A','31133744455','16/30/08/21');
--------------------------------------------------------
--  DDL for Index CAIXA_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ECLBDIT106"."CAIXA_PK" ON "ECLBDIT106"."CAIXA" ("ID_CAIXA") 
  PCTFREE 10 INITRANS 20 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "DATA" ;
--------------------------------------------------------
--  DDL for Index CPF__UN
--------------------------------------------------------

  CREATE UNIQUE INDEX "ECLBDIT106"."CPF__UN" ON "ECLBDIT106"."CAIXA" ("CPF") 
  PCTFREE 10 INITRANS 20 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "DATA" ;
--------------------------------------------------------
--  DDL for Index LOG_ACESSO_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ECLBDIT106"."LOG_ACESSO_PK" ON "ECLBDIT106"."LOG_ACESSO" ("DATA_E_HORA", "ID_USR") 
  PCTFREE 10 INITRANS 20 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "DATA" ;
--------------------------------------------------------
--  DDL for Index LOG_RECARGA_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ECLBDIT106"."LOG_RECARGA_PK" ON "ECLBDIT106"."LOG_RECARGA" ("DATA_E_HORA", "ID_USR", "ID_CAIXA") 
  PCTFREE 10 INITRANS 20 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "DATA" ;
--------------------------------------------------------
--  DDL for Index LOG_TRANSFERENCIA_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ECLBDIT106"."LOG_TRANSFERENCIA_PK" ON "ECLBDIT106"."LOG_TRANSFERENCIA" ("DATA_E_HORA", "ID_USR_DEB", "ID_USR_CRD", "ID_CAIXA") 
  PCTFREE 10 INITRANS 20 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "DATA" ;
--------------------------------------------------------
--  DDL for Index REFEICAO_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ECLBDIT106"."REFEICAO_PK" ON "ECLBDIT106"."REFEICAO" ("ID_REF") 
  PCTFREE 10 INITRANS 20 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "DATA" ;
--------------------------------------------------------
--  DDL for Index RESTAURANTE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ECLBDIT106"."RESTAURANTE_PK" ON "ECLBDIT106"."RESTAURANTE" ("ID_RES") 
  PCTFREE 10 INITRANS 20 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "DATA" ;
--------------------------------------------------------
--  DDL for Index USUARIO_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ECLBDIT106"."USUARIO_PK" ON "ECLBDIT106"."USUARIO" ("ID_USR") 
  PCTFREE 10 INITRANS 20 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "DATA" ;
--------------------------------------------------------
--  DDL for Index CPF_UN
--------------------------------------------------------

  CREATE UNIQUE INDEX "ECLBDIT106"."CPF_UN" ON "ECLBDIT106"."USUARIO" ("CPF") 
  PCTFREE 10 INITRANS 20 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "DATA" ;
--------------------------------------------------------
--  DDL for Trigger TRIGGER3_VERIFICA_ACESSO
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "ECLBDIT106"."TRIGGER3_VERIFICA_ACESSO" 
BEFORE INSERT ON LOG_ACESSO FOR EACH ROW
DECLARE
    usr_type USUARIO.TIPO_USR%TYPE;
    ult_acesso USUARIO.ULT_ACESSO%TYPE;
    valor_base USUARIO.SALDO%TYPE;
    dataehora LOG_ACESSO.DATA_E_HORA%TYPE;
BEGIN
    SELECT TIPO_USR INTO usr_type
    FROM USUARIO 
    WHERE ID_USR = :NEW.ID_USR;

    SELECT VALOR_BASE INTO valor_base
    FROM REFEICAO
    WHERE ID_REF = :NEW.ID_REF;
    
    SELECT TO_CHAR(sysdate, 'HH24/DD/MM/YY') INTO dataehora
    FROM dual;

    UPDATE USUARIO SET ULT_ACESSO = (SELECT TO_CHAR(sysdate, 'HH24/DD/MM/YY') FROM dual) WHERE USUARIO.ID_USR=:NEW.ID_USR;
    
    :NEW.DATA_E_HORA := dataehora;

    IF usr_type = 'A' THEN
        :NEW.VALOR := valor_base*1.5;
        UPDATE USUARIO SET SALDO = SALDO - :NEW.VALOR WHERE USUARIO.ID_USR=:NEW.ID_USR;
    ELSIF usr_type = 'S' THEN
        :NEW.VALOR := valor_base*4.5;
        UPDATE USUARIO SET SALDO = SALDO - :NEW.VALOR WHERE USUARIO.ID_USR=:NEW.ID_USR;
    END IF;
END;
/
ALTER TRIGGER "ECLBDIT106"."TRIGGER3_VERIFICA_ACESSO" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRIGGER5_TEMPOSEMUSO
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "ECLBDIT106"."TRIGGER5_TEMPOSEMUSO" 
BEFORE INSERT ON LOG_ACESSO FOR EACH ROW
DECLARE
    diasDif NUMBER;
BEGIN
    select TO_DATE(sysdate,'DD/MM/YY') - TO_DATE(SUBSTR((SELECT ULT_ACESSO FROM USUARIO WHERE ID_USR=:NEW.ID_USR),4,11),'DD/MM/YY') into diasDif from dual;--substr remove a hora da data para subtracao dos dias

    IF diasDif > 365 THEN
        UPDATE USUARIO SET ULT_ACESSO = (SELECT TO_CHAR(sysdate, 'HH24/DD/MM/YY') FROM dual) WHERE USUARIO.ID_USR=:NEW.ID_USR;
        UPDATE USUARIO SET SALDO = 0 WHERE USUARIO.ID_USR=:NEW.ID_USR;
        Raise_Application_Error ( -20004, 'Usuario com creditos expirados devido a 365 dias sem uso.');
    END IF;
END;
/
ALTER TRIGGER "ECLBDIT106"."TRIGGER5_TEMPOSEMUSO" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRIGGER2_VERIFICA_RECARGA
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "ECLBDIT106"."TRIGGER2_VERIFICA_RECARGA" 
BEFORE INSERT ON LOG_RECARGA FOR EACH ROW
DECLARE
    dataehora LOG_RECARGA.DATA_E_HORA%TYPE;
BEGIN
    SELECT TO_CHAR(sysdate, 'HH24/DD/MM/YY') INTO dataehora
    FROM dual;

    :NEW.DATA_E_HORA := dataehora;
    
    IF :NEW.VALOR < 15 THEN
        Raise_Application_Error ( -20003, 'A recarga n pode ser menor que o valor minimo');
    ELSE 
        UPDATE USUARIO SET SALDO = SALDO + :NEW.VALOR WHERE USUARIO.ID_USR=:NEW.ID_USR;  
    END IF;
END;
/
ALTER TRIGGER "ECLBDIT106"."TRIGGER2_VERIFICA_RECARGA" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRIGGER4_TRANSFERENCIA
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "ECLBDIT106"."TRIGGER4_TRANSFERENCIA" 
BEFORE INSERT ON LOG_TRANSFERENCIA FOR EACH ROW
DECLARE
    dataehora LOG_TRANSFERENCIA.DATA_E_HORA%TYPE;
BEGIN
    SELECT TO_CHAR(sysdate, 'HH24/DD/MM/YY') INTO dataehora
    FROM dual;

    :NEW.DATA_E_HORA := dataehora;
    
    UPDATE USUARIO SET SALDO = SALDO - :NEW.VALOR WHERE USUARIO.ID_USR=:NEW.ID_USR_DEB;
    UPDATE USUARIO SET SALDO = SALDO + :NEW.VALOR WHERE USUARIO.ID_USR=:NEW.ID_USR_CRD;
END;
/
ALTER TRIGGER "ECLBDIT106"."TRIGGER4_TRANSFERENCIA" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRIGGER6_QNTMAXUSR
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "ECLBDIT106"."TRIGGER6_QNTMAXUSR" 
BEFORE INSERT ON USUARIO FOR EACH ROW
DECLARE
    usrMax NUMBER;
BEGIN   
    SELECT 3*SUM(LOTACAO_MAX) INTO usrMax FROM RESTAURANTE;

    IF :NEW.ID_USR > usrMax THEN
        Raise_Application_Error ( -20005, 'Quantidades de usuarios ultrapassa tres vezes a capacidade maxima dos restaurantes.');
    END IF;
END;
/
ALTER TRIGGER "ECLBDIT106"."TRIGGER6_QNTMAXUSR" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRIGGER1_VERIFICA_SALDO
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "ECLBDIT106"."TRIGGER1_VERIFICA_SALDO" 
BEFORE UPDATE OF SALDO ON USUARIO FOR EACH ROW
BEGIN
    IF :NEW.SALDO < 0 THEN
        Raise_Application_Error ( -20001, 'O saldo n pode ser negativo');
    ELSIF :NEW.SALDO > 540 THEN
        Raise_Application_Error ( -20002, 'O saldo n pode ser maior que o limite de 540 reais');
    END IF;
END;
/
ALTER TRIGGER "ECLBDIT106"."TRIGGER1_VERIFICA_SALDO" ENABLE;
--------------------------------------------------------
--  Constraints for Table CAIXA
--------------------------------------------------------

  ALTER TABLE "ECLBDIT106"."CAIXA" MODIFY ("ID_CAIXA" NOT NULL ENABLE);
  ALTER TABLE "ECLBDIT106"."CAIXA" MODIFY ("NOME" NOT NULL ENABLE);
  ALTER TABLE "ECLBDIT106"."CAIXA" MODIFY ("SENHA" NOT NULL ENABLE);
  ALTER TABLE "ECLBDIT106"."CAIXA" MODIFY ("CPF" NOT NULL ENABLE);
  ALTER TABLE "ECLBDIT106"."CAIXA" MODIFY ("ID_RES" NOT NULL ENABLE);
  ALTER TABLE "ECLBDIT106"."CAIXA" ADD CONSTRAINT "CAIXA_PK" PRIMARY KEY ("ID_CAIXA")
  USING INDEX PCTFREE 10 INITRANS 20 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "DATA"  ENABLE;
  ALTER TABLE "ECLBDIT106"."CAIXA" ADD CONSTRAINT "CPF__UN" UNIQUE ("CPF")
  USING INDEX PCTFREE 10 INITRANS 20 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "DATA"  ENABLE;
--------------------------------------------------------
--  Constraints for Table LOG_ACESSO
--------------------------------------------------------

  ALTER TABLE "ECLBDIT106"."LOG_ACESSO" MODIFY ("VALOR" NOT NULL ENABLE);
  ALTER TABLE "ECLBDIT106"."LOG_ACESSO" MODIFY ("ID_USR" NOT NULL ENABLE);
  ALTER TABLE "ECLBDIT106"."LOG_ACESSO" MODIFY ("ID_CAIXA" NOT NULL ENABLE);
  ALTER TABLE "ECLBDIT106"."LOG_ACESSO" MODIFY ("ID_REF" NOT NULL ENABLE);
  ALTER TABLE "ECLBDIT106"."LOG_ACESSO" ADD CONSTRAINT "LOG_ACESSO_PK" PRIMARY KEY ("DATA_E_HORA", "ID_USR")
  USING INDEX PCTFREE 10 INITRANS 20 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "DATA"  ENABLE;
--------------------------------------------------------
--  Constraints for Table LOG_RECARGA
--------------------------------------------------------

  ALTER TABLE "ECLBDIT106"."LOG_RECARGA" MODIFY ("TIPO_PAG" NOT NULL ENABLE);
  ALTER TABLE "ECLBDIT106"."LOG_RECARGA" MODIFY ("VALOR" NOT NULL ENABLE);
  ALTER TABLE "ECLBDIT106"."LOG_RECARGA" MODIFY ("DATA_E_HORA" NOT NULL ENABLE);
  ALTER TABLE "ECLBDIT106"."LOG_RECARGA" MODIFY ("ID_USR" NOT NULL ENABLE);
  ALTER TABLE "ECLBDIT106"."LOG_RECARGA" MODIFY ("ID_CAIXA" NOT NULL ENABLE);
  ALTER TABLE "ECLBDIT106"."LOG_RECARGA" ADD CONSTRAINT "LOG_RECARGA_CK_TIPO" CHECK ( tipo_pag = 'D'
                                               OR tipo_pag = 'C' ) ENABLE;
  ALTER TABLE "ECLBDIT106"."LOG_RECARGA" ADD CONSTRAINT "LOG_RECARGA_PK" PRIMARY KEY ("DATA_E_HORA", "ID_USR", "ID_CAIXA")
  USING INDEX PCTFREE 10 INITRANS 20 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "DATA"  ENABLE;
--------------------------------------------------------
--  Constraints for Table LOG_TRANSFERENCIA
--------------------------------------------------------

  ALTER TABLE "ECLBDIT106"."LOG_TRANSFERENCIA" MODIFY ("VALOR" NOT NULL ENABLE);
  ALTER TABLE "ECLBDIT106"."LOG_TRANSFERENCIA" MODIFY ("DATA_E_HORA" NOT NULL ENABLE);
  ALTER TABLE "ECLBDIT106"."LOG_TRANSFERENCIA" MODIFY ("ID_USR_DEB" NOT NULL ENABLE);
  ALTER TABLE "ECLBDIT106"."LOG_TRANSFERENCIA" MODIFY ("ID_USR_CRD" NOT NULL ENABLE);
  ALTER TABLE "ECLBDIT106"."LOG_TRANSFERENCIA" MODIFY ("ID_CAIXA" NOT NULL ENABLE);
  ALTER TABLE "ECLBDIT106"."LOG_TRANSFERENCIA" ADD CONSTRAINT "LOG_TRANSFERENCIA_PK" PRIMARY KEY ("DATA_E_HORA", "ID_USR_DEB", "ID_USR_CRD", "ID_CAIXA")
  USING INDEX PCTFREE 10 INITRANS 20 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "DATA"  ENABLE;
--------------------------------------------------------
--  Constraints for Table REFEICAO
--------------------------------------------------------

  ALTER TABLE "ECLBDIT106"."REFEICAO" MODIFY ("ID_REF" NOT NULL ENABLE);
  ALTER TABLE "ECLBDIT106"."REFEICAO" MODIFY ("TIPO_REF" NOT NULL ENABLE);
  ALTER TABLE "ECLBDIT106"."REFEICAO" MODIFY ("VALOR_BASE" NOT NULL ENABLE);
  ALTER TABLE "ECLBDIT106"."REFEICAO" MODIFY ("ID_RES" NOT NULL ENABLE);
  ALTER TABLE "ECLBDIT106"."REFEICAO" ADD CONSTRAINT "REFEICAO_CK_TIPO" CHECK ( tipo_ref = 'C'
                                            OR tipo_ref = 'A'
                                            OR tipo_ref = 'J' ) ENABLE;
  ALTER TABLE "ECLBDIT106"."REFEICAO" ADD CONSTRAINT "REFEICAO_PK" PRIMARY KEY ("ID_REF")
  USING INDEX PCTFREE 10 INITRANS 20 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "DATA"  ENABLE;
  ALTER TABLE "ECLBDIT106"."REFEICAO" MODIFY ("DATA" NOT NULL ENABLE);
  ALTER TABLE "ECLBDIT106"."REFEICAO" MODIFY ("DESCRICAO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table RESTAURANTE
--------------------------------------------------------

  ALTER TABLE "ECLBDIT106"."RESTAURANTE" MODIFY ("ID_RES" NOT NULL ENABLE);
  ALTER TABLE "ECLBDIT106"."RESTAURANTE" ADD CONSTRAINT "RESTAURANTE_PK" PRIMARY KEY ("ID_RES")
  USING INDEX PCTFREE 10 INITRANS 20 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "DATA"  ENABLE;
  ALTER TABLE "ECLBDIT106"."RESTAURANTE" MODIFY ("LOTACAO_MAX" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table USUARIO
--------------------------------------------------------

  ALTER TABLE "ECLBDIT106"."USUARIO" MODIFY ("ID_USR" NOT NULL ENABLE);
  ALTER TABLE "ECLBDIT106"."USUARIO" MODIFY ("SALDO" NOT NULL ENABLE);
  ALTER TABLE "ECLBDIT106"."USUARIO" MODIFY ("NOME" NOT NULL ENABLE);
  ALTER TABLE "ECLBDIT106"."USUARIO" MODIFY ("TIPO_USR" NOT NULL ENABLE);
  ALTER TABLE "ECLBDIT106"."USUARIO" MODIFY ("CPF" NOT NULL ENABLE);
  ALTER TABLE "ECLBDIT106"."USUARIO" ADD CONSTRAINT "USUARIO_CK_TIPO" CHECK ( tipo_usr = 'A'
                                           OR tipo_usr = 'S' ) ENABLE;
  ALTER TABLE "ECLBDIT106"."USUARIO" ADD CONSTRAINT "USUARIO_PK" PRIMARY KEY ("ID_USR")
  USING INDEX PCTFREE 10 INITRANS 20 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "DATA"  ENABLE;
  ALTER TABLE "ECLBDIT106"."USUARIO" ADD CONSTRAINT "CPF_UN" UNIQUE ("CPF")
  USING INDEX PCTFREE 10 INITRANS 20 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "DATA"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table CAIXA
--------------------------------------------------------

  ALTER TABLE "ECLBDIT106"."CAIXA" ADD CONSTRAINT "CAIXA_RESTAURANTE_FK" FOREIGN KEY ("ID_RES")
	  REFERENCES "ECLBDIT106"."RESTAURANTE" ("ID_RES") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table LOG_ACESSO
--------------------------------------------------------

  ALTER TABLE "ECLBDIT106"."LOG_ACESSO" ADD CONSTRAINT "LOG_ACESSO_CAIXA_FK" FOREIGN KEY ("ID_CAIXA")
	  REFERENCES "ECLBDIT106"."CAIXA" ("ID_CAIXA") ENABLE;
  ALTER TABLE "ECLBDIT106"."LOG_ACESSO" ADD CONSTRAINT "LOG_ACESSO_REFEICAO_FK" FOREIGN KEY ("ID_REF")
	  REFERENCES "ECLBDIT106"."REFEICAO" ("ID_REF") ENABLE;
  ALTER TABLE "ECLBDIT106"."LOG_ACESSO" ADD CONSTRAINT "LOG_ACESSO_USUARIO_FK" FOREIGN KEY ("ID_USR")
	  REFERENCES "ECLBDIT106"."USUARIO" ("ID_USR") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table LOG_RECARGA
--------------------------------------------------------

  ALTER TABLE "ECLBDIT106"."LOG_RECARGA" ADD CONSTRAINT "LOG_RECARGA_CAIXA_FK" FOREIGN KEY ("ID_CAIXA")
	  REFERENCES "ECLBDIT106"."CAIXA" ("ID_CAIXA") ENABLE;
  ALTER TABLE "ECLBDIT106"."LOG_RECARGA" ADD CONSTRAINT "LOG_RECARGA_USUARIO_FK" FOREIGN KEY ("ID_USR")
	  REFERENCES "ECLBDIT106"."USUARIO" ("ID_USR") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table LOG_TRANSFERENCIA
--------------------------------------------------------

  ALTER TABLE "ECLBDIT106"."LOG_TRANSFERENCIA" ADD CONSTRAINT "TRANSF_CAIXA_FK" FOREIGN KEY ("ID_CAIXA")
	  REFERENCES "ECLBDIT106"."CAIXA" ("ID_CAIXA") ENABLE;
  ALTER TABLE "ECLBDIT106"."LOG_TRANSFERENCIA" ADD CONSTRAINT "TRANSF_USR_CRD_FK" FOREIGN KEY ("ID_USR_CRD")
	  REFERENCES "ECLBDIT106"."USUARIO" ("ID_USR") ENABLE;
  ALTER TABLE "ECLBDIT106"."LOG_TRANSFERENCIA" ADD CONSTRAINT "TRANSF_USR_DEB_FK" FOREIGN KEY ("ID_USR_DEB")
	  REFERENCES "ECLBDIT106"."USUARIO" ("ID_USR") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table REFEICAO
--------------------------------------------------------

  ALTER TABLE "ECLBDIT106"."REFEICAO" ADD CONSTRAINT "REFEICAO_RESTAURANTE_FK" FOREIGN KEY ("ID_RES")
	  REFERENCES "ECLBDIT106"."RESTAURANTE" ("ID_RES") ENABLE;