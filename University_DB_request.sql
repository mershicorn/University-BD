1. ������, �������� ��������, ����������, �������:
INSERT INTO "Faculty" (dean, faculty_name, foundation_year)
VALUES ('Kovalchuk', 'econonomics department', '1973');
INSERT INTO "Subject" (id_faculty, subject_name, term, hours_amt, control_form, id_lecturer)
VALUES ('4', 'political science', '3', '24', 'credit', '2');
INSERT INTO "Lecturer" (id_faculty, name_surname, l_birthdate, id_degree, position)
VALUES ('2', 'Boyko Iryna', '1975-03-12', '2', 'associate professor');

DELETE FROM "Faculty"
WHERE "dean"='Kovalchuk';
DELETE FROM "Subject"
WHERE "subject_name"='political science';
DELETE FROM "Lecturer"
WHERE "name_surname"='Boyko Iryna';


2. ������� �� ��������, ����������, �������:
SELECT subject_name FROM "Subject";
SELECT faculty_name FROM "Faculty";
SELECT name_surname FROM "Lecturer"; 


3. ����� �� ������� ���� ��������, ����������, ������� �������:
SELECT * FROM "Subject"
WHERE subject_name LIKE 'ph%'; 
SELECT * FROM "Faculty"
WHERE faculty_name LIKE '%art%';
SELECT name_surname FROM "Lecturer"
WHERE name_surname LIKE '%a%';


4. ���� �������� �������� �������: 
Select  subject_name, name_surname  
From "Subject" 
Inner JOIN  "Lecturer" ON "Lecturer".id_lecturer="Subject".id_lecturer
WHERE name_surname='Mershon Evgeniya'
������� �������� �������� ����������: 
Select  subject_name, faculty_name  
From "Subject" 
Inner JOIN  "Faculty" ON "Faculty".id_faculty="Subject".id_faculty
WHERE faculty_name='historical department'
���� ��������, �� �������� � �������� �������:
Select  subject_name, term  
From "Subject" 
WHERE term=4

5. ���� ����������, �� ���� ���� ������� ������:
Select  faculty_name, name_surname
From "Faculty" 
Inner JOIN  "Lecturer" ON "Lecturer".id_faculty="Faculty".id_faculty
WHERE name_surname='Mershon Evgeniya'


6. ������� ��� �������, �� ������� ������� �� �������� ���������
Select name_surname, subject_name, faculty_name
From "Lecturer" 
Inner Join "Subject" ON "Subject".id_lecturer="Lecturer".id_lecturer
Inner JOIN "Faculty" ON "Faculty".id_faculty="Lecturer".id_faculty
WHERE faculty_name='geography department'

7. ���� ��� ������� �� �������� �� �������� ���������
Select name_surname, faculty_name
From "Lecturer" 
Inner Join "Faculty" ON "Faculty".id_faculty="Lecturer".id_faculty
WHERE faculty_name='biology department'

8. ����������� ��������� ���������� (���������� �� �������� � ������� "Subject"):
Select * From "Subject"
Order by "term"





