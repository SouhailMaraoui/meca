select pers."Firstname",pers."Lastname",eca."Name" as nameEca,addr."StreetName",addr."StreetNumber",cit."Name" as cityName from "Personnel" as pers 
join "ECA" as  eca on eca."Id" = pers."IdECA"
join "Address" as addr on addr."Id" = pers."IdAddress"
join "City" as cit on cit."Id" = addr."IdCity"


select pers."Firstname",pers."Lastname",eca."Name" as nameEca,addr."StreetName",
addr."StreetNumber",cit."Name" as cityName ,perm."Name" as namePermit from "Personnel" as pers 
join "ECA" as  eca on eca."Id" = pers."IdECA"
join "Address" as addr on addr."Id" = pers."IdAddress"
join "City" as cit on cit."Id" = addr."IdCity"
join "Permit" as perm on perm."Id" = pers."IdPermit"


/// Tous les activité de tous les Establishment

select act."Name" as  nameActivity ,esth."Name" as nameEsthablssment,addr."StreetName",cit."Name" as nameCity,reg."Name" as nameregion
from "UOActivity" as uoact 
join "Activity" as act ON act."Id" = uoact."IdActivity"
join "UO" as uo ON uo."Id" = uoact."IdUO"
join "Establishment" as esth ON esth."Id" = uo."Id"
JOIN "Address" as addr ON addr."Id" = esth."IdAddress"
join "City" as cit ON cit."Id" = addr."IdCity"
join "Region" as reg ON reg."Id" = cit."IdRegion"

/// Tous les activité de tous les Department

select act."Name" as  nameActivity ,dep."Name" as nameDepartment,addr."StreetName",cit."Name" as nameCity,reg."Name" as nameregion
from "UOActivity" as uoact 
join "Activity" as act ON act."Id" = uoact."IdActivity"
join "UO" as uo ON uo."Id" = uoact."IdUO"
join "Department" as dep ON dep."Id" = uo."Id"
join "Establishment" as esth ON esth."Id" = dep."Id"
JOIN "Address" as addr ON addr."Id" = esth."IdAddress"
join "City" as cit ON cit."Id" = addr."IdCity"
join "Region" as reg ON reg."Id" = cit."IdRegion"
