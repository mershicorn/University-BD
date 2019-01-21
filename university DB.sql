CREATE TABLE "Faculty" (
  "id_faculty" serial,
  "id_address" integer,
  "foundation_year" year,
  "dean" varchar
);

CREATE TABLE "Faculty_address" (
  "id_address" serial,
  "id_faculty" int,
  "adress" varchar
);

CREATE TABLE "Degree" (
  "id_degree" serial,
  "name_degree" varchar
);

CREATE TABLE "Subject" (
  "id_subject" serial,
  "id_faculty" int,
  "nam_subject" varchar,
  "term" int,
  "hours_amt" int,
  "control_form" enum,
  "id_lecturer" varchar
);

CREATE TABLE "Lecturer" (
  "id_lecturer" serial,
  "name_surname" varchar,
  "l_birthdate" varchar,
  "id_degree" varchar,
  "position" varchar,
  "id_faculty" varchar
);

ALTER TABLE "Faculty_address" ADD FOREIGN KEY ("id_faculty") REFERENCES "Faculty" ("id_faculty");

ALTER TABLE "Subject" ADD FOREIGN KEY ("id_faculty") REFERENCES "Faculty" ("id_faculty");

ALTER TABLE "Subject" ADD FOREIGN KEY ("id_lecturer") REFERENCES "Lecturer" ("id_lecturer");

ALTER TABLE "Lecturer" ADD FOREIGN KEY ("id_degree") REFERENCES "Degree" ("id_degree");

ALTER TABLE "Lecturer" ADD FOREIGN KEY ("id_faculty") REFERENCES "Faculty" ("id_faculty");