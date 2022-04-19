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
("IdActivity", "IdUO", "Since")
values (1, 2,'2022-04-13T15:20:35.651Z');
insert into "UOActivity"
("IdActivity", "IdUO", "Since")
values (3, 2,'2022-04-13T15:20:35.651Z');

insert into "UOActivity"
("IdActivity", "IdUO", "Since")
values (2, 2,'2022-04-13T15:20:35.651Z');

insert into "ECA"
("Id", "Since", "Lastname", "Lastname_since","Firstname","Firstname_since")
values (1, '2022-04-13T15:20:35.651Z', 'testlastname','2022-04-13T15:20:35.651Z','testFirstname','2022-04-13T15:20:35.651Z');

insert into "ECA"
("Id", "Since", "Lastname", "Lastname_since","Firstname","Firstname_since")
values (2, '2022-04-13T15:20:35.651Z', 'testlastname','2022-04-13T15:20:35.651Z','testFirstname','2022-04-13T15:20:35.651Z');

insert into "Permit"
("Id", "Name", "ValidityDaterange")
values (1, 'testlastname','[2022-05-27,2022-06-27]');

insert into "PermitECA"
("IdPermit", "IdECA")
values (1, 2);


insert into "PermitECA"
("IdPermit", "IdECA")
values (1, 1);

insert into "PermitActivity"
("IdPermit", "IdActivity")
values (1, 2);

insert into "PermitActivity"
("IdPermit", "IdActivity")
values (1, 1);

insert into "Program"
values (
	1,
	'2022-04-13T15:20:35.651Z',
	'Program name',
	'2022-04-13T15:20:35.651Z',
	'[2022-01-01,2022-04-30]',
	'2022-04-13T15:20:35.651Z',
	false,
	'2022-04-13T15:20:35.651Z');

/*Violates assignment_UO_Activity since UO 1 does not offer Activity 2*/
insert into "Assignment"
values (
	1,
	'2022-04-13T15:20:35.651Z',
    1,
	'2022-04-13T15:20:35.651Z',
    1,
	'2022-04-13T15:20:35.651Z',
    2,
	'2022-04-13T15:20:35.651Z',
    1,
	'2022-04-13T15:20:35.651Z',
	'[2022-01-01,2022-03-30]',
	'2022-04-13T15:20:35.651Z',
    10,
	'2022-04-13T15:20:35.651Z');

/*Violates assignment_eca_permit_activity since ECA 1 cannot perform activity 3*/
insert into "Assignment"
values (
	1,
	'2022-04-13T15:20:35.651Z',
    1,
	'2022-04-13T15:20:35.651Z',
    2,
	'2022-04-13T15:20:35.651Z',
    3,
	'2022-04-13T15:20:35.651Z',
    1,
	'2022-04-13T15:20:35.651Z',
	'[2022-01-01,2022-03-30]',
	'2022-04-13T15:20:35.651Z',
    10,
	'2022-04-13T15:20:35.651Z');

/*Violates program assignment_period*/
insert into "Assignment"
values (
	1,
	'2022-04-13T15:20:35.651Z',
    1,
	'2022-04-13T15:20:35.651Z',
    1,
	'2022-04-13T15:20:35.651Z',
    1,
	'2022-04-13T15:20:35.651Z',
    1,
	'2022-04-13T15:20:35.651Z',
	'[2022-01-01,2022-05-30]',
	'2022-04-13T15:20:35.651Z',
    10,
	'2022-04-13T15:20:35.651Z');

/*Good*/
insert into "Assignment"
values (
	1,
	'2022-04-13T15:20:35.651Z',
    1,
	'2022-04-13T15:20:35.651Z',
    2,
	'2022-04-13T15:20:35.651Z',
    2,
	'2022-04-13T15:20:35.651Z',
    1,
	'2022-04-13T15:20:35.651Z',
	'[2022-01-01,2022-03-30]',
	'2022-04-13T15:20:35.651Z',
    10,
	'2022-04-13T15:20:35.651Z');


/*--------------------------------------------------------------------------------------------------------------------*/
CREATE OR REPLACE FUNCTION CheckIfECACanPerformActivity(IdECA INTEGER,IdActivity INTEGER)
RETURNS BOOLEAN
LANGUAGE plpgsql AS $$
BEGIN
    RETURN (EXISTS(
            SELECT *
            FROM "PermitECA" PE
                     JOIN
                 "PermitActivity" PA on PA."IdPermit" = PE."IdPermit"
            WHERE PE."IdECA" = IdECA
              AND PA."IdActivity" = IdActivity
        ));
END;$$;

/*Assignment - Constraint - Check If ECA Can Be Assigned To UOActivity */
ALTER TABLE "Assignment"
  ADD CONSTRAINT ASSIGNMENT_ECA_PERMIT_ACTIVITY CHECK (CheckIfECACanPerformActivity("IdECA","IdActivity"));

/*--------------------------------------------------------------------------------------------------------------------*/


CREATE OR REPLACE FUNCTION CheckPeriodWithProgramPeriod(DateRange daterange,IdProgram INTEGER)
RETURNS BOOLEAN
LANGUAGE plpgsql AS $$
DECLARE
    ProgramDateRange daterange := (SELECT "DateRange" FROM "Program" WHERE "Id"=IdProgram);
BEGIN
    RETURN (ProgramDateRange @> DateRange);
END;$$;

/*Assignment - Constraint - Check if assignment period is during the program period*/
ALTER TABLE "Assignment"
  ADD CONSTRAINT ASSIGNMENT_PERIOD CHECK (CheckPeriodWithProgramPeriod("DateRange","IdProgram"));

/*Prevision - Constraint - Check if prevision period is during the program period*/
ALTER TABLE "Prevision"
  ADD CONSTRAINT PREVISION_PERIOD CHECK (CheckPeriodWithProgramPeriod("DateRange","IdProgram"));



/*--------------------------------------------------------------------------------------------------------------------*/
/*--------------------------------------------------------------------------------------------------------------------*/
/*--------------------------------------------------------------------------------------------------------------------*/



/*Assignment - Trigger - on update or delete. */
CREATE OR REPLACE FUNCTION OnAssignmentUpdateOrDelete()
RETURNS TRIGGER AS $$
DECLARE
    LatestUpdate date := (SELECT GREATEST(OLD."Since",OLD."IdECA_since",OLD."IdProgram_since",OLD."DateRange_since",
        OLD."IdProgram_since",OLD."IdUO_since",OLD."IdActivity_since",OLD."WorkQuantity_since"));
    During daterange := daterange(LatestUpdate,CURRENT_DATE,'[]');
BEGIN

    IF (TG_OP = 'UPDATE') THEN
        IF(OLD."IdECA" <> NEW."IdECA") then
            UPDATE "Assignment" SET "IdECA_since" = CURRENT_DATE WHERE "Id"=NEW."Id";
        ELSIF(OLD."IdUO" <> NEW."IdUO") then
            UPDATE "Assignment" SET "IdUO_since" = CURRENT_DATE WHERE "Id"=NEW."Id";
        ELSIF(OLD."IdActivity" <> NEW."IdActivity") then
            UPDATE "Assignment" SET "IdActivity_since" = CURRENT_DATE WHERE "Id"=NEW."Id";
        ELSIF(OLD."IdProgram" <> NEW."IdProgram") then
            UPDATE "Assignment" SET "IdProgram_since" = CURRENT_DATE WHERE "Id"=NEW."Id";
        ELSIF(OLD."DateRange" <> NEW."DateRange") then
            UPDATE "Assignment" SET "DateRange_since" = CURRENT_DATE WHERE "Id"=NEW."Id";
        ELSIF(OLD."WorkQuantity" <> NEW."WorkQuantity") then
            UPDATE "Assignment" SET "WorkQuantity_since" = CURRENT_DATE WHERE "Id"=NEW."Id";
        ELSE
            /*We Make sure skip 'insert into during' so that only updating the aforementioned fields will insert into
              during table, and not the automatic update of since fields*/
            RETURN OLD;
        END IF;
    END IF;

    INSERT INTO "Assignment_During" VALUES (OLD."Id",OLD."IdECA",OLD."IdUO",OLD."IdActivity",OLD."IdProgram",
                                            OLD."DateRange",OLD."WorkQuantity",During);
    RETURN OLD;
END;$$ LANGUAGE plpgsql ;

CREATE TRIGGER ASSIGNMENT_UPD_DLT_TRIGGER
AFTER UPDATE OR DELETE ON "Assignment" FOR EACH ROW
EXECUTE PROCEDURE OnAssignmentUpdateOrDelete();


/*Prevision - Trigger - on update or delete. */
CREATE OR REPLACE FUNCTION OnPrevisionUpdateOrDelete()
RETURNS TRIGGER AS $$
DECLARE
    LatestUpdate date := (SELECT GREATEST(OLD."Since",OLD."IdProgram_since",OLD."DateRange_since",
        OLD."IdProgram_since",OLD."IdUO_since",OLD."IdActivity_since",OLD."WorkQuantity_since"));
    During daterange := daterange(LatestUpdate,CURRENT_DATE,'[]');
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        IF(OLD."IdUO" <> NEW."IdUO") then
            UPDATE "Prevision" SET "IdUO_since" = CURRENT_DATE WHERE "Id"=NEW."Id";
        ELSIF(OLD."IdActivity" <> NEW."IdActivity") then
            UPDATE "Prevision" SET "IdActivity_since" = CURRENT_DATE WHERE "Id"=NEW."Id";
        ELSIF(OLD."IdProgram" <> NEW."IdProgram") then
            UPDATE "Prevision" SET "IdProgram_since" = CURRENT_DATE WHERE "Id"=NEW."Id";
        ELSIF(OLD."DateRange" <> NEW."DateRange") then
            UPDATE "Prevision" SET "DateRange_since" = CURRENT_DATE WHERE "Id"=NEW."Id";
        ELSIF(OLD."WorkQuantity" <> NEW."WorkQuantity") then
            UPDATE "Prevision" SET "WorkQuantity_since" = CURRENT_DATE WHERE "Id"=NEW."Id";
        ELSE
            RETURN OLD;
        END IF;
    END IF;

    INSERT INTO "Prevision_During" VALUES (OLD."Id",OLD."IdProgram",OLD."IdUO",OLD."IdActivity",OLD."WorkQuantity",OLD."DateRange",During);
    RETURN OLD;
END;$$ LANGUAGE plpgsql ;

CREATE TRIGGER PREVISION_UPD_DLT_TRIGGER
AFTER UPDATE OR DELETE ON "Prevision" FOR EACH ROW
EXECUTE PROCEDURE OnPrevisionUpdateOrDelete();



/*UOActivity - Trigger - on delete. */
CREATE OR REPLACE FUNCTION OnUOActivityDelete()
RETURNS TRIGGER AS $$
DECLARE
    During daterange := daterange(OLD."Since",CURRENT_DATE,'[]');
BEGIN
    INSERT INTO "UOActivity_During" VALUES (OLD."IdActivity",OLD."IdUO",During);
    RETURN OLD;
END;$$ LANGUAGE plpgsql ;

CREATE TRIGGER UO_ACTIVITY_DLT_TRIGGER
AFTER DELETE ON "UOActivity" FOR EACH ROW
EXECUTE PROCEDURE OnUOActivityDelete();

/*--------------------------------------------------------------------------------------------------------------------*/
/*--------------------------------------------------------------------------------------------------------------------*/
/*--------------------------------------------------------------------------------------------------------------------*/

/*UO - Trigger - on update or delete. */
CREATE OR REPLACE FUNCTION OnUOUpdateOrDelete()
RETURNS TRIGGER AS $$
DECLARE
    LatestUpdate date := (SELECT GREATEST(OLD."Since",OLD."Name_since",OLD."IdParent_since", OLD."IdHierarchical_since"));
    During daterange := daterange(LatestUpdate,CURRENT_DATE,'[]');
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        IF(OLD."Name" <> NEW."Name") then
            UPDATE "UO" SET "Name" = CURRENT_DATE WHERE "Id"=NEW."Id";
        ELSIF(OLD."IdParent" <> NEW."IdParent") then
            UPDATE "UO" SET "IdParent" = CURRENT_DATE WHERE "Id"=NEW."Id";
        ELSIF(OLD."IdHierarchical" <> NEW."IdHierarchical") then
            UPDATE "UO" SET "IdHierarchical" = CURRENT_DATE WHERE "Id"=NEW."Id";
        ELSE
            RETURN OLD;
        END IF;
    ELSIF (TG_OP = 'DELETE') THEN
        /*Move UOActivity, Assignments and Prevision to During*/
        DELETE FROM "Prevision" WHERE "IdUO"=OLD."Id";
        DELETE FROM "Assignment" WHERE "IdUO"=OLD."Id";
        DELETE FROM "UOActivity" WHERE "IdUO"=OLD."Id";
    END IF;

    INSERT INTO "UO_During" VALUES (OLD."Id",OLD."Name",OLD."IdParent",OLD."IdHierarchical",During);
    RETURN OLD;
END;$$ LANGUAGE plpgsql ;

CREATE TRIGGER UO_DLT_TRIGGER
BEFORE DELETE ON "UO" FOR EACH ROW
EXECUTE PROCEDURE OnUOUpdateOrDelete();








