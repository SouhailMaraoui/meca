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