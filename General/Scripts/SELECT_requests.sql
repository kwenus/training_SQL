
-- Название и продолжительность самого длительного трека.
select title, duration from track
where duration = (select max(duration)from track);

-- Название треков, продолжительность которых не менее 3,5 минут.
select title, duration from track
where duration >= 210
order by duration desc;

-- Названия сборников, вышедших в период с 2018 по 2020 год включительно.
select title from compilation
where release_year between 2018 and 2020;

-- Исполнители, чьё имя состоит из одного слова.
select musician_name from musician
where musician_name  not like '% %'

-- Название треков, которые содержат слово «мой» или «my».
select title from track
where title ilike '%my %';

-- Количество исполнителей в каждом жанре.
select genre.genre_id, title, count(musician_id) musician_q from genre
join genre_musician gm on genre.genre_id = gm.genre_id 
group by genre.title, genre.genre_id
order by musician_q desc;

-- Количество треков, вошедших в альбомы 2019–2020 годов.
select count(track_id) from track
join album on track.album_id = album.album_id
where album.release_year between 2019 and 2020;

--(проверка)
select album.title, count(track_id) tr_q from album
right join track on album.album_id = track.album_id 
where album.release_year between 2019 and 2020
group by album.album_id;

-- Средняя продолжительность треков по каждому альбому.
select avg(track.duration) from track
join album on track.album_id = album.album_id 
group by album.album_id;

--(проверка)
select album.title, avg(track.duration) track_q from album
right join track on album.album_id = track.album_id
group by album.album_id;

-- Все исполнители, которые не выпустили альбомы в 2020 году.

-- Названия сборников, в которых присутствует конкретный исполнитель (выберите его сами).

-- Названия альбомов, в которых присутствуют исполнители более чем одного жанра.
-- Наименования треков, которые не входят в сборники.
-- Исполнитель или исполнители, написавшие самый короткий по продолжительности трек, — теоретически таких треков может быть несколько.
-- Названия альбомов, содержащих наименьшее количество треков.

 