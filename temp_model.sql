CREATE TABLE "meca"."A"(
	"Id" integer NOT NULL PRIMARY KEY,
	"Since" date NOT NULL
);

CREATE TABLE "meca"."A_During"(
	"Id" integer NOT NULL PRIMARY KEY,
	"During" daterange NOT NULL
);



CREATE TABLE "meca"."B"(
	"Id" integer NOT NULL PRIMARY KEY,
	"IdRefA" integer NOT NULL REFERENCES "meca"."A"("Id"),
	"Since" date NOT NULL
);
CREATE TABLE "meca"."B_During"(
	"Id" integer NOT NULL PRIMARY KEY,
	"IdRefA" integer NOT NULL REFERENCES "meca"."A"("Id"),
	"During" daterange NOT NULL
);
CREATE TABLE "meca"."B_Historic"(
	"Id" integer NOT NULL PRIMARY KEY,
	"IdRefA" integer NOT NULL REFERENCES "meca"."A_During"("Id"),
	"During" daterange NOT NULL
);