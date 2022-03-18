DROP TABLE IF EXISTS "Activity" CASCADE
;

DROP TABLE IF EXISTS "TypeActivity" CASCADE
;

DROP TABLE IF EXISTS "ActivityPermit" CASCADE
;

DROP TABLE IF EXISTS "Address" CASCADE
;

DROP TABLE IF EXISTS "Affectation" CASCADE
;

DROP TABLE IF EXISTS "AffectationPrevision" CASCADE
;

DROP TABLE IF EXISTS "City" CASCADE
;

DROP TABLE IF EXISTS "Department" CASCADE
;

DROP TABLE IF EXISTS "ECA" CASCADE
;

DROP TABLE IF EXISTS "Establishment" CASCADE
;

DROP TABLE IF EXISTS "NeedsPrevision" CASCADE
;

DROP TABLE IF EXISTS "Permit" CASCADE
;

DROP TABLE IF EXISTS "Personnel" CASCADE
;

DROP TABLE IF EXISTS "Programme" CASCADE
;

DROP TABLE IF EXISTS "Region" CASCADE
;

DROP TABLE IF EXISTS "Service" CASCADE
;

DROP TABLE IF EXISTS "UO" CASCADE
;

DROP TABLE IF EXISTS "UOActivity" CASCADE
;

CREATE TABLE "Activity"
(
	"Id" integer NOT NULL,
	"Name" varchar(50) NOT NULL,
	"Description" varchar(50) NOT NULL
)
;

CREATE TABLE "ActivityPermit"
(
	"IdActivity" integer NOT NULL,
	"IdPermit" integer NOT NULL
)
;

CREATE TABLE "Address"
(
	"Id" integer NOT NULL,
	"IdCity" integer NOT NULL,
	"StreetName" varchar(50) NOT NULL,
	"StreetNumber" varchar(50) NOT NULL
)
;

CREATE TABLE "Affectation"
(
	"Id" integer NOT NULL,
	"IdPersonnel" integer NOT NULL,
	"IdProgramme" integer NOT NULL,
	"IdUO" integer NOT NULL,
	"DateRange" daterange NOT NULL,
	"WorkQuantity" integer NOT NULL
)
;

CREATE TABLE "City"
(
	"Id" integer NOT NULL,
	"IdRegion" integer NOT NULL,
	"Name" varchar(50) NOT NULL
)
;

CREATE TABLE "Department"
(
	"Id" integer NOT NULL,
	"IdEstablishment" integer NOT NULL,
	"Name" varchar(50) NOT NULL
)
;

CREATE TABLE "ECA"
(
	"Id" integer NOT NULL,
	"Name" integer NOT NULL
)
;

CREATE TABLE "Establishment"
(
	"Id" integer NOT NULL,
	"IdAddress" integer NOT NULL,
	"Name" varchar(50) NOT NULL
)
;

CREATE TABLE "NeedsPrevision"
(
	"Id" integer NOT NULL,
	"IdUO" integer NOT NULL,
	"IdActivity" integer NOT NULL,
	"WorkQuantity" integer NOT NULL,
	"DateRange" daterange NOT NULL
)
;

CREATE TABLE "Permit"
(
	"Id" integer NOT NULL,
	"Name" varchar(50) NOT NULL
)
;

CREATE TABLE "Personnel"
(
	"Id" integer NOT NULL,
	"IdECA" integer NOT NULL,
	"IdPermit" integer NOT NULL,
	"Lastname" varchar(50) NOT NULL,
	"Firstname" varchar(50) NOT NULL,
	"IdAddress" integer NOT NULL
)
;

CREATE TABLE "Programme"
(
	"Id" integer NOT NULL,
	"Name" varchar(50) NOT NULL,
	"IsPublished" boolean NOT NULL
)
;

CREATE TABLE "Region"
(
	"Id" integer NOT NULL,
	"Name" varchar(50) NOT NULL
)
;

CREATE TABLE "Service"
(
	"Id" integer NOT NULL,
	"IdDepartment" integer NOT NULL,
	"Name" varchar(50) NOT NULL
)
;

CREATE TABLE "UO"
(
	"Id" integer NOT NULL,
	"Name" varchar(50) NOT NULL
)
;

CREATE TABLE "UOActivity"
(
	"IdActivity" integer NOT NULL,
	"IdUO" integer NOT NULL
)
;

ALTER TABLE "Activity" ADD CONSTRAINT "PK_Activity"
	PRIMARY KEY ("Id")
;

ALTER TABLE "ActivityPermit" ADD CONSTRAINT "PK_ActivityPermit"
	PRIMARY KEY ("IdPermit","IdActivity")
;

ALTER TABLE "Address" ADD CONSTRAINT "PK_Address"
	PRIMARY KEY ("Id")
;

ALTER TABLE "Affectation" ADD CONSTRAINT "PK_Affectation"
	PRIMARY KEY ("Id")
;

ALTER TABLE "City" ADD CONSTRAINT "PK_City"
	PRIMARY KEY ("Id")
;

ALTER TABLE "Department" ADD CONSTRAINT "PK_Department"
	PRIMARY KEY ("Id")
;

ALTER TABLE "ECA" ADD CONSTRAINT "PK_ECA"
	PRIMARY KEY ("Id")
;

ALTER TABLE "Establishment" ADD CONSTRAINT "PK_Establishment"
	PRIMARY KEY ("Id")
;

ALTER TABLE "NeedsPrevision" ADD CONSTRAINT "PK_NeedsPrevision"
	PRIMARY KEY ("Id")
;

ALTER TABLE "Permit" ADD CONSTRAINT "PK_Permit"
	PRIMARY KEY ("Id")
;

ALTER TABLE "Personnel" ADD CONSTRAINT "PK_Personnel"
	PRIMARY KEY ("Id")
;

ALTER TABLE "Programme" ADD CONSTRAINT "PK_Programme"
	PRIMARY KEY ("Id")
;

ALTER TABLE "Region" ADD CONSTRAINT "PK_Region"
	PRIMARY KEY ("Id")
;

ALTER TABLE "Service" ADD CONSTRAINT "PK_Table1"
	PRIMARY KEY ("Id")
;

ALTER TABLE "UO" ADD CONSTRAINT "PK_UO"
	PRIMARY KEY ("Id")
;

ALTER TABLE "UOActivity" ADD CONSTRAINT "PK_UOActivity"
	PRIMARY KEY ("IdActivity","IdUO")
;


ALTER TABLE "ActivityPermit" ADD CONSTRAINT "FK_ActivityPermit_Activity"
	FOREIGN KEY ("IdActivity") REFERENCES "Activity" ("Id") ON DELETE No Action ON UPDATE No Action
;

ALTER TABLE "ActivityPermit" ADD CONSTRAINT "FK_ActivityPermit_Permit"
	FOREIGN KEY ("IdPermit") REFERENCES "Permit" ("Id") ON DELETE No Action ON UPDATE No Action
;

ALTER TABLE "Affectation" ADD CONSTRAINT "FK_Affectation_Activity"
	FOREIGN KEY ("IdUO") REFERENCES "UO" ("Id") ON DELETE No Action ON UPDATE No Action
;

ALTER TABLE "Affectation" ADD CONSTRAINT "FK_Affectation_Personnel"
	FOREIGN KEY ("IdPersonnel") REFERENCES "Personnel" ("Id") ON DELETE No Action ON UPDATE No Action
;

ALTER TABLE "Affectation" ADD CONSTRAINT "FK_Affectation_Programme"
	FOREIGN KEY ("IdProgramme") REFERENCES "Programme" ("Id") ON DELETE No Action ON UPDATE No Action
;

ALTER TABLE "NeedsPrevision" ADD CONSTRAINT "FK_NeedsPrevision_UO"
	FOREIGN KEY ("IdUO") REFERENCES "UO" ("Id") ON DELETE No Action ON UPDATE No Action
;

ALTER TABLE "NeedsPrevision" ADD CONSTRAINT "FK_NeedsPrevision_Activity"
	FOREIGN KEY ("IdActivity") REFERENCES "Activity" ("Id") ON DELETE No Action ON UPDATE No Action
;

ALTER TABLE "Personnel" ADD CONSTRAINT "FK_Personnel_ECA"
	FOREIGN KEY ("IdECA") REFERENCES "ECA" ("Id") ON DELETE No Action ON UPDATE No Action
;

ALTER TABLE "Personnel" ADD CONSTRAINT "FK_Personnel_Permit"
	FOREIGN KEY ("IdPermit") REFERENCES "Permit" ("Id") ON DELETE No Action ON UPDATE No Action
;

ALTER TABLE "Personnel" ADD CONSTRAINT "FK_Personnel_Address"
	FOREIGN KEY ("IdAddress") REFERENCES "Address" ("Id") ON DELETE No Action ON UPDATE No Action
;

ALTER TABLE "UOActivity" ADD CONSTRAINT "FK_UOActivity_Activity"
	FOREIGN KEY ("IdActivity") REFERENCES "Activity" ("Id") ON DELETE No Action ON UPDATE No Action
;

ALTER TABLE "UOActivity" ADD CONSTRAINT "FK_UOActivity_UO"
	FOREIGN KEY ("IdUO") REFERENCES "UO" ("Id") ON DELETE No Action ON UPDATE No Action
;

ALTER TABLE "Service" ADD CONSTRAINT "FK_Service_UO"
	FOREIGN KEY ("Id") REFERENCES "UO" ("Id") ON DELETE No Action ON UPDATE No Action
;
ALTER TABLE "Service" ADD CONSTRAINT "FK_Service_Department"
	FOREIGN KEY ("IdDepartment") REFERENCES "UO" ("Id") ON DELETE No Action ON UPDATE No Action
;

ALTER TABLE "Department" ADD CONSTRAINT "FK_Department_UO"
	FOREIGN KEY ("Id") REFERENCES "UO" ("Id") ON DELETE No Action ON UPDATE No Action
;
ALTER TABLE "Department" ADD CONSTRAINT "FK_Department_Establishment"
	FOREIGN KEY ("IdEstablishment") REFERENCES "UO" ("Id") ON DELETE No Action ON UPDATE No Action
;

ALTER TABLE "Establishment" ADD CONSTRAINT "FK_Establishment_UO"
	FOREIGN KEY ("Id") REFERENCES "UO" ("Id") ON DELETE No Action ON UPDATE No Action
;
ALTER TABLE "Establishment" ADD CONSTRAINT "FK_Establishment_Region"
	FOREIGN KEY ("IdAddress") REFERENCES "Address" ("Id") ON DELETE No Action ON UPDATE No Action
;

ALTER TABLE "Address" ADD CONSTRAINT "FK_Address_City"
	FOREIGN KEY ("IdCity") REFERENCES "City" ("Id") ON DELETE No Action ON UPDATE No Action
;
ALTER TABLE "City" ADD CONSTRAINT "FK_City_Region"
	FOREIGN KEY ("IdRegion") REFERENCES "Region" ("Id") ON DELETE No Action ON UPDATE No Action
;
ALTER TABLE "Region" ADD CONSTRAINT "FK_Region_UO"
	FOREIGN KEY ("Id") REFERENCES "UO" ("Id") ON DELETE No Action ON UPDATE No Action
;