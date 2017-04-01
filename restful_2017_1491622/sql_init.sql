drop database IF EXISTS restful_example;
drop schema IF EXISTS restful_example_schema;
DROP ROLE IF EXISTS restful_example_user;
create database restful_example;
create role restful_example_user with password 'password' login;
\c restful_example

create schema restful_example_schema authorization restful_example_user;

create table restful_example_schema.libro (
    id serial not null,
    titolo varchar(40) not null,
    url varchar(40),
    abstract text,
    ultima_modifica timestamp,
    constraint libroid primary key (id)
);

create table restful_example_schema.autore (
    id serial not null,
    nome varchar(40) not null,
    cognome varchar(40) not null,
    indirizzo varchar(40),
    telefono varchar(40),
    email varchar(40),
    userid varchar(40),
    password varchar(40),
    ultima_modifica timestamp,
    primary key (id)
);

create table restful_example_schema.autore_libro (
    id serial not null,
    libroid integer not null,
    autoreid integer not null,
    ultima_modifica timestamp,
    foreign key (libroid) references restful_example_schema.libro (id),
    foreign key (autoreid) references restful_example_schema.autore (id),
    primary key (id)
);

grant select on restful_example_schema.libro to restful_example_user;
grant insert on restful_example_schema.libro to restful_example_user;
grant update on restful_example_schema.libro to restful_example_user;
grant delete on restful_example_schema.libro to restful_example_user;
grant select on restful_example_schema.autore to restful_example_user;
grant insert on restful_example_schema.autore to restful_example_user;
grant update on restful_example_schema.autore to restful_example_user;
grant delete on restful_example_schema.autore to restful_example_user;
grant select on restful_example_schema.autore_libro to restful_example_user;
grant insert on restful_example_schema.autore_libro to restful_example_user;
grant update on restful_example_schema.autore_libro to restful_example_user;
grant delete on restful_example_schema.autore_libro to restful_example_user;
grant select on restful_example_schema.libro_id_seq to restful_example_user;
grant usage on restful_example_schema.libro_id_seq to restful_example_user;
grant update on restful_example_schema.libro_id_seq to restful_example_user;
grant select on restful_example_schema.autore_id_seq to restful_example_user;
grant usage on restful_example_schema.autore_id_seq to restful_example_user;
grant update on restful_example_schema.autore_id_seq to restful_example_user;
grant select on restful_example_schema.autore_libro_id_seq to restful_example_user;
grant usage on restful_example_schema.autore_libro_id_seq to restful_example_user;
grant update on restful_example_schema.autore_libro_id_seq to restful_example_user;
