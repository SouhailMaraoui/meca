/*------------Activity----------------------*/
/* the dataset focus on activities of two departments: gynaecology and neurology
Activity list: injections, diagnoses, surgeries, blood tests, removal of stitches, follow-up consultations, physical rehabilitation training, psychological consultation, academic seminar, experiments
*/
insert into "Activity" ("Id", "Name", "Description") values (1, 'injections', 'This is a description waiting to be added');
insert into "Activity" ("Id", "Name", "Description") values (2, 'diagnoses', 'This is a description waiting to be added');
insert into "Activity" ("Id", "Name", "Description") values (3, 'surgeries', 'This is a description waiting to be added');
insert into "Activity" ("Id", "Name", "Description") values (4, 'blood tests', 'This is a description waiting to be added');
insert into "Activity" ("Id", "Name", "Description") values (5, 'removal of stitches', 'This is a description waiting to be added');
insert into "Activity" ("Id", "Name", "Description") values (6, 'follow-up consultations', 'This is a description waiting to be added');
insert into "Activity" ("Id", "Name", "Description") values (7, 'physical rehabilitation training', 'This is a description waiting to be added');
insert into "Activity" ("Id", "Name", "Description") values (8, 'psychological consultation', 'This is a description waiting to be added');
insert into "Activity" ("Id", "Name", "Description") values (9, 'academic seminar', 'This is a description waiting to be added');
insert into "Activity" ("Id", "Name", "Description") values (10, 'experiments', 'This is a description waiting to be added');

/*------------Programme----------------------*/
/* the dataset focus on programmes of two departments: gynaecology and neurology
Programme list: gynaecology test, gynaecology diagnose, gynaecology therapy, gynaecology surgery, gynaecology recovery, gynaecology research,
                neurology test, neurology diagnose, neurology therapy, neurology surgery, neurology recovery, neurology research
*/
insert into "Programme" ("Id", "Name", "IsPublished") values (1, 'gynaecology test', true);
insert into "Programme" ("Id", "Name", "IsPublished") values (2, 'gynaecology diagnose', true);
insert into "Programme" ("Id", "Name", "IsPublished") values (3, 'gynaecology therapy', false);
insert into "Programme" ("Id", "Name", "IsPublished") values (4, 'gynaecology surgery', false);
insert into "Programme" ("Id", "Name", "IsPublished") values (5, 'gynaecology recovery', false);
insert into "Programme" ("Id", "Name", "IsPublished") values (6, 'gynaecology research', true);
insert into "Programme" ("Id", "Name", "IsPublished") values (7, 'neurology test', true);
insert into "Programme" ("Id", "Name", "IsPublished") values (8, 'neurology diagnose', true);
insert into "Programme" ("Id", "Name", "IsPublished") values (9, 'neurology therapy', false);
insert into "Programme" ("Id", "Name", "IsPublished") values (10, 'neurology surgery', false);
insert into "Programme" ("Id", "Name", "IsPublished") values (11, 'neurology recovery', true);
insert into "Programme" ("Id", "Name", "IsPublished") values (12, 'neurology research', true);

/*------------ActivityPermit----------------------*/
/* the dataset focus on activities of two departments: gynaecology and neurology
Activity list:
*/
insert into "ActivityPermit" ("IdActivity", "IdPermit") values (1, 3);
insert into "ActivityPermit" ("IdActivity", "IdPermit") values (2, 3);
insert into "ActivityPermit" ("IdActivity", "IdPermit") values (3, 3);
insert into "ActivityPermit" ("IdActivity", "IdPermit") values (4, 3);
insert into "ActivityPermit" ("IdActivity", "IdPermit") values (5, 3);
insert into "ActivityPermit" ("IdActivity", "IdPermit") values (6, 3);
insert into "ActivityPermit" ("IdActivity", "IdPermit") values (7, 6);
insert into "ActivityPermit" ("IdActivity", "IdPermit") values (8, 1);
insert into "ActivityPermit" ("IdActivity", "IdPermit") values (9, 3);
insert into "ActivityPermit" ("IdActivity", "IdPermit") values (10, 3);

/*------------UOActivity-------30 rows---------------*/
/* ActivityId: (1-10)  UOId: (61-160)
*/
insert into "UOActivity" ("IdActivity", "IdUO") values (2, 100);
insert into "UOActivity" ("IdActivity", "IdUO") values (4, 90);
insert into "UOActivity" ("IdActivity", "IdUO") values (2, 99);
insert into "UOActivity" ("IdActivity", "IdUO") values (7, 119);
insert into "UOActivity" ("IdActivity", "IdUO") values (7, 139);
insert into "UOActivity" ("IdActivity", "IdUO") values (2, 69);
insert into "UOActivity" ("IdActivity", "IdUO") values (2, 85);
insert into "UOActivity" ("IdActivity", "IdUO") values (7, 143);
insert into "UOActivity" ("IdActivity", "IdUO") values (3, 139);
insert into "UOActivity" ("IdActivity", "IdUO") values (3, 86);
insert into "UOActivity" ("IdActivity", "IdUO") values (3, 137);
insert into "UOActivity" ("IdActivity", "IdUO") values (3, 70);
insert into "UOActivity" ("IdActivity", "IdUO") values (5, 150);
insert into "UOActivity" ("IdActivity", "IdUO") values (10, 100);
insert into "UOActivity" ("IdActivity", "IdUO") values (2, 135);
insert into "UOActivity" ("IdActivity", "IdUO") values (6, 73);
insert into "UOActivity" ("IdActivity", "IdUO") values (8, 119);
insert into "UOActivity" ("IdActivity", "IdUO") values (1, 145);
insert into "UOActivity" ("IdActivity", "IdUO") values (2, 129);
insert into "UOActivity" ("IdActivity", "IdUO") values (1, 141);
insert into "UOActivity" ("IdActivity", "IdUO") values (3, 95);
insert into "UOActivity" ("IdActivity", "IdUO") values (3, 136);
insert into "UOActivity" ("IdActivity", "IdUO") values (6, 117);
insert into "UOActivity" ("IdActivity", "IdUO") values (6, 135);
insert into "UOActivity" ("IdActivity", "IdUO") values (4, 152);
insert into "UOActivity" ("IdActivity", "IdUO") values (9, 92);
insert into "UOActivity" ("IdActivity", "IdUO") values (9, 108);
insert into "UOActivity" ("IdActivity", "IdUO") values (2, 105);
insert into "UOActivity" ("IdActivity", "IdUO") values (10, 101);
insert into "UOActivity" ("IdActivity", "IdUO") values (9, 90);

/*------------NeedsPrevision----------------------*/





/*------------Affectation----------------------*/