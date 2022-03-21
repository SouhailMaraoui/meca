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

