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



/*------------Assignment----------------------*/
insert into "Assignment" ("Id", "IdECA", "IdProgramme", "IdUO", "DateRange", "WorkQuantity") values (1, 3, 9, 100, '[2022-05-27,2022-06-27]', 1);
insert into "Assignment" ("Id", "IdECA", "IdProgramme", "IdUO", "DateRange", "WorkQuantity") values (2, 13, 8, 100, '[2022-05-27,2022-06-27]', 1);
insert into "Assignment" ("Id", "IdECA", "IdProgramme", "IdUO", "DateRange", "WorkQuantity") values (3, 23, 11, 100, '[2022-05-27,2022-06-27]', 1);
insert into "Assignment" ("Id", "IdECA", "IdProgramme", "IdUO", "DateRange", "WorkQuantity") values (4, 33, 12, 100, '[2022-05-27,2022-06-27]', 1);
insert into "Assignment" ("Id", "IdECA", "IdProgramme", "IdUO", "DateRange", "WorkQuantity") values (5, 43, 10, 100, '[2022-05-27,2022-06-27]', 1);