DROP TABLE IF EXISTS "temp"."ECA" CASCADE
;

DROP TABLE IF EXISTS "temp"."Permit" CASCADE
;

DROP TABLE IF EXISTS "temp"."Activity" CASCADE
;



CREATE TABLE "temp"."ECA"
(
	"Id" integer NOT NULL,
	"Since" date NOT NULL,
	"Lastname" varchar(50) NOT NULL,
	"Lastname_since" date NOT NULL,
	"Firstname_since" date NOT NULL,
	"IdAddress" date NOT NULL,
	"IdAddress_since" date NOT NULL
)
;

CREATE TABLE "temp"."ECA"
(
	"Id" integer NOT NULL,
	"Lastname" varchar(50) NOT NULL,
	"Firstname" varchar(50) NOT NULL,
	"IdAddress" date NOT NULL,
	"during" date NOT NULL
)
;

CREATE TABLE "temp"."Permit"
(
	"IdECA" integer NOT NULL,
	"IdActivity" integer NOT NULL,
	"Since" date NOT NULL
)
;

CREATE TABLE "temp"."Permit"
(
	"IdECA" integer NOT NULL,
	"IdActivity" integer NOT NULL,
	"During" date NOT NULL
)
;


CREATE TABLE "temp"."Activity"
(
	"Id" integer NOT NULL,
	"Since" date NOT NULL,
	"Name" varchar(50) NOT NULL,
	"Name_since" date NOT NULL
)
;




ALTER TABLE "temp"."ECA" ADD CONSTRAINT "PK_ECA"
	PRIMARY KEY ("Id")
;


ALTER TABLE "temp"."Activity" ADD CONSTRAINT "PK_Activity"
	PRIMARY KEY ("Id")
;






ALTER TABLE "temp"."Permit" ADD CONSTRAINT "FK_Permit_ECA"
	FOREIGN KEY ("IdECA") REFERENCES "temp"."ECA" ("Id") ON DELETE No Action ON UPDATE No Action
;

ALTER TABLE "temp"."Permit" ADD CONSTRAINT "FK_Permit_Activity"
	FOREIGN KEY ("IdActivity") REFERENCES "temp"."Activity" ("Id") ON DELETE No Action ON UPDATE No Action
;


