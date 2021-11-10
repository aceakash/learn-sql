select * from team;

select * from person;

select * from person_team;

insert into person_team(person_id, team_id) values (1, 1)
insert into person_team(person_id, team_id) values (1, 2)
insert into person_team(person_id, team_id) values (2, 1)

create table person_team (
    person_id int,
    team_id int,
    foreign key(person_id) references person(id),
    foreign key(team_id) references team(id),
    unique (person_id, team_id))


alter table person
drop column team_id;

alter table person
add column team_id int

alter table person
add constraint fk_team_id foreign key(id) references team(id)


select
       person.id, person.name, person.surname, team.name
from person,team,person_team
where person.id = person_team.person_id
and team.id = person_team.team_id

select substr('catarina', 0, 3)
