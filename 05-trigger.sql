/*TRIGGER*/
CREATE OR REPLACE TRIGGER T_ID_ENDERECO
	BEFORE INSERT ON ENDERECO
		FOR EACH ROW
	BEGIN
		IF INSERTING THEN
			IF :NEW.ID_ENDERECO IS NULL THEN
				SELECT S_ID_ENDERECO.NEXTVAL INTO :NEW.ID_ENDERECO FROM DUAL;
			END IF;
		END IF;
	END;
