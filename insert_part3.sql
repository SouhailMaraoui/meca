/*------------Activity----------------------*/
/* the dataset focus on activities of two departments: gynaecology and neurology
Activity list: injections, diagnoses, surgeries, blood tests, removal of stitches, follow-up consultations, physical rehabilitation training, psychological consultation, academic seminar, experiments
*/
insert into "Activity" ("Id", "Name", "Description") values (1, 'injections', 'Description');
insert into "Activity" ("Id", "Name", "Description") values (2, 'diagnoses', 'Description');
insert into "Activity" ("Id", "Name", "Description") values (3, 'surgeries', 'Description');
insert into "Activity" ("Id", "Name", "Description") values (4, 'blood tests', 'Description');
insert into "Activity" ("Id", "Name", "Description") values (5, 'removal of stitches', 'Description');
insert into "Activity" ("Id", "Name", "Description") values (6, 'follow-up consultations', 'Description');
insert into "Activity" ("Id", "Name", "Description") values (7, 'physical rehabilitation training', 'Description');
insert into "Activity" ("Id", "Name", "Description") values (8, 'psychological consultation', 'Description');
insert into "Activity" ("Id", "Name", "Description") values (9, 'academic seminar', 'Description');
insert into "Activity" ("Id", "Name", "Description") values (10, 'experiments', 'Description');


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
insert into "NeedsPrevision" ("Id", "IdUO", "IdActivity", "IdTypeECA", "WorkQuantity", "DateRange") values (1, 23, 1, 1, 5, '[2022-05-27,2022-06-27]');
insert into "NeedsPrevision" ("Id", "IdUO", "IdActivity", "IdTypeECA", "WorkQuantity", "DateRange") values (2, 24, 1, 2, 2, '[2022-05-26,2022-06-27]');
insert into "NeedsPrevision" ("Id", "IdUO", "IdActivity", "IdTypeECA", "WorkQuantity", "DateRange") values (3, 29, 1, 3, 4, '[2022-05-15,2022-06-27]');
insert into "NeedsPrevision" ("Id", "IdUO", "IdActivity", "IdTypeECA", "WorkQuantity", "DateRange") values (4, 54, 2, 4, 1, '[2022-04-27,2022-05-27]');
insert into "NeedsPrevision" ("Id", "IdUO", "IdActivity", "IdTypeECA", "WorkQuantity", "DateRange") values (5, 25, 2, 6, 4, '[2022-06-20,2022-07-27]');
insert into "NeedsPrevision" ("Id", "IdUO", "IdActivity", "IdTypeECA", "WorkQuantity", "DateRange") values (6, 39, 2, 7, 4, '[2022-05-09,2022-06-27]');
insert into "NeedsPrevision" ("Id", "IdUO", "IdActivity", "IdTypeECA", "WorkQuantity", "DateRange") values (7, 46, 3, 1, 3, '[2022-07-13,2022-08-27]');
insert into "NeedsPrevision" ("Id", "IdUO", "IdActivity", "IdTypeECA", "WorkQuantity", "DateRange") values (8, 56, 3, 2, 5, '[2022-05-24,2022-06-27]');
insert into "NeedsPrevision" ("Id", "IdUO", "IdActivity", "IdTypeECA", "WorkQuantity", "DateRange") values (9, 24, 3, 3, 3, '[2021-07-23,2022-08-27]');
insert into "NeedsPrevision" ("Id", "IdUO", "IdActivity", "IdTypeECA", "WorkQuantity", "DateRange") values (10, 23,4, 4, 4,'[2021-05-04,2022-06-27]');
insert into "NeedsPrevision" ("Id", "IdUO", "IdActivity", "IdTypeECA", "WorkQuantity", "DateRange") values (11, 24,4, 8, 3, '[2021-05-29,2022-06-27]');
insert into "NeedsPrevision" ("Id", "IdUO", "IdActivity", "IdTypeECA", "WorkQuantity", "DateRange") values (12, 29, 4, 1, 1, '[2022-06-25,2022-07-27]');
insert into "NeedsPrevision" ("Id", "IdUO", "IdActivity", "IdTypeECA", "WorkQuantity", "DateRange") values (13, 54, 5, 2, 3, '[2021-05-14,2022-06-27]');
insert into "NeedsPrevision" ("Id", "IdUO", "IdActivity", "IdTypeECA", "WorkQuantity", "DateRange") values (14, 25, 5, 3, 5, '[2021-06-14,2022-07-27]');
insert into "NeedsPrevision" ("Id", "IdUO", "IdActivity", "IdTypeECA", "WorkQuantity", "DateRange") values (15, 39, 5, 4, 3, '[2022-06-02,2022-07-27]');
insert into "NeedsPrevision" ("Id", "IdUO", "IdActivity", "IdTypeECA", "WorkQuantity", "DateRange") values (16, 46, 6, 6, 4, '[2021-06-30,2022-07-27]');
insert into "NeedsPrevision" ("Id", "IdUO", "IdActivity", "IdTypeECA", "WorkQuantity", "DateRange") values (17, 39, 6, 7, 5, '[2022-07-08,2022-08-27]');
insert into "NeedsPrevision" ("Id", "IdUO", "IdActivity", "IdTypeECA", "WorkQuantity", "DateRange") values (18, 56, 6, 1, 3, '[2021-07-05,2022-08-27]');
insert into "NeedsPrevision" ("Id", "IdUO", "IdActivity", "IdTypeECA", "WorkQuantity", "DateRange") values (19, 24, 7, 2, 3, '[2021-07-06,2022-08-27]');
insert into "NeedsPrevision" ("Id", "IdUO", "IdActivity", "IdTypeECA", "WorkQuantity", "DateRange") values (20, 56, 7, 3, 1, '[2022-07-18,2022-07-27]');
insert into "NeedsPrevision" ("Id", "IdUO", "IdActivity", "IdTypeECA", "WorkQuantity", "DateRange") values (21, 23, 7, 4, 3, '[2021-06-01,2022-06-27]');
insert into "NeedsPrevision" ("Id", "IdUO", "IdActivity", "IdTypeECA", "WorkQuantity", "DateRange") values (22, 24, 8, 8, 1, '[2021-07-21,2022-08-27]');
insert into "NeedsPrevision" ("Id", "IdUO", "IdActivity", "IdTypeECA", "WorkQuantity", "DateRange") values (23, 29, 8, 6, 2, '[2022-07-26,2022-08-27]');
insert into "NeedsPrevision" ("Id", "IdUO", "IdActivity", "IdTypeECA", "WorkQuantity", "DateRange") values (24, 23, 8, 7, 5, '[2021-06-08,2022-07-27]');
insert into "NeedsPrevision" ("Id", "IdUO", "IdActivity", "IdTypeECA", "WorkQuantity", "DateRange") values (25, 159, 9, 1, 3, '[2022-07-08,2022-08-27]');
insert into "NeedsPrevision" ("Id", "IdUO", "IdActivity", "IdTypeECA", "WorkQuantity", "DateRange") values (26, 158, 9, 2, 1, '[2021-06-02,2022-06-27]');
insert into "NeedsPrevision" ("Id", "IdUO", "IdActivity", "IdTypeECA", "WorkQuantity", "DateRange") values (27, 157, 9, 3, 2, '[2022-05-30,2022-06-27]');
insert into "NeedsPrevision" ("Id", "IdUO", "IdActivity", "IdTypeECA", "WorkQuantity", "DateRange") values (28, 156, 10, 5, 5, '[2022-06-02,2022-07-27]');
insert into "NeedsPrevision" ("Id", "IdUO", "IdActivity", "IdTypeECA", "WorkQuantity", "DateRange") values (29, 155, 10, 9, 1, '[2021-06-14,2022-06-27]');
insert into "NeedsPrevision" ("Id", "IdUO", "IdActivity", "IdTypeECA", "WorkQuantity", "DateRange") values (30, 154, 10, 8, 1, '[2021-07-18,2022-07-27]');

