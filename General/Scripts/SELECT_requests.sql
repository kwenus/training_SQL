
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
select musician_name from musician
join musician_album ma on musician.musician_id = ma.musician_id
join album a on ma.album_id = a.album_id
where a.release_year != 2020
group by musician_name;

-- Названия сборников, в которых присутствует конкретный исполнитель (выберите его сами).
select c.title from compilation c 
join compilation_track ct on c.compilation_id = ct.compilation_id  
join track t on ct.track_id = t.track_id 
join album a on t.album_id = a.album_id 
join musician_album ma on a.album_id = ma.album_id 
join musician m on ma.musician_id = m.musician_id 
where musician_name = 'Tomahawk'
group by c.title
order by c.title;

-- Названия альбомов, в которых присутствуют исполнители более чем одного жанра.
-- переделал на более двух жанров, тк у всех более одного)
select a.title, count(g.title) from album a
join musician_album ma on a.album_id = ma.album_id 
join musician m on ma.musician_id = m.musician_id
join genre_musician gm on m.musician_id = gm.musician_id 
join genre g on gm.genre_id = g.genre_id
group by a.title
having count(g.title) > 2
order by count(g.title) desc;

-- Наименования треков, которые не входят в сборники.
select t.title from track t
where t.title not in 
(select t.title from track t
join compilation_track ct on ct.track_id = t.track_id)
group by t.track_id
order by t.title;

-- Исполнитель или исполнители, написавшие самый короткий по продолжительности трек, — теоретически таких треков может быть несколько.
select musician_name, t.title from musician m
join musician_album ma on m.musician_id = ma.musician_id  
join album a on ma.album_id = a.album_id
join track t on a.album_id = t.album_id 
where t.duration = (select min(duration) from track);

-- Названия альбомов, содержащих наименьшее количество треков.
select a.title, count(t.track_id) track_q from album a 
join track t on a.album_id = t.album_id
group by a.title
having count(t.track_id) = (select count(t.track_id) tr_q from album a 
join track t on a.album_id = t.album_id 
group by a.album_id
order by tr_q asc
limit 1);

 