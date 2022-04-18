
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


insert into "UOActivity" 
("Id", "IdActivity", "IdUO", "Since") 
values (1, 1, 2,'2022-04-13T15:20:35.651Z');


insert into "ECA" 
("Id", "Since", "Lastname", "Lastname_since","Firstname","Firstname_since") 
values (1, '2022-04-13T15:20:35.651Z', 'testlastname','2022-04-13T15:20:35.651Z','testFirstname','2022-04-13T15:20:35.651Z');


insert into "Permit" 
("Id", "Name", "ValidityDaterange") 
values (1, 'permit1', 'testlastname','[2022-05-27,2022-06-27]');


insert into "PermitECA" 
("IdPermit", "IdECA") 
values (1, 1);


insert into "PermitActivity" 
("IdPermit", "IdActivity") 
values (1, 1);


insert into "Permit" 
("Id", "Name", "ValidityDaterange") 
values (1, 'permit1', 'testlastname','[2022-05-27,2022-06-27]');

insert into "Program" 
("Id", "Since", "Name","Name_since","DateRange","DateRange_since","IsPublished","IsPublished_since") 
values (1, '2022-04-13T15:20:35.651Z', 'testProgram','2022-04-13T15:20:35.651Z','[2022-05-27,2022-06-27]',true,'2022-04-13T15:20:35.651Z');

insert into "Assignment" 
("Id", "Since", "IdECA","IdECA_since","IdUOActivity","IdUOActivity_since","IdProgram","IdProgram_since","DateRange","DateRange_since","WorkQuantity","WorkQuantity_since") 
values (1, '2022-04-13T15:20:35.651Z', 1,'2022-04-13T15:20:35.651Z',1,'2022-04-13T15:20:35.651Z',1,'2022-04-13T15:20:35.651Z','[2022-05-27,2022-06-27]','2022-04-13T15:20:35.651Z',15,'2022-04-13T15:20:35.651Z');


insert into "Prevision" 
("Id", "Since", "IdProgram","IdProgram_since","IdUOActivity","IdUOActivity_since","WorkQuantity","WorkQuantity_since","DateRange","DateRange_since") 
values (1, '2022-04-13T15:20:35.651Z', 1,'2022-04-13T15:20:35.651Z',1,'2022-04-13T15:20:35.651Z',41,'2022-04-13T15:20:35.651Z','[2022-05-27,2022-06-27]','2022-04-13T15:20:35.651Z');


/*FUNCTION create SEQUENCE assigment */
CREATE SEQUENCE assignment_id_seq
  START WITH 1
  INCREMENT BY 1
  MINVALUE 1
  NO MAXVALUE
  CACHE 1;

/*FUNCTION create assigment */
 CREATE OR REPLACE FUNCTION create_assignment(IdECA integer,IdUOActivity integer,IdProgram integer,DateRange daterange,WorkQuantity integer)
  RETURNS TABLE (Id VARCHAR(40)) AS 
  $BODY$
    insert into "Assignment" 
    ("Id", "Since", "IdECA","IdECA_since","IdUOActivity","IdUOActivity_since","IdProgram","IdProgram_since","DateRange","DateRange_since","WorkQuantity","WorkQuantity_since") 
    values (nextval('assignment_id_seq'), now(), IdECA,now(),IdUOActivity,now(),IdProgram,now(),DateRange,now(),WorkQuantity,now())
    returning "Assignment"."Id";
  $BODY$
    LANGUAGE SQL

/*TEST FUNCTION create assigment */
select create_assignment(1,1,1,'[2022-04-14,2022-04-20]',25)

/*check  FUNCTION create assigment */
select * from "Assignment"

/* add extension for  btree_gist */
 CREATE EXTENSION btree_gist

/* add constraint for  Assignment to add ECA availability check */
ALTER TABLE "Assignment"
  ADD CONSTRAINT recurring_eca_period_excl EXCLUDE USING GIST ("IdECA" WITH = ,"DateRange" WITH &&)



/*FUNCTION create SEQUENCE prevision */
CREATE SEQUENCE prevision_id_seq
  START WITH 1
  INCREMENT BY 1
  MINVALUE 1
  NO MAXVALUE
  CACHE 1;

/*FUNCTION create prevision */
 CREATE OR REPLACE FUNCTION create_prevision(IdProgram integer,IdUOActivity integer,WorkQuantity integer,DateRange daterange)
  RETURNS TABLE (Id VARCHAR(40)) AS 
  $BODY$
    insert into "Prevision" 
    ("Id", "Since", "IdProgram","IdProgram_since","IdUOActivity","IdUOActivity_since","WorkQuantity","WorkQuantity_since","DateRange","DateRange_since") 
    values (nextval('assignment_id_seq'), now(), IdProgram,now(),IdUOActivity,now(),WorkQuantity,now(),DateRange,now())
    returning "Prevision"."Id";
  $BODY$
    LANGUAGE SQL
    
/*TEST FUNCTION create prevision */
select create_prevision(1, 1, 66, '[2022-04-14,2022-04-20]')

/*check  FUNCTION create prevision */
select * from "Prevision"