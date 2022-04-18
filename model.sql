CREATE TABLE "Hierarchy" (
	"Id" integer NOT NULL PRIMARY KEY,
	"Name" varchar(50) NOT NULL
);

CREATE TABLE "UO"(
	"Id" integer NOT NULL PRIMARY KEY,
	"Since" date NOT NULL,
	"Name" varchar(50) NOT NULL,
	"Name_since" date NOT NULL,
	"IdParent" integer NOT NULL REFERENCES "UO"("Id"),
	"IdParent_since" date NOT NULL,
	"IdHierarchical" integer NOT NULL REFERENCES "Hierarchy"("Id"),
	"IdHierarchical_since" date NOT NULL
);

CREATE TABLE "UO_During"(
	"Id" integer NOT NULL PRIMARY KEY,
	"Name" varchar(50) NOT NULL,
	"IdParent" integer NOT NULL,
	"IdHierarchical" integer NOT NULL REFERENCES "Hierarchy"("Id"),
	"During" daterange NOT NULL
);

/*CREATE TABLE "UO_Parent"(
	"Id" integer NOT NULL PRIMARY KEY REFERENCES "UO"("Id"),
	"IdParent" integer NOT NULL REFERENCES "UO"("Id")
	"IdParent" date NOT NULL,
);
CREATE TABLE "UO_Parent_during"(
	"Id" integer NOT NULL PRIMARY KEY REFERENCES "UO_During"("Id"),
	"IdParent" integer NOT NULL REFERENCES "UO"("Id")
);
CREATE TABLE "UO_Parent_historic"(
	"Id" integer NOT NULL PRIMARY KEY REFERENCES "UO_During"("Id"),
	"IdParent" integer NOT NULL REFERENCES "UO_During"("Id")
);*/


/*CREATE TABLE "Region"(
	"Id" integer NOT NULL PRIMARY KEY REFERENCES "UO"("Id"),
	"Since" date NOT NULL
);
CREATE TABLE "Region_During"(
	"Id" integer NOT NULL PRIMARY KEY REFERENCES "UO_During"("Id"),
	"Since" date NOT NULL
);

CREATE TABLE "Establishment"(
	"Id" integer NOT NULL PRIMARY KEY REFERENCES "UO"("Id"),
	"IdRegion" integer NOT NULL REFERENCES "UO"("Id"),
	"Since" date NOT NULL
);
CREATE TABLE "Establishment_During"(
	"Id" integer NOT NULL PRIMARY KEY REFERENCES "UO_During"("Id"),
	"IdRegion" integer NOT NULL REFERENCES "UO_During"("Id"),
	"During" daterange NOT NULL
);

CREATE TABLE "Department"(
	"Id" integer NOT NULL PRIMARY KEY REFERENCES "UO"("Id"),
	"IdEstablishment" integer NOT NULL REFERENCES "UO"("Id"),
	"Since" date NOT NULL
);
CREATE TABLE "Department_During"(
	"Id" integer NOT NULL PRIMARY KEY REFERENCES "UO_During"("Id"),
	"IdEstablishment" integer NOT NULL REFERENCES "UO_During"("Id"),
	"During" daterange NOT NULL
);

CREATE TABLE "Service"(
	"Id" integer NOT NULL PRIMARY KEY REFERENCES "UO"("Id"),
	"IdDepartment" integer NOT NULL REFERENCES "UO"("Id"),
	"Since" date NOT NULL
);
CREATE TABLE "Service_During"(
	"Id" integer NOT NULL PRIMARY KEY REFERENCES "UO_During"("Id"),
	"IdDepartment" integer NOT NULL REFERENCES "UO_During"("Id"),
	"During" daterange NOT NULL
);
*/





CREATE TABLE "ActivityWorkUnit"(
	"Id" integer NOT NULL PRIMARY KEY,
	"Since" date NOT NULL,
	"Name" varchar(50) NOT NULL,
	"Name_since" date NOT NULL
);

CREATE TABLE "Activity"(
	"Id" integer NOT NULL PRIMARY KEY,
	"Since" date NOT NULL,
	"IdWorkUnit" integer NOT NULL REFERENCES "ActivityWorkUnit"("Id"),
	"IdWorkUnit_since" date NOT NULL,
	"Name" varchar(50) NOT NULL,
	"Name_since" date NOT NULL,
	"Description" varchar(50) NOT NULL,
	"Description_since" date NOT NULL
);



CREATE TABLE "UOActivity"(
    "Id" integer NOT NULL PRIMARY KEY,
	"IdActivity" integer NOT NULL REFERENCES "Activity"("Id"),
	"IdUO" integer NOT NULL REFERENCES "UO"("Id"),
	"Since" date NOT NULL
);
CREATE TABLE "UOActivity_During"(
    "Id" integer NOT NULL PRIMARY KEY,
	"IdActivity" integer NOT NULL REFERENCES "Activity"("Id"),
	"IdUO" integer NOT NULL REFERENCES "UO_During"("Id"),
	"During" daterange NOT NULL
);


CREATE TABLE "ECA"(
	"Id" integer NOT NULL PRIMARY KEY,
	"Since" date NOT NULL,
	"Lastname" varchar(50) NOT NULL,
	"Lastname_since" date NOT NULL,
	"Firstname" varchar(50) NOT NULL,
	"Firstname_since" date NOT NULL
);

CREATE TABLE "Permit"(
	"Id" integer NOT NULL PRIMARY KEY ,
	"Name"  varchar(50) NOT NULL,
	"ValidityDaterange" daterange NOT NULL
);

CREATE TABLE "PermitECA"(
	"IdPermit" integer NOT NULL REFERENCES "Permit"("Id"),
	"IdECA" integer NOT NULL REFERENCES "ECA"("Id")
);

CREATE TABLE "PermitActivity"(
	"IdPermit" integer NOT NULL REFERENCES "Permit"("Id"),
	"IdActivity" integer NOT NULL REFERENCES "Activity"("Id")
);

CREATE TABLE "Program"(
	"Id" integer NOT NULL PRIMARY KEY,
	"Since" date NOT NULL,
	"Name" varchar(50) NOT NULL,
	"Name_since" date NOT NULL,
	"DateRange" daterange NOT NULL,
	"DateRange_since" date NOT NULL,
	"IsPublished" boolean NOT NULL,
	"IsPublished_since" date NOT NULL
);


CREATE TABLE "Prevision"(
	"Id" integer NOT NULL PRIMARY KEY,
	"Since" date NOT NULL,
	"IdProgram" integer NOT NULL REFERENCES "Program"("Id"),
	"IdProgram_since" date NOT NULL,
	"IdUOActivity" integer NOT NULL REFERENCES "UOActivity"("Id"),
	"IdUOActivity_since" date NOT NULL,
	"WorkQuantity" integer NOT NULL,
	"WorkQuantity_since" date NOT NULL,
	"DateRange" daterange NOT NULL,
	"DateRange_since" date NOT NULL
);
CREATE TABLE "Prevision_During"(
	"Id" integer NOT NULL PRIMARY KEY,
	"IdProgram" integer NOT NULL REFERENCES "Program"("Id"),
	"IdUOActivity" integer NOT NULL REFERENCES "UOActivity"("Id"),
	"WorkQuantity" integer NOT NULL,
	"DateRange" daterange NOT NULL,
	"During" daterange NOT NULL
);
CREATE TABLE "Prevision_Historic"(
	"Id" integer NOT NULL PRIMARY KEY,
	"IdProgram" integer NOT NULL REFERENCES "Program"("Id"),
	"IdUOActivity" integer NOT NULL REFERENCES "UOActivity_During"("Id"),
	"WorkQuantity" integer NOT NULL,
	"DateRange" daterange NOT NULL,
	"During" daterange NOT NULL
);



CREATE TABLE "Assignment"(
	"Id" integer NOT NULL PRIMARY KEY,
	"Since" date NOT NULL,
	"IdECA" integer NOT NULL REFERENCES "ECA"("Id"),
	"IdECA_since" date NOT NULL,
	"IdUOActivity" integer NOT NULL REFERENCES "UOActivity"("Id"),
	"IdUOActivity_since" date NOT NULL,
	"IdProgram" integer NOT NULL REFERENCES "Program"("Id"),
	"IdProgram_since" date NOT NULL,
	"DateRange" daterange NOT NULL,
	"DateRange_since" date NOT NULL,
	"WorkQuantity" integer NOT NULL,
	"WorkQuantity_since" date NOT NULL
);
CREATE TABLE "Assignment_During"(
	"Id" integer NOT NULL PRIMARY KEY,
	"IdECA" integer NOT NULL REFERENCES "ECA"("Id"),
	"IdUOActivity" integer NOT NULL REFERENCES "UOActivity"("Id"),
	"IdProgram" integer NOT NULL REFERENCES "Program"("Id"),
	"DateRange" daterange NOT NULL,
	"WorkQuantity" integer NOT NULL,
	"During" daterange NOT NULL
);
CREATE TABLE "Assignment_Historic"(
	"Id" integer NOT NULL PRIMARY KEY,
	"IdECA" integer NOT NULL REFERENCES "ECA"("Id"),
	"IdUOActivity" integer NOT NULL REFERENCES "UOActivity_During"("Id"),
	"IdProgram" integer NOT NULL REFERENCES "Program"("Id"),
	"DateRange" daterange NOT NULL,
	"WorkQuantity" integer NOT NULL,
	"During" daterange NOT NULL
);