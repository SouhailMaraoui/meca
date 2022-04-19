

/*Function to publish program*/

/*Function to remove hierarchy*/

/*View for Assignments*/
/*View for Assignments history*/

/*View for Prevision*/
/*View for Prevision history*/

/*Function to see coverage*/


CREATE FUNCTION get_eca_activities(ecaId INTEGER)
RETURNS TABLE (Activity varchar)
LANGUAGE plpgsql
AS $$
BEGIN
	RETURN QUERY
		SELECT Act."Name"
        FROM "ECA" AS ECA
                 JOIN
             "Permit" AS Permit ON ECA."IdTypeECA" = Permit."IdECA"
                 JOIN
             "Activity" AS Act ON Act."Id" = Permit."IdActivity"
        WHERE ECA."Id"=ecaId;
END;$$;


CREATE FUNCTION services_in_department(depId INTEGER)
RETURNS TABLE (Service varchar)
LANGUAGE plpgsql
AS $$
BEGIN
	RETURN QUERY
		SELECT Service."Name"  AS Service
        FROM "Service" AS Service
                 JOIN
             "Department" AS Department ON Department."Id" = Service."IdDepartment"
        WHERE Department."Id"=depId;
END;$$;

/*FUNCTION create publish_program */
 CREATE OR REPLACE FUNCTION publish_program(Id integer)
  RETURNS TABLE (Id VARCHAR(40)) AS 
  $BODY$
    UPDATE "Program"
        SET "IsPublished"      = true
        WHERE "Program"."Id" = Id
    returning "Program"."Id";
  $BODY$
    LANGUAGE SQL
    
/*TEST FUNCTION create publish_program */
select publish_program(1)
