insert into "Hierarchy"
("Id", "Name")
values (1, 'testHierachie');

insert into "UO"
("Id", "Since", "Name", "Name_since","IdParent","IdParent_since","IdHierarchical","IdHierarchical_since")
values (1, '2022-04-13T15:20:35.651Z', 'test', '2022-04-13T15:20:35.651Z',1,'2022-04-13T15:20:35.651Z',1,'2022-04-13T15:20:35.651Z');

insert into "UO"
("Id", "Since", "Name", "Name_since","IdParent","IdParent_since","IdHierarchical","IdHierarchical_since")
values (2, '2022-04-13T15:20:35.651Z', 'test', '2022-04-13T15:20:35.651Z',1,'2022-04-13T15:20:35.651Z',1,'2022-04-13T15:20:35.651Z');

insert into "UO"
("Id", "Since", "Name", "Name_since","IdParent","IdParent_since","IdHierarchical","IdHierarchical_since")
values (3, '2022-04-13T15:20:35.651Z', 'test', '2022-04-13T15:20:35.651Z',1,'2022-04-13T15:20:35.651Z',1,'2022-04-13T15:20:35.651Z');


insert into "ActivityWorkUnit"
("Id", "Since", "Name", "Name_since")
values (1, '2022-04-13T15:20:35.651Z', 'jourHomme', '2022-04-13T15:20:35.651Z');


insert into "Activity"
("Id", "Since", "IdWorkUnit", "IdWorkUnit_since","Name","Name_since","Description","Description_since")
values (1, '2022-04-13T15:20:35.651Z', 1, '2022-04-13T15:20:35.651Z','Cardialogue','2022-04-13T15:20:35.651Z','Desc','2022-04-13T15:20:35.651Z');

insert into "Activity"
("Id", "Since", "IdWorkUnit", "IdWorkUnit_since","Name","Name_since","Description","Description_since")
values (2, '2022-04-13T15:20:35.651Z', 1, '2022-04-13T15:20:35.651Z','psychological','2022-04-13T15:20:35.651Z','Desc','2022-04-13T15:20:35.651Z');

insert into "Activity"
("Id", "Since", "IdWorkUnit", "IdWorkUnit_since","Name","Name_since","Description","Description_since")
values (3, '2022-04-13T15:20:35.651Z', 1, '2022-04-13T15:20:35.651Z','idk','2022-04-13T15:20:35.651Z','Desc','2022-04-13T15:20:35.651Z');

insert into "UOActivity"
("Id", "IdActivity", "IdUO", "Since")
values (1, 1, 2,'2022-04-13T15:20:35.651Z');
insert into "UOActivity"
("Id", "IdActivity", "IdUO", "Since")
values (2, 3, 2,'2022-04-13T15:20:35.651Z');

insert into "UOActivity"
("Id", "IdActivity", "IdUO", "Since")
values (3, 2, 2,'2022-04-13T15:20:35.651Z');

insert into "ECA"
("Id", "Since", "Lastname", "Lastname_since","Firstname","Firstname_since")
values (1, '2022-04-13T15:20:35.651Z', 'testlastname','2022-04-13T15:20:35.651Z','testFirstname','2022-04-13T15:20:35.651Z');


insert into "Permit"
("Id", "Name", "ValidityDaterange")
values (1, 'testlastname','[2022-05-27,2022-06-27]');


insert into "PermitECA"
("IdPermit", "IdECA")
values (1, 1);

insert into "PermitActivity"
("IdPermit", "IdActivity")
values (1, 2);

insert into "PermitActivity"
("IdPermit", "IdActivity")
values (1, 1);


CREATE OR REPLACE FUNCTION CheckIfECACanPerformActivity(IdECA INTEGER,IdActivity INTEGER)
RETURNS INT
LANGUAGE plpgsql
AS $$
BEGIN
    IF(EXISTS(
        SELECT *
        FROM "PermitECA" PE
                JOIN
            "PermitActivity" PA on PA."IdPermit" = PE."IdPermit"
        WHERE PE."IdECA"=IdECA AND PA."IdActivity"=IdActivity
    ))
    THEN
        RETURN (1);
    ELSE
        RETURN (0);
    END IF;
END;$$;

CREATE OR REPLACE FUNCTION CheckIfECACanBeAssignedToUOActivity(IdECA INTEGER,IdUOActivity INTEGER)
RETURNS INT
LANGUAGE plpgsql
AS $$
DECLARE
    IdActivity INTEGER := (SELECT "IdActivity" FROM "UOActivity" WHERE "Id"=IdUOActivity);
BEGIN
    RETURN (CheckIfECACanPerformActivity(IdECA,IdActivity));
END;$$;



/*Assignment - Check If ECA Can Be Assigned To UOActivity */
ALTER TABLE "Assignment"
  ADD CONSTRAINT ECA_PERMIT_ACTIVITY CHECK (CheckIfECACanBeAssignedToUOActivity("IdECA","IdUOActivity")==1)