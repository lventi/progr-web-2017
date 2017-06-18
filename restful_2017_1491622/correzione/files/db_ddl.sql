drop schema restful_example_schema;
create role restful_example_user with password 'restful_example_password' login;
create schema restful_example_schema authorization restful_example_user;
create language plpgsql;

drop database restful_example;
create database restful_example;
\c restful_example;

create table restful_example_schema.account (
    id serial not null,
	username varchar(20) not null,
	password varchar(20) not null,
	realname varchar(40),
	realsurname varchar(40),
	is_admin boolean not null,
    primary key (id)
);

create table restful_example_schema.currency (
    id serial not null,
	curr_name varchar(10) not null,
	to_eur decimal,
	to_dollar decimal,
    primary key (id)
);

create table restful_example_schema.item (
    id serial not null,
	title varchar(100) not null,
	description text,
	price decimal not null,
	currency varchar(10) not null,
	available timestamp without time zone not null,
	image_path varchar(100),
	image_descr varchar(100),
	show boolean not null,
	constraint item_pk primary key(id)
);
	-- constraint currency_ref foreign key(restful_example_schema.currency) references restful_example_schema.currency(curr_name)

create table restful_example_schema.category (
    id serial not null,
	categ_name varchar(100) not null,
	image_path varchar(100),
	image_descr varchar(100),
	constraint category_pk primary key(id)
);

create table restful_example_schema.categ_it (
    id serial not null,
	categ_id integer not null,
	item_id integer not null,
    primary key (id),
	constraint categ_it_ref1 foreign key(categ_id) references restful_example_schema.category(id),
	constraint categ_it_ref2 foreign key(item_id) references restful_example_schema.item(id)
);

grant select on restful_example_schema.account to restful_example_user;
grant insert on restful_example_schema.account to restful_example_user;
grant update on restful_example_schema.account to restful_example_user;
grant delete on restful_example_schema.account to restful_example_user;

grant select on restful_example_schema.currency to restful_example_user;
grant insert on restful_example_schema.currency to restful_example_user;
grant update on restful_example_schema.currency to restful_example_user;
grant delete on restful_example_schema.currency to restful_example_user;

grant select on restful_example_schema.item to restful_example_user;
grant insert on restful_example_schema.item to restful_example_user;
grant update on restful_example_schema.item to restful_example_user;
grant delete on restful_example_schema.item to restful_example_user;

grant select on restful_example_schema.category to restful_example_user;
grant insert on restful_example_schema.category to restful_example_user;
grant update on restful_example_schema.category to restful_example_user;
grant delete on restful_example_schema.category to restful_example_user;

grant select on restful_example_schema.categ_it to restful_example_user;
grant insert on restful_example_schema.categ_it to restful_example_user;
grant update on restful_example_schema.categ_it to restful_example_user;
grant delete on restful_example_schema.categ_it to restful_example_user;
grant select on restful_example_schema.account_id_seq to restful_example_user;
grant usage on restful_example_schema.account_id_seq to restful_example_user;
grant update on restful_example_schema.account_id_seq to restful_example_user;
grant select on restful_example_schema.categ_it_id_seq to restful_example_user;
grant usage on restful_example_schema.categ_it_id_seq to restful_example_user;
grant update on restful_example_schema.categ_it_id_seq to restful_example_user;
grant select on restful_example_schema.category_id_seq to restful_example_user;
grant usage on restful_example_schema.category_id_seq to restful_example_user;
grant update on restful_example_schema.category_id_seq to restful_example_user;
grant select on restful_example_schema.currency_id_seq to restful_example_user;
grant usage on restful_example_schema.currency_id_seq to restful_example_user;
grant update on restful_example_schema.currency_id_seq to restful_example_user;
grant select on restful_example_schema.item_id_seq to restful_example_user;
grant usage on restful_example_schema.item_id_seq to restful_example_user;
grant update on restful_example_schema.item_id_seq to restful_example_user;

drop database restful_example_2;
create database restful_example_2;
\c restful_example_2;

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

create table restful_example_schema.aut_lib (
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
grant select on restful_example_schema.aut_lib to restful_example_user;
grant insert on restful_example_schema.aut_lib to restful_example_user;
grant update on restful_example_schema.aut_lib to restful_example_user;
grant delete on restful_example_schema.aut_lib to restful_example_user;
grant select on restful_example_schema.libro_id_seq to restful_example_user;
grant usage on restful_example_schema.libro_id_seq to restful_example_user;
grant update on restful_example_schema.libro_id_seq to restful_example_user;
grant select on restful_example_schema.autore_id_seq to restful_example_user;
grant usage on restful_example_schema.autore_id_seq to restful_example_user;
grant update on restful_example_schema.autore_id_seq to restful_example_user;
grant select on restful_example_schema.aut_lib_id_seq to restful_example_user;
grant usage on restful_example_schema.aut_lib_id_seq to restful_example_user;
grant update on restful_example_schema.aut_lib_id_seq to restful_example_user;
