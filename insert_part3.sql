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
insert into "UOActivity" ("IdActivity", "IdUO") values (1, 100);
insert into "UOActivity" ("IdActivity", "IdUO") values (1, 135);
insert into "UOActivity" ("IdActivity", "IdUO") values (1, 73);
insert into "UOActivity" ("IdActivity", "IdUO") values (2, 119);
insert into "UOActivity" ("IdActivity", "IdUO") values (2, 145);
insert into "UOActivity" ("IdActivity", "IdUO") values (2, 129);
insert into "UOActivity" ("IdActivity", "IdUO") values (3, 141);
insert into "UOActivity" ("IdActivity", "IdUO") values (3, 95);
insert into "UOActivity" ("IdActivity", "IdUO") values (3, 136);
insert into "UOActivity" ("IdActivity", "IdUO") values (4, 117);
insert into "UOActivity" ("IdActivity", "IdUO") values (4, 135);
insert into "UOActivity" ("IdActivity", "IdUO") values (4, 152);
insert into "UOActivity" ("IdActivity", "IdUO") values (5, 92);
insert into "UOActivity" ("IdActivity", "IdUO") values (5, 108);
insert into "UOActivity" ("IdActivity", "IdUO") values (5, 65);
insert into "UOActivity" ("IdActivity", "IdUO") values (6, 81);
insert into "UOActivity" ("IdActivity", "IdUO") values (6, 90);
insert into "UOActivity" ("IdActivity", "IdUO") values (6, 92);
insert into "UOActivity" ("IdActivity", "IdUO") values (7, 72);
insert into "UOActivity" ("IdActivity", "IdUO") values (7, 144);
insert into "UOActivity" ("IdActivity", "IdUO") values (7, 88);
insert into "UOActivity" ("IdActivity", "IdUO") values (8, 104);
insert into "UOActivity" ("IdActivity", "IdUO") values (8, 70);
insert into "UOActivity" ("IdActivity", "IdUO") values (8, 103);
insert into "UOActivity" ("IdActivity", "IdUO") values (9, 125);
insert into "UOActivity" ("IdActivity", "IdUO") values (9, 63);
insert into "UOActivity" ("IdActivity", "IdUO") values (9, 109);
insert into "UOActivity" ("IdActivity", "IdUO") values (10, 78);
insert into "UOActivity" ("IdActivity", "IdUO") values (10, 149);
insert into "UOActivity" ("IdActivity", "IdUO") values (10, 159);

/*------------NeedsPrevision----------------------*/
/* ActivityId and  UOId are consistent with table UOActivity */
insert into "NeedsPrevision" ("Id", "IdUO", "IdActivity", "WorkQuantity", "DateRange") values (1, 1, 1, 5, '[2022-05-27,2022-06-27]');
insert into "NeedsPrevision" ("Id", "IdUO", "IdActivity", "WorkQuantity", "DateRange") values (2, 1, 2, 2, '[2022-05-26,2022-06-27]');
insert into "NeedsPrevision" ("Id", "IdUO", "IdActivity", "WorkQuantity", "DateRange") values (3, 1, 3, 4, '[2022-05-15,2022-06-27]');
insert into "NeedsPrevision" ("Id", "IdUO", "IdActivity", "WorkQuantity", "DateRange") values (4, 2, 4, 1, '[2022-04-27,2022-05-27]');
insert into "NeedsPrevision" ("Id", "IdUO", "IdActivity", "WorkQuantity", "DateRange") values (5, 2, 5, 4, '[2022-06-20,2022-07-27]');
insert into "NeedsPrevision" ("Id", "IdUO", "IdActivity", "WorkQuantity", "DateRange") values (6, 2, 6, 4, '[2022-05-09,2022-06-27]');
insert into "NeedsPrevision" ("Id", "IdUO", "IdActivity", "WorkQuantity", "DateRange") values (7, 3, 1, 3, '[2022-07-13,2022-08-27]');
insert into "NeedsPrevision" ("Id", "IdUO", "IdActivity", "WorkQuantity", "DateRange") values (8, 3, 5, 5, '[2022-05-24,2022-06-27]');
insert into "NeedsPrevision" ("Id", "IdUO", "IdActivity", "WorkQuantity", "DateRange") values (9, 3, 6, 3, '[2021-07-23,2022-08-27]');
insert into "NeedsPrevision" ("Id", "IdUO", "IdActivity", "WorkQuantity", "DateRange") values (10, 4, 7, 4,'[2021-05-04,2022-06-27]');
insert into "NeedsPrevision" ("Id", "IdUO", "IdActivity", "WorkQuantity", "DateRange") values (11, 4, 5, 3, '[2021-05-29,2022-06-27]');
insert into "NeedsPrevision" ("Id", "IdUO", "IdActivity", "WorkQuantity", "DateRange") values (12, 4, 2, 1, '[2022-06-25,2022-07-27]');
insert into "NeedsPrevision" ("Id", "IdUO", "IdActivity", "WorkQuantity", "DateRange") values (13, 5, 2, 3, '[2021-05-14,2022-06-27]');
insert into "NeedsPrevision" ("Id", "IdUO", "IdActivity", "WorkQuantity", "DateRange") values (14, 5, 8, 5, '[2021-06-14,2022-07-27]');
insert into "NeedsPrevision" ("Id", "IdUO", "IdActivity", "WorkQuantity", "DateRange") values (15, 5, 5, 3, '[2022-06-02,2022-07-27]');
insert into "NeedsPrevision" ("Id", "IdUO", "IdActivity", "WorkQuantity", "DateRange") values (16, 6, 1, 4, '[2021-06-30,2022-07-27]');
insert into "NeedsPrevision" ("Id", "IdUO", "IdActivity", "WorkQuantity", "DateRange") values (17, 6, 6, 5, '[2022-07-08,2022-08-27]');
insert into "NeedsPrevision" ("Id", "IdUO", "IdActivity", "WorkQuantity", "DateRange") values (18, 6, 2, 3, '[2021-07-05,2022-08-27]');
insert into "NeedsPrevision" ("Id", "IdUO", "IdActivity", "WorkQuantity", "DateRange") values (19, 7, 2, 3, '[2021-07-06,2022-08-27]');
insert into "NeedsPrevision" ("Id", "IdUO", "IdActivity", "WorkQuantity", "DateRange") values (20, 7, 4, 1, '[2022-07-18,2022-07-27]');
insert into "NeedsPrevision" ("Id", "IdUO", "IdActivity", "WorkQuantity", "DateRange") values (21, 7, 8, 3, '[2021-06-01,2022-06-27]');
insert into "NeedsPrevision" ("Id", "IdUO", "IdActivity", "WorkQuantity", "DateRange") values (22, 8, 4, 1, '[2021-07-21,2022-08-27]');
insert into "NeedsPrevision" ("Id", "IdUO", "IdActivity", "WorkQuantity", "DateRange") values (23, 8, 7, 2, '[2022-07-26,2022-08-27]');
insert into "NeedsPrevision" ("Id", "IdUO", "IdActivity", "WorkQuantity", "DateRange") values (24, 8, 3, 5, '[2021-06-08,2022-07-27]');
insert into "NeedsPrevision" ("Id", "IdUO", "IdActivity", "WorkQuantity", "DateRange") values (25, 9, 6, 3, '[2022-07-08,2022-08-27]');
insert into "NeedsPrevision" ("Id", "IdUO", "IdActivity", "WorkQuantity", "DateRange") values (26, 9, 9, 1, '[2021-06-02,2022-06-27]');
insert into "NeedsPrevision" ("Id", "IdUO", "IdActivity", "WorkQuantity", "DateRange") values (27, 9, 5, 2, '[2022-05-30,2022-06-27]');
insert into "NeedsPrevision" ("Id", "IdUO", "IdActivity", "WorkQuantity", "DateRange") values (28, 10, 8, 5, '[2022-06-02,2022-07-27]');
insert into "NeedsPrevision" ("Id", "IdUO", "IdActivity", "WorkQuantity", "DateRange") values (29, 10, 9, 1, '[2021-06-14,2022-06-27]');
insert into "NeedsPrevision" ("Id", "IdUO", "IdActivity", "WorkQuantity", "DateRange") values (30, 10, 5, 1, '[2021-07-18,2022-07-27]');


/*------------Affectation----------------------*/
insert into "Affectation" ("Id", "IdPersonnel", "IdProgramme", "IdUO", "DateRange", "WorkQuantity") values (1, 3, 9, 100, ['2022-05-27','2022-06-27'], 1);
insert into "Affectation" ("Id", "IdPersonnel", "IdProgramme", "IdUO", "DateRange", "WorkQuantity") values (2, 13, 8, 100, ['2022-05-27','2022-06-27'], 1);
insert into "Affectation" ("Id", "IdPersonnel", "IdProgramme", "IdUO", "DateRange", "WorkQuantity") values (3, 23, 11, 100, ['2022-05-27','2022-06-27'], 1);
insert into "Affectation" ("Id", "IdPersonnel", "IdProgramme", "IdUO", "DateRange", "WorkQuantity") values (4, 33, 12, 100, ['2022-05-27','2022-06-27'], 1);
insert into "Affectation" ("Id", "IdPersonnel", "IdProgramme", "IdUO", "DateRange", "WorkQuantity") values (5, 43, 10, 100, ['2022-05-27','2022-06-27'], 1)