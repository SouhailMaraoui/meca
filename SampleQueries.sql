/*Get all detailed view of all ECA*/
SELECT ECA."Firstname",
       ECA."Lastname",
       TypeECA."Name" AS TypeECA,
       ADDR."StreetName",
       ADDR."StreetNumber",
       CITY."Name"    AS CityName,
       REGION."Name"  AS RegionName
FROM "ECA" AS ECA
         INNER JOIN
     "TypeECA" AS TypeECA ON ECA."IdTypeECA" = TypeECA."Id"
         JOIN
     "Address" AS ADDR ON ADDR."Id" = ECA."IdAddress"
         JOIN
     "City" AS CITY ON CITY."Id" = ADDR."IdCity"
         JOIN
     "Region" AS REGION ON REGION."Id" = CITY."IdRegion"
ORDER BY ECA."Id";

/*Get all activities the user with ID 5 can participate in*/
SELECT Act."Name"  AS Activity
FROM "ECA" AS ECA
         JOIN
     "Permit" AS Permit ON ECA."IdTypeECA" = Permit."IdECA"
         JOIN
     "Activity" AS Act ON Act."Id" = Permit."IdActivity"
WHERE ECA."Id"=5;

/*Get all ECA with the activities they can participate in*/
SELECT ECA."Id",
       ECA."Firstname",
       ECA."Lastname",
       array_agg(Act."Name")  AS Activities
FROM "ECA" AS ECA
         JOIN
     "Permit" AS Permit ON ECA."IdTypeECA" = Permit."IdECA"
         JOIN
     "Activity" AS Act ON Act."Id" = Permit."IdActivity"
GROUP BY ECA."Id"
ORDER BY ECA."Id";


/*Get all services in the Department 69*/
SELECT Service."Name"  AS Service
FROM "Service" AS Service
         JOIN
     "Department" AS Department ON Department."Id" = Service."IdDepartment"
WHERE Department."Id"=69;

/*Get all services in all Departments*/
SELECT Department."Id",
       Department."Name",
       array_agg(Service."Name")  AS Services
FROM "Service" AS Service
         JOIN
     "Department" AS Department ON Department."Id" = Service."IdDepartment"
GROUP BY Department."Id"
ORDER BY Department."Id";

/*Get all services in all Establishments*/
SELECT Establishment."Id",
       Establishment."Name",
       array_agg(Service."Name")  AS Services
FROM "Service" AS Service
         JOIN
     "Department" AS Department ON Department."Id" = Service."IdDepartment"
         JOIN
     "Establishment" AS Establishment ON Establishment."Id" = Department."IdEstablishment"
GROUP BY Establishment."Id"
ORDER BY Establishment."Id";

/*Get all activities in Departments*/
SELECT Establishment."Id",
       Establishment."Name",
       array_agg(Activity."Name")  AS Services
FROM "Establishment" AS Establishment
         JOIN
     "UOActivity" AS UOActivity ON UOActivity."IdUO" = Establishment."Id"
         JOIN
     "Activity" AS Activity ON Activity."Id" = UOActivity."IdActivity"
GROUP BY Establishment."Id"
ORDER BY Establishment."Id";


/*Get all activities in Services*/
SELECT Service."Id",
       Service."Name",
       array_agg(Activity."Name")  AS Services
FROM "Service" AS Service
         JOIN
     "UOActivity" AS UOActivity ON UOActivity."IdUO" = Service."Id"
         JOIN
     "Activity" AS Activity ON Activity."Id" = UOActivity."IdActivity"
GROUP BY Service."Id"
ORDER BY Service."Id";


/*Get prevision needs of all Establishments*/
/*The result of this query can be read as "The list of all establishments, that needs an ECA of type X, for an activity Y, for a work quantity of N and on date range D" */
SELECT Establishment."Id" as EstablishmentId,
       Establishment."Name" as EstablishmentName,
       TypeECA."Name" as TypeECA,
       Activity."Name" as ActivityName,
       NeedsPrevision."WorkQuantity",
       NeedsPrevision."DateRange"
FROM "NeedsPrevision" AS NeedsPrevision
         JOIN
     "Establishment" AS Establishment ON Establishment."Id" = NeedsPrevision."IdUO"
         JOIN
     "Activity" AS Activity ON Activity."Id" = NeedsPrevision."IdActivity"
         JOIN
     "TypeECA" AS TypeECA ON TypeECA."Id" = NeedsPrevision."IdTypeECA"
ORDER BY Establishment."Id";