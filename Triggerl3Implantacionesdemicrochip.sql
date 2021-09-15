CREATE OR REPLACE FUNCTION veify_tipoVisita_fn3()
  RETURNS TRIGGER 
  LANGUAGE PLPGSQL
  AS
$$
DECLARE
	c INTEGER;
BEGIN
	INSERT into microchip_goals(fechas,cuentachips,cumplimiento)
	select fecha_ingreso
	from visitaveterinaria
	where tipovisita='microchip' and fecha_ingreso
	BETWEEN NOW()::DATE-EXTRACT(DOW FROM NOW())::INTEGER-7 
		AND		NOW()::DATE-EXTRACT(DOW from NOW())::INTEGER
	GROUP by fecha_ingreso;
	select count(fecha_ingreso) from visitaveterinaria
  		where tipovisita='microchip' and fecha_ingreso
		BETWEEN NOW()::DATE-EXTRACT(DOW FROM NOW())::INTEGER-7 
		AND		NOW()::DATE-EXTRACT(DOW from NOW())::INTEGER;
	select count(fecha_ingreso) from visitaveterinaria
  		where tipovisita='microchip' and fecha_ingreso
		BETWEEN NOW()::DATE-EXTRACT(DOW FROM NOW())::INTEGER-7 
		AND		NOW()::DATE-EXTRACT(DOW from NOW())::INTEGER;
	return New;
	END;
$$;


DROP TRIGGER IF EXISTS veify_tipoVisita_3 ON microchip_goals;

CREATE TRIGGER veify_tipoVisita_3
 	BEFORE INSERT
 	ON microchip_goals
	FOR EACH ROW 
	EXECUTE PROCEDURE veify_tipoVisita_fn3();
	
	