# 1_ДЗ_альбомы, вышедшие в 2018 году
SELECT Albums.album_name, Albums.year_issue_album
FROM Albums
WHERE (((Albums.year_issue_album)=2018));
# 2_ДЗ_трек максимальной длительности
SELECT track_name, track_duration
FROM tracks
WHERE track_duration IN (SELECT MAX(track_duration) FROM tracks);
# 3_ДЗ_Треки длительностью не менее 3,5 минуты
SELECT Tracks.track_name
FROM Tracks
WHERE (((Tracks.track_duration)>3.5));
# 4_ДЗ_Сборники вышедшие с 2018 по 2020
SELECT AlbumCollections.album_collection_name, AlbumCollections.year_issue_collection
FROM AlbumCollections
WHERE (((AlbumCollections.year_issue_collection) Between 2018 And 2020));
# 5_ДЗ_Исполнители имя которых состоит из 1 слова
SELECT Singers.singer_name
FROM Singers
WHERE ((( length(Singers.singer_name)- length(Replace(Singers.singer_name,' ',''))+1)=1));
# 6_ДЗ_треки которые содержат слово "мой"_или_*my*
SELECT Tracks.track_name
FROM Tracks
WHERE lower(Tracks.track_name) LIKE 'my%%' OR lower(Tracks.track_name) LIKE 'мой%%';

