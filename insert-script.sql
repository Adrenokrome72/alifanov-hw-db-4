--исполнители
INSERT INTO artist(artist_name) VALUES ('Arctic Monkeys');
INSERT INTO artist(artist_name) VALUES ('The Strokes');
INSERT INTO artist(artist_name) VALUES ('Foo Fighters');
INSERT INTO artist(artist_name) VALUES ('Muse');
INSERT INTO artist(artist_name) VALUES ('April Rain');

--жанры
INSERT INTO genre(genre_name) VALUES ('Indie rock');
INSERT INTO genre(genre_name) VALUES ('Post-punk');
INSERT INTO genre(genre_name) VALUES ('Alternative rock');
INSERT INTO genre(genre_name) VALUES ('Post-grunge');
INSERT INTO genre(genre_name) VALUES ('Post-rock');

--связка жанры-исполнители
INSERT INTO artist_genre VALUES (1, 1);
INSERT INTO artist_genre VALUES (1, 2);
INSERT INTO artist_genre VALUES (2, 1);
INSERT INTO artist_genre VALUES (2, 2);
INSERT INTO artist_genre VALUES (3, 3);
INSERT INTO artist_genre VALUES (3, 4);
INSERT INTO artist_genre VALUES (4, 3);
INSERT INTO artist_genre VALUES (5, 5);

--альбомы
INSERT INTO album(album_name, release_year) VALUES ('Tranquility Base Hotel & Casino', 2018);
INSERT INTO album(album_name, release_year) VALUES ('The New Abnormal', 2020);
INSERT INTO album(album_name, release_year) VALUES ('Medicine at Midnight', 2021);
INSERT INTO album(album_name, release_year) VALUES ('Simulation Theory', 2018);
INSERT INTO album(album_name, release_year) VALUES ('Waiting for Sunrise', 2013);

--связка альбом-исполнитель
INSERT INTO album_artist VALUES (1,1);
INSERT INTO album_artist VALUES (2,2);
INSERT INTO album_artist VALUES (3,3);
INSERT INTO album_artist VALUES (4,4);
INSERT INTO album_artist VALUES (5,5);

--треки
--треки альбома 'Tranquility Base Hotel & Casino'
INSERT INTO track(track_name, track_time, albumid) VALUES ('Four Out of Five', 312, 1);
INSERT INTO track(track_name, track_time, albumid) VALUES ('Star Treatment', 354, 1);
INSERT INTO track(track_name, track_time, albumid) VALUES ('One Point Perspective', 188, 1);
--треки альбома 'The New Abnormal'
INSERT INTO track(track_name, track_time, albumid) VALUES ('At the Door', 309, 2);
INSERT INTO track(track_name, track_time, albumid) VALUES ('Bad Decisions', 293, 2);
INSERT INTO track(track_name, track_time, albumid) VALUES ('The Adults Are Talking', 309, 2);
--треки альбома 'Medicine at Midnight'
INSERT INTO track(track_name, track_time, albumid) VALUES ('Medicine at Midnight', 257, 3);
INSERT INTO track(track_name, track_time, albumid) VALUES ('No Son of Mine', 208, 3);
INSERT INTO track(track_name, track_time, albumid) VALUES ('Waiting on a War', 253, 3);
--треки альбома 'Simulation Theory'
INSERT INTO track(track_name, track_time, albumid) VALUES ('Pressure', 235, 4);
INSERT INTO track(track_name, track_time, albumid) VALUES ('Thought Contagion', 219, 4);
INSERT INTO track(track_name, track_time, albumid) VALUES ('Algorithm', 224, 4);
--треки альбома 'Waiting for Sunrise'
INSERT INTO track(track_name, track_time, albumid) VALUES ('My Silent Angel', 296, 5);
INSERT INTO track(track_name, track_time, albumid) VALUES ('Soulmate', 380, 5);
INSERT INTO track(track_name, track_time, albumid) VALUES ('Waiting for Sunrise', 447, 5);

--сборники
INSERT INTO mixtape(mixtape_name, release_year) VALUES ('The best of post-grunge Vol.1', 2021);
INSERT INTO mixtape(mixtape_name, release_year) VALUES ('Rock Hits', 2020);
INSERT INTO mixtape(mixtape_name, release_year) VALUES ('Indie Rock Vol.3', 2022);
INSERT INTO mixtape(mixtape_name, release_year) VALUES ('Top 100 2023', 2023);

--связка треки-сборники
INSERT INTO mixtape_track VALUES (1,7);
INSERT INTO mixtape_track vaLUES (1,8);
INSERT INTO mixtape_track VALUES (1,9);
INSERT INTO mixtape_track VALUES (2,9);
INSERT INTO mixtape_track VALUES (2,11);
INSERT INTO mixtape_track VALUES (3,1);
INSERT INTO mixtape_track VALUES (3,2);
INSERT INTO mixtape_track VALUES (3,3);
INSERT INTO mixtape_track VALUES (3,4);
INSERT INTO mixtape_track VALUES (3,5);
INSERT INTO mixtape_track VALUES (3,6);
INSERT INTO mixtape_track VALUES (4,1);
INSERT INTO mixtape_track VALUES (4,4);
INSERT INTO mixtape_track VALUES (4,7);
INSERT INTO mixtape_track VALUES (4,10);
INSERT INTO mixtape_track VALUES (4,13);
INSERT INTO mixtape_track VALUES (4,15);