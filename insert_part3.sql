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
/* ActivityId: (1-10)  UOId: (23,24,29,54,25,39,46,56)(154-159)
*/
insert into "UOActivity" ("IdActivity", "IdUO") values (1, 23);
insert into "UOActivity" ("IdActivity", "IdUO") values (1, 24);
insert into "UOActivity" ("IdActivity", "IdUO") values (1, 29);
insert into "UOActivity" ("IdActivity", "IdUO") values (2, 54);
insert into "UOActivity" ("IdActivity", "IdUO") values (2, 25);
insert into "UOActivity" ("IdActivity", "IdUO") values (2, 39);
insert into "UOActivity" ("IdActivity", "IdUO") values (3, 46);
insert into "UOActivity" ("IdActivity", "IdUO") values (3, 56);
insert into "UOActivity" ("IdActivity", "IdUO") values (3, 24);
insert into "UOActivity" ("IdActivity", "IdUO") values (4, 23);
insert into "UOActivity" ("IdActivity", "IdUO") values (4, 24);
insert into "UOActivity" ("IdActivity", "IdUO") values (4, 29);
insert into "UOActivity" ("IdActivity", "IdUO") values (5, 54);
insert into "UOActivity" ("IdActivity", "IdUO") values (5, 25);
insert into "UOActivity" ("IdActivity", "IdUO") values (5, 39);
insert into "UOActivity" ("IdActivity", "IdUO") values (6, 46);
insert into "UOActivity" ("IdActivity", "IdUO") values (6, 39);
insert into "UOActivity" ("IdActivity", "IdUO") values (6, 56);
insert into "UOActivity" ("IdActivity", "IdUO") values (7, 24);
insert into "UOActivity" ("IdActivity", "IdUO") values (7, 56);
insert into "UOActivity" ("IdActivity", "IdUO") values (7, 23);
insert into "UOActivity" ("IdActivity", "IdUO") values (8, 24);
insert into "UOActivity" ("IdActivity", "IdUO") values (8, 29);
insert into "UOActivity" ("IdActivity", "IdUO") values (8, 23);
insert into "UOActivity" ("IdActivity", "IdUO") values (9, 159);
insert into "UOActivity" ("IdActivity", "IdUO") values (9, 158);
insert into "UOActivity" ("IdActivity", "IdUO") values (9, 157);
insert into "UOActivity" ("IdActivity", "IdUO") values (10, 156);
insert into "UOActivity" ("IdActivity", "IdUO") values (10, 155);
insert into "UOActivity" ("IdActivity", "IdUO") values (10, 154);

/*------------NeedsPrevision----------------------*/
/* ActivityId and  UOId are consistent with table UOActivity */
insert into "NeedsPrevision" ("Id", "IdUO", "IdActivity", "WorkQuantity", "DateRange") values (1, 23, 1, 5, '[2022-05-27,2022-06-27]');
insert into "NeedsPrevision" ("Id", "IdUO", "IdActivity", "WorkQuantity", "DateRange") values (2, 24, 1, 2, '[2022-05-26,2022-06-27]');
insert into "NeedsPrevision" ("Id", "IdUO", "IdActivity", "WorkQuantity", "DateRange") values (3, 29, 1, 4, '[2022-05-15,2022-06-27]');
insert into "NeedsPrevision" ("Id", "IdUO", "IdActivity", "WorkQuantity", "DateRange") values (4, 54, 2, 1, '[2022-04-27,2022-05-27]');
insert into "NeedsPrevision" ("Id", "IdUO", "IdActivity", "WorkQuantity", "DateRange") values (5, 25, 2, 4, '[2022-06-20,2022-07-27]');
insert into "NeedsPrevision" ("Id", "IdUO", "IdActivity", "WorkQuantity", "DateRange") values (6, 39, 2, 4, '[2022-05-09,2022-06-27]');
insert into "NeedsPrevision" ("Id", "IdUO", "IdActivity", "WorkQuantity", "DateRange") values (7, 46, 3, 3, '[2022-07-13,2022-08-27]');
insert into "NeedsPrevision" ("Id", "IdUO", "IdActivity", "WorkQuantity", "DateRange") values (8, 56, 3, 5, '[2022-05-24,2022-06-27]');
insert into "NeedsPrevision" ("Id", "IdUO", "IdActivity", "WorkQuantity", "DateRange") values (9, 24, 3, 3, '[2021-07-23,2022-08-27]');
insert into "NeedsPrevision" ("Id", "IdUO", "IdActivity", "WorkQuantity", "DateRange") values (10, 23,4, 4,'[2021-05-04,2022-06-27]');
insert into "NeedsPrevision" ("Id", "IdUO", "IdActivity", "WorkQuantity", "DateRange") values (11, 24,4, 3, '[2021-05-29,2022-06-27]');
insert into "NeedsPrevision" ("Id", "IdUO", "IdActivity", "WorkQuantity", "DateRange") values (12, 29, 4, 1, '[2022-06-25,2022-07-27]');
insert into "NeedsPrevision" ("Id", "IdUO", "IdActivity", "WorkQuantity", "DateRange") values (13, 54, 5, 3, '[2021-05-14,2022-06-27]');
insert into "NeedsPrevision" ("Id", "IdUO", "IdActivity", "WorkQuantity", "DateRange") values (14, 25, 5, 5, '[2021-06-14,2022-07-27]');
insert into "NeedsPrevision" ("Id", "IdUO", "IdActivity", "WorkQuantity", "DateRange") values (15, 39, 5, 3, '[2022-06-02,2022-07-27]');
insert into "NeedsPrevision" ("Id", "IdUO", "IdActivity", "WorkQuantity", "DateRange") values (16, 46, 6, 4, '[2021-06-30,2022-07-27]');
insert into "NeedsPrevision" ("Id", "IdUO", "IdActivity", "WorkQuantity", "DateRange") values (17, 39, 6, 5, '[2022-07-08,2022-08-27]');
insert into "NeedsPrevision" ("Id", "IdUO", "IdActivity", "WorkQuantity", "DateRange") values (18, 56, 6, 3, '[2021-07-05,2022-08-27]');
insert into "NeedsPrevision" ("Id", "IdUO", "IdActivity", "WorkQuantity", "DateRange") values (19, 24, 7, 3, '[2021-07-06,2022-08-27]');
insert into "NeedsPrevision" ("Id", "IdUO", "IdActivity", "WorkQuantity", "DateRange") values (20, 56, 7, 1, '[2022-07-18,2022-07-27]');
insert into "NeedsPrevision" ("Id", "IdUO", "IdActivity", "WorkQuantity", "DateRange") values (21, 23, 7, 3, '[2021-06-01,2022-06-27]');
insert into "NeedsPrevision" ("Id", "IdUO", "IdActivity", "WorkQuantity", "DateRange") values (22, 24, 8, 1, '[2021-07-21,2022-08-27]');
insert into "NeedsPrevision" ("Id", "IdUO", "IdActivity", "WorkQuantity", "DateRange") values (23, 29, 8, 2, '[2022-07-26,2022-08-27]');
insert into "NeedsPrevision" ("Id", "IdUO", "IdActivity", "WorkQuantity", "DateRange") values (24, 23, 8, 5, '[2021-06-08,2022-07-27]');
insert into "NeedsPrevision" ("Id", "IdUO", "IdActivity", "WorkQuantity", "DateRange") values (25, 159, 9, 3, '[2022-07-08,2022-08-27]');
insert into "NeedsPrevision" ("Id", "IdUO", "IdActivity", "WorkQuantity", "DateRange") values (26, 158, 9, 1, '[2021-06-02,2022-06-27]');
insert into "NeedsPrevision" ("Id", "IdUO", "IdActivity", "WorkQuantity", "DateRange") values (27, 157, 9, 2, '[2022-05-30,2022-06-27]');
insert into "NeedsPrevision" ("Id", "IdUO", "IdActivity", "WorkQuantity", "DateRange") values (28, 156, 10, 5, '[2022-06-02,2022-07-27]');
insert into "NeedsPrevision" ("Id", "IdUO", "IdActivity", "WorkQuantity", "DateRange") values (29, 155, 10, 1, '[2021-06-14,2022-06-27]');
insert into "NeedsPrevision" ("Id", "IdUO", "IdActivity", "WorkQuantity", "DateRange") values (30, 154, 10, 1, '[2021-07-18,2022-07-27]');


/*------------Affectation----------------------*/
insert into "Affectation" ("Id", "IdPersonnel", "IdProgramme", "IdUO", "DateRange", "WorkQuantity") values (1, 3, 9, 100, '[2022-05-27,2022-06-27]', 1);
insert into "Affectation" ("Id", "IdPersonnel", "IdProgramme", "IdUO", "DateRange", "WorkQuantity") values (2, 13, 8, 100, '[2022-05-27,2022-06-27]', 1);
insert into "Affectation" ("Id", "IdPersonnel", "IdProgramme", "IdUO", "DateRange", "WorkQuantity") values (3, 23, 11, 100, '[2022-05-27,2022-06-27]', 1);
insert into "Affectation" ("Id", "IdPersonnel", "IdProgramme", "IdUO", "DateRange", "WorkQuantity") values (4, 33, 12, 100, '[2022-05-27,2022-06-27]', 1);
insert into "Affectation" ("Id", "IdPersonnel", "IdProgramme", "IdUO", "DateRange", "WorkQuantity") values (5, 43, 10, 100, '[2022-05-27,2022-06-27]', 1);