
Create table project_team_hardware(
	hardware varchar(50),
	start_time date,
	check_time date,
	person_ID varchar(50),
	target_time date,
	stop_time date,
	constraint pk_hardware PRIMARY KEY(hardware));
	
Create table project_team_software(
	software varchar(50),
	start_time date,
	check_time date,
	person_ID varchar(50),
	target_time date,
	stop_time date,
	constraint pk_software PRIMARY KEY(software));
	
Create table project_team_circuit(
	circuit varchar(50),
	start_time date,
	check_time date,
	person_ID varchar(50),
	target_time date,
	stop_time date,
	constraint pk_circuit PRIMARY KEY(circuit));
	
Create table project_team_marketing(
	marketing varchar(50),
	start_time date,
	person_ID varchar(50),
	customer_name varchar(50),
	company_name varchar(50),
	constraint pk_marketing PRIMARY KEY(marketing));


create table index_(
	index_ int not null,
	hardware varchar(50) not null,
	software varchar(50) not null,
	circuit varchar(50) not null,
	marketing varchar(50)not null,
);



alter table index_ add primary key (index_,hardware,software,circuit,marketing);

ALTER TABLE index_ ADD CONSTRAINT hardware FOREIGN KEY (hardware) 
REFERENCES project_team_hardware (hardware)

alter table index_ add constraint hardware foreign key (hardware)
references project_team_hardware (hardware);

alter table index_ add constraint software foreign key (software)
references project_team_software (software);

alter table index_ add constraint circuit foreign key (circuit)
references project_team_circuit (circuit);

alter table index_ add constraint marketing foreign key (marketing)
references project_team_marketing (marketing);

create table error_level(
	error_code int,
	error_name varchar(50) not null,
	hardware varchar(50),
	software varchar(50),
	circuit varchar(50),
	marketing varchar(50)
	constraint pk_error_code PRIMARY KEY(error_code));

create table error_check(
	error_code int,
	check_date date,
	version_ varchar(50),
	symptoms text,
	constraint error_code primary key(error_code));

create table solution(
	error_code int,
	team varchar(50),
	error_status varchar(50),
	error_date date,
	admin varchar(50),
	error_fixed date,
	error_is text,
	constraint error_code_pk primary key(error_code));
	