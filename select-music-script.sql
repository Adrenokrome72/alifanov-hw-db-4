--Задание №2
--Название и продолжительность самого длительного трека.
select track_name, track_time 
from track
where track_time = (
		select max(track_time)
		from track
	);
--Название треков, продолжительность которых не менее 3,5 минут.
select track_name
from track
where track_time >= 210;

--Названия сборников, вышедших в период с 2018 по 2020 год включительно.
select mixtape_name
from mixtape
where release_year BETWEEN 2018 AND 2020;

--Исполнители, чьё имя состоит из одного слова.
select artist_name
from artist
where array_length( string_to_array( regexp_replace(artist_name, '\W+', ' ', 'g'), ' ' ), 1 ) = 1;

--Название треков, которые содержат слово «мой» или «my».

select track_name
from track
where 'мой' = ANY(string_to_array(regexp_replace(lower(track_name), '\W+', ' ', 'g'), ' ')) or 
'my' = ANY(string_to_array(regexp_replace(lower(track_name), '\W+', ' ', 'g'), ' '));

--Задание №3
--Количество исполнителей в каждом жанре.
select g.genre_name, count(ag.artistid) artist_count
from genre g
inner join artist_genre ag on g.genreid = ag.genreid
group by g.genre_name;

--Количество треков, вошедших в альбомы 2019–2020 годов.
select count(*)
from track t
inner join album a on t.albumid = a.albumid
where a.release_year BETWEEN 2019 AND 2020;

--Средняя продолжительность треков по каждому альбому.
select a.album_name, avg(t.track_time) track_average_time
from track t
inner join album a on t.albumid = a.albumid
group by a.album_name ;

--Все исполнители, которые не выпустили альбомы в 2020 году.
select a.artist_name
from artist a
where artistid NOT IN (
		select aa.artistid
		from album a2
		inner join album_artist aa on a2.albumid = aa.albumid
		where a2.release_year = 2020
	);

--Названия сборников, в которых присутствует конкретный исполнитель (выберите его сами)
select m.mixtape_name
from mixtape m
inner join mixtape_track mt on m.mixtapeid = mt.mixtapeid
inner join track t on mt.trackid = t.trackid
inner join album a on t.albumid = a.albumid
inner join album_artist aa on a.albumid = aa.albumid
inner join artist a2 on aa.artistid = a2.artistid
where artist_name = 'Muse';