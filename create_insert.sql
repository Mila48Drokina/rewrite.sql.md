create table if not exists Musical_genre (
id serial primary key,
name varchar (50) not null unique);

create table if not exists Artists (
id serial primary key,

name varchar (50) not null
);

create table if not exists Genre_Artists (
Artist_id integer references Artists(id),
musical_genre_id integer references Musical_genre(id),
constraint Genre_Artists_id primary key (Artist_id, Musical_genre_id)
);




create table if not exists Albums (
id serial primary key,
name varchar (50) not null,
Year_of_release integer CHECK (Year_of_release <= 2024 )
);

create table if not exists AlbumsArtists (
album_id integer references Albums(id),
Artist_id integer references Artists(id),
constraint AlbumsArtists_id primary key (Album_id, Artist_id));



create table if not exists Tracks (
id serial primary key,
name varchar (50) not null,
duration integer not null, check(duration >= '33'),
Album_id integer references Albums(id)
);



create table if not exists Collection (
id serial primary key,
name varchar (50) not null,
Year_release integer not null,
Count_of_Collections integer check(Сount_of_Collections >= 50));

create table if not exists Track_Collection (
track_id integer references Tracks(id),
collection_id integer references Collection(id),
constraint Track_Collection_id primary key (track_id, Collection_id));



insert into Artists (name)
values 
('Oleg_Gazmanov'),
('Dabro'),
('Rok_ostrova'),
('Kukryniksy'),
('Mikhail_Shifutinskiy');





insert into Albums (name, Year_of_release)
values
('Eskadron', '1991'),
('Nashe_Vremya', '2014'),
('Gore_ne_beda', '1992'),
('Raskrashennaya_dusha', '2019'),
('Mosty', '2020');

insert into Tracks(name, duration, album_id)
values
('Eskadron', '236', 1),
('Svezhiy_Moi veter', '221', 1),
('Vlyubilsya', '178', 2),
('Moi poludenniy_son', '296' , 3),
('Tayna', '159', 4),
('Dusha_bolit', '321', 5);

Insert into Collection(name, year_release)
values
('Eskadron_moih_pesen_shalnyx_2', '2024'),
('Dabro', '2019'),
('Prekrasnoye_dalyeko', '2024'),
('Zolotaya_pesnya_goda', '2020');



insert into Artists (name)
values 
('Oleg_Gazmanov'),
('Dabro'),
('Rok_ostrova'),
('Kukryniksy'),
('Mikhail_Shifutinskiy');


insert into Albums (name, Year_of_release)
values
('Eskadron', '1991'),
('Nashe_Vremya', '2014'),
('Gore_ne_beda', '1992'),
('Raskrashennaya_dusha', '2019'),
('Mosty', '2020');

insert into Tracks(name, duration, album_id)
values
('Eskadron', '236', 1),
('Svezhiy_veter', '221', 1),
('Vlyubilsya', '178', 2),
('Moi_poludenniy_son', '296' , 3),
('Tayna', '159', 4),
('Dusha_bolit', '321', 5);

Insert into Collection(name, year_release)
values
('Gazmanov Eskadron_moih_pesen_shalnyx_2', '2024'),
('Odnazhdy_oseniyu', '2019'),
('Prekrasnoye_dalyeko', '2024'),
('Zolotaya_pesnya_goda', '2020');
