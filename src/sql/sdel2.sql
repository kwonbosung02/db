
create table person(
	person_ID varchar(50),
	person_PW varchar(50) not null,
	person_email varchar(50),
	person_group varchar(50),
	constraint person_ID_pk primary key (person_ID)
	);
create table customer(
	customer_name varchar(50)not null,
	phone_number varchar(50),
	customer_require text
	constraint customer_name_pk primary key (customer_name)
)

create table project_on_going(
	now_status varchar(50),
	order_ int,
	request_to_another_team text,
	error_ord int,
	hardware_ord varchar(50),
	software_ord varchar(50),
	circuit_ord varchar(50),
	marketing_ord varchar(50),
	start_d date,
	target_d date,
	
);

alter table project_team_circuit
add foreign key (person_ID) references person(person_ID);

alter table project_team_hardware
add foreign key (person_ID) references person(person_ID);

alter table project_team_software
add foreign key (person_ID) references person(person_ID);

alter table project_team_marketing
add foreign key (person_ID) references person(person_ID);


alter table project_on_going
add foreign key (error_ord) references error_level(error_code);


alter table error_level
add foreign key (error_code) references error_check(error_code);




alter table index_
add foreign key(index_) references solution(error_code);

alter table solution
add foreign key(error_code) references error_check(error_code);

alter table error_check
add foreign key (error_code) references solution(error_code);


alter table project_on_going
add foreign key(error_ord) references solution(error_code);

create table company(
	company_admin varchar(50) not null,
	company_tel varchar(50) not null);


alter table project_team_marketing
add foreign key(customer_name) references company(company_admin);


