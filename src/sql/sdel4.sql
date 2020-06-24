/*alter table project_team_marketing
add foreign key(customer_name) references customer(company_name)*/
/*
alter table company
add primary key(company_admin);

alter table project_team_marketing
add foreign key(person_ID) references company(company_admin);

alter table project_team_marketing
add foreign key(marketing) references customer(customer_name);*/

/*
alter table project_on_going
add foreign key(hardware_ord) references project_team_hardware(hardware);
*/
alter table project_on_going
add foreign key(software_ord) references project_team_software(software);

alter table project_on_going
add foreign key(marketing_ord) references project_team_marketing(marketing);

alter table project_on_going
add foreign key(circuit_ord) references project_team_circuit(circuit);