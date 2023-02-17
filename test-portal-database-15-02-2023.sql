create database kgm;

use kgm;

create table user_registration_details(
user_registration_details_id int not null auto_increment,
first_name varchar(255),
last_name varchar(255),
email varchar(255),
phone_no int,
counsellor_name varchar(255),
about_institute varchar(255),
native_city varchar(255),
residence_city varchar(255),
degree varchar(255),
employee_status varchar(255),
updated_date date,
primary key(user_registration_details_id)
);

create table trainer_details(
trainer_details_id int not null,
trainer_name varchar(255) not null,
primary key(trainer_name)
);

create table students_progress_details(
students_progress_details_id int not null,
numeric_basic varchar(255),
numeric_intermediate varchar(255),
numeric_intermediate varchar(255),
numeric_advanced varchar(255),
verbal_basic varchar(255),
verbal_intermediate varchar(255),
verbal_advanced varchar(255),
communication varchar(255),
updated_by varchar(255),
updated_date date,
 CONSTRAINT fk_students_progress_details_id
    FOREIGN KEY (students_progress_details_id)
    REFERENCES kgm.user_registration_details (user_registration_details_id)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
     CONSTRAINT fk_updated_by
    FOREIGN KEY (updated_by)
    REFERENCES kgm.trainer_details (trainer_name)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
primary key(students_progress_details_id)
);

create table question_bank(
question_bank_id int not null auto_increment,
levels varchar(255),
questions varchar(5000),
option_a varchar(255),
option_b varchar(255),
option_c varchar(255),
option_d varchar(255),
answer varchar(255),
updated_date date,
primary key(question_bank_id)
);