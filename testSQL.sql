//Tous les Eca avec ses typeECA

select pers."Firstname",pers."Lastname",eca."Name" as nameEca,addr."StreetName",addr."StreetNumber",cit."Name" as cityName from "Personnel" as pers 
join "ECA" as  eca on eca."Id" = pers."IdECA"
join "Address" as addr on addr."Id" = pers."IdAddress"
join "City" as cit on cit."Id" = addr."IdCity"

//Tous les ECA avec son permis

select pers."Firstname",pers."Lastname",eca."Name" as nameEca,addr."StreetName",
addr."StreetNumber",cit."Name" as cityName ,perm."Name" as namePermit from "Personnel" as pers 
join "ECA" as  eca on eca."Id" = pers."IdECA"
join "Address" as addr on addr."Id" = pers."IdAddress"
join "City" as cit on cit."Id" = addr."IdCity"
join "Permit" as perm on perm."Id" = pers."IdPermit"


/// Tous les activités de tous les Establishment

select act."Name" as  nameActivity ,esth."Name" as nameEsthablssment,addr."StreetName",cit."Name" as nameCity,reg."Name" as nameregion
from "UOActivity" as uoact 
join "Activity" as act ON act."Id" = uoact."IdActivity"
join "UO" as uo ON uo."Id" = uoact."IdUO"
join "Establishment" as esth ON esth."Id" = uo."Id"
JOIN "Address" as addr ON addr."Id" = esth."IdAddress"
join "City" as cit ON cit."Id" = addr."IdCity"
join "Region" as reg ON reg."Id" = cit."IdRegion"

/// Tous les activités de tous les Departments

select act."Name" as  nameActivity ,dep."Name" as nameDepartment,addr."StreetName",cit."Name" as nameCity,reg."Name" as nameregion
from "UOActivity" as uoact 
join "Activity" as act ON act."Id" = uoact."IdActivity"
join "UO" as uo ON uo."Id" = uoact."IdUO"
join "Department" as dep ON dep."Id" = uo."Id"
join "Establishment" as esth ON esth."Id" = dep."Id"
JOIN "Address" as addr ON addr."Id" = esth."IdAddress"
join "City" as cit ON cit."Id" = addr."IdCity"
join "Region" as reg ON reg."Id" = cit."IdRegion"


// tous les activités de tous les Services
select act."Name" as  nameActivity ,serv."Name" as nameService,addr."StreetName",cit."Name" as nameCity,reg."Name" as nameregion
from "UOActivity" as uoact 
join "Activity" as act ON act."Id" = uoact."IdActivity"
join "UO" as uo ON uo."Id" = uoact."IdUO"
join "Service" as serv ON serv."Id" = uo."Id"
join "Department" as dep ON dep."Id" = serv."IdDepartment"
join "Establishment" as esth ON esth."Id" = dep."Id"
JOIN "Address" as addr ON addr."Id" = esth."IdAddress"
join "City" as cit ON cit."Id" = addr."IdCity"
join "Region" as reg ON reg."Id" = cit."IdRegion"


// tous les activités de tous les Region

select act."Name" as  nameActivity,addr."StreetName",cit."Name" as nameCity,reg."Name" as nameregion
from "UOActivity" as uoact 
join "Activity" as act ON act."Id" = uoact."IdActivity"
join "UO" as uo ON uo."Id" = uoact."IdUO"
join "Region" as reg ON reg."Id" = uo."Id"
join "City" as cit ON cit."IdRegion" = reg."Id"
JOIN "Address" as addr ON addr."IdCity" = cit."Id"


//Tous les activités avec son permit approprié

select act."Name" as nameActivity,perm."Name" as namepermit from "ActivityPermit" as actperm 
join "Activity" as act ON act."Id" = actperm."IdActivity"
join "Permit" as perm ON perm."Id" = actperm."IdPermit"


// Tous les besoins prevision par Establishment

select act."Name" as  nameActivity ,esth."Name" as nameEsthablssment,addr."StreetName"
,cit."Name" as nameCity,reg."Name" as nameregion ,needprev."WorkQuantity",needprev."DateRange"
from "NeedsPrevision" as needprev 
join "UO" as uo ON uo."Id" = needprev."IdUO"
join "Activity" as act ON act."Id" = needprev."IdActivity"
join "UOActivity" as uoact ON uoact."IdActivity" = act."Id"
join "Establishment" as esth ON esth."Id" = uo."Id"
JOIN "Address" as addr ON addr."Id" = esth."IdAddress"
join "City" as cit ON cit."Id" = addr."IdCity"
join "Region" as reg ON reg."Id" = cit."IdRegion"