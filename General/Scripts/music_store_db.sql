create table Genre(
genre_id serial primary key,
title varchar(255)
);

create table Musician(
musician_id serial primary key,
musician_name varchar(255)
);

create table Album(
album_id serial primary key,
title varchar(255),
release_year integer
);

create table Track(
track_id serial primary key,
title varchar(255),
duration text,
album_id int not null,
constraint fk_album foreign key(album_id) references Album(album_id) on delete cascade
);

create table Compilation(
compilation_id serial primary key,
title varchar(255),
release_year integer
);

create table compilation_track (
compilation_track_id serial primary key,
compilation_id int not null,
track_id int not null,
constraint fk_compilation foreign key(compilation_id) references Compilation(compilation_id) on delete cascade,
constraint fk_track foreign key(track_id) references Track(track_id) on delete cascade
);

create table genre_musician (
genre_musician_id serial primary key,
genre_id int not null,
musician_id int not null,
constraint fk_genre foreign key(genre_id) references Genre(genre_id) on delete cascade,
constraint fk_musician foreign key(musician_id) references Musician(musician_id) on delete cascade
);

create table musician_album (
musician_album_id serial primary key,
album_id int not null,
musician_id int not null,
constraint fk_album foreign key(album_id) references Album(album_id) on delete cascade,
constraint fk_musician foreign key(musician_id) references Musician(musician_id) on delete cascade
);

