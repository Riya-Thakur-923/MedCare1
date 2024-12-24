show databases;
use medguide;
create table Medicine(name varchar(20), expiry_date varchar(10));
insert into Medicine values ('combiflam', '12/05/2025'), ('paracetamol', '28/07/2026');
select * from Medicine;
drop table Medicine;
create table Medicine1 (medicine_id int, name varchar(20), description varchar(200), dosage varchar(50), side_effects varchar(100), interactions varchar(100));
select * from Medicine1;
INSERT INTO Medicine1 (medicine_id, name, description, dosage, side_effects, interactions) VALUES (1, 'Paracetamol', 'Pain reliever and fever reducer', '500mg every 4-6 hours', 'Nausea, vomiting, diarrhea', 'May interact with blood thinners'), (2, 'Ibuprofen', 'Pain reliever and anti-inflammatory', '200mg every 4-6 hours', 'Stomach upset, nausea, vomiting', 'May interact with blood pressure medications'), (3, 'Cetrizine', 'Antihistamine for allergy relief', '10mg once daily', 'Drowsiness, dry mouth, stomach upset', 'May interact with sedatives'), (4, 'Azithromycin', 'Antibiotic for bacterial infections', '500mg once daily for 3-5 days', 'Nausea, vomiting, diarrhea, abdominal pain', 'May interact with heart medications'), (5, 'Metformin', 'Oral antidiabetic for type 2 diabetes', '500mg twice daily', 'Nausea, vomiting, diarrhea, abdominal pain', 'May interact with insulin and other diabetes medications');
select * from Medicine1;

create table Disease (disease_id int, name varchar(20), description varchar(200), symptoms varchar(200));
select * from Disease;
INSERT INTO Disease (disease_id, name, description, symptoms) VALUES (1, 'Fever', 'Elevated body temperature', 'High temperature, sweating, headache, fatigue'), (2, 'Allergy', 'Overreaction of the immune system', 'Itching, sneezing, runny nose, congestion'), (3, 'Common Cold', 'Viral infection of the upper respiratory tract', 'Runny nose, congestion, sneezing, coughing'), (4, 'Bacterial Infection', 'Infection caused by bacteria', 'Fever, chills, sweating, nausea, vomiting'), (5, 'Type 2 Diabetes', 'Metabolic disorder characterized by insulin resistance', 'Increased thirst and hunger, fatigue, blurred vision, slow healing of cuts and wounds');
use medguide;

create table Medicine_Disease (medicine_id int, disease_id int, recommendation varchar(50));
INSERT INTO Medicine_Disease (medicine_id, disease_id, recommendation) VALUES (1, 1, 'Recommended for fever reduction'), (2, 3, 'Recommended for pain relief and reduction of inflammation'), (3, 2, 'Recommended for allergy relief'), (4, 4, 'Recommended for treatment of bacterial infections'), (5, 5, 'Recommended for management of type 2 diabetes');
ALTER TABLE Medicine_Disease
CHANGE recommendation recommendation TEXT;
show databases;

select * from Medicine_Disease;
select * from Disease;

ALTER TABLE Medicine
ADD PRIMARY KEY (medicine_id);
SHOW KEYS FROM Medicine WHERE Key_name = 'PRIMARY';
SHOW KEYS FROM Disease WHERE Key_name = 'PRIMARY';
ALTER TABLE Disease
ADD PRIMARY KEY (disease_id);
SHOW KEYS FROM Disease WHERE Key_name = 'PRIMARY';
ALTER TABLE Medicine_Disease
ADD CONSTRAINT fk_medicine
FOREIGN KEY (medicine_id)
REFERENCES Medicine1 (medicine_id);




