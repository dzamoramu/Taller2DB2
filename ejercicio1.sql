CREATE OR REPLACE FUNCTION backupdelete()
RETURNS TRIGGER
  LANGUAGE PLPGSQL
  AS
$$
BEGIN 
  INSERT INTO pet_audit values(old.id_propietario_mascota, old.nombre, old.edad, old.especie, old.sexo, old.tamaño, old.potencialmente_peligroso, old.id_mascota, 'update', NOW());
RETURN NEW;
END;
$$

CREATE TRIGGER backupdelete_tr
  AFTER INSERT OR DELETE OR UPDATE
  ON mascota
  FOR EACH ROW
  EXECUTE PROCEDURE backupdelete();
//Comprobaciones...
  DELETE FROM mascota 
  Where id_mascota = 'QWR842'
  
  UPDATE mascota 
  set nombre = 'ZEUS'
  where id_mascota = 'OQN123'

//Modificacion Tabla visitaveterinaria
CREATE TABLE IF NOT EXISTS public.visitaveterinaria
(
    nitveterinaria character varying(15) COLLATE pg_catalog."default" NOT NULL,
    tipovisita character varying(15) COLLATE pg_catalog."default" NOT NULL,
    fecha_ingreso character varying(45) COLLATE pg_catalog."default" NOT NULL,
    id_mascota character varying(40) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT visitaveterinaria_id_mascota_fkey FOREIGN KEY (id_mascota)
        REFERENCES public.mascota (id_mascota) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE CASCADE,
    CONSTRAINT visitaveterinaria_nitveterinaria_fkey FOREIGN KEY (nitveterinaria)
        REFERENCES public.veterinaria (nit) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE CASCADE
)