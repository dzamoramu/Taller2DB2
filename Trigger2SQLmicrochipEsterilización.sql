CREATE OR REPLACE FUNCTION veify_tipoVisita_fn()
  RETURNS TRIGGER 
  LANGUAGE PLPGSQL
  AS
$$
DECLARE
	tipoV varchar;
	tipoM varchar;
BEGIN
	
	SELECT tipovisita, id_mascota
	INTO tipoV
	FROM visitaveterinaria
	WHERE id_mascota = NEW.id_mascota
	 AND visitaveterinaria.tipovisita = NEW.tipovisita;
		
	IF tipoV = 'esterilizacion' THEN
		 RAISE EXCEPTION 'No se puede repetir dicha visita de esterilizacion';		
	END IF;
	
	SELECT tipovisita, id_mascota
	INTO tipoM
	FROM visitaveterinaria
	WHERE id_mascota = NEW.id_mascota
	 AND visitaveterinaria.tipovisita = NEW.tipovisita;
		
	IF tipoM = 'microchip' THEN
		 RAISE EXCEPTION 'No se puede repetir dicha visita de microchip';		
	END IF;
	
	return New;
END;
$$;

DROP TRIGGER IF EXISTS veify_tipoVisita_tr ON visitaveterinaria;

CREATE TRIGGER veify_tipoVisita_tr
 	BEFORE INSERT
 	ON visitaveterinaria
	FOR EACH ROW
	EXECUTE PROCEDURE veify_tipoVisita_fn();
	
INSERT INTO visitaveterinaria (nitveterinaria, tipovisita, fecha_ingreso, id_mascota) values ('21109383-8', 'esterilizacion', NOW(), 'TYI741');
	
	