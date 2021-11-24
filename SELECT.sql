# 1_��_�������, �������� � 2018 ����
SELECT Albums.album_name, Albums.year_issue_album
FROM Albums
WHERE (((Albums.year_issue_album)=2018));
# 2_��_���� ������������ ������������
SELECT track_name, track_duration
FROM tracks
WHERE track_duration IN (SELECT MAX(track_duration) FROM tracks);
# 3_��_����� ������������� �� ����� 3,5 ������
SELECT Tracks.track_name
FROM Tracks
WHERE (((Tracks.track_duration)>3.5));
# 4_��_�������� �������� � 2018 �� 2020
SELECT AlbumCollections.album_collection_name, AlbumCollections.year_issue_collection
FROM AlbumCollections
WHERE (((AlbumCollections.year_issue_collection) Between 2018 And 2020));
# 5_��_����������� ��� ������� ������� �� 1 �����
SELECT Singers.singer_name
FROM Singers
WHERE ((( length(Singers.singer_name)- length(Replace(Singers.singer_name,' ',''))+1)=1));
# 6_��_����� ������� �������� ����� "���"_���_*my*
SELECT Tracks.track_name
FROM Tracks
WHERE lower(Tracks.track_name) LIKE 'my%%' OR lower(Tracks.track_name) LIKE '���%%';

