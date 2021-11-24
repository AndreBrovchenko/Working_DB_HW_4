# ������ � ����� ���������� �� ������������ postgres (�� ���� postgres)
psql -U postgres	
create database music_site_big; # ������� �� � ������ music_site_big
# ������� ������������ � ������ <user_music> � ������� <pass_music>
create user user_music with password 'pass_music';
# ���������, ��� ���������� �� <music_site_big>
# �������� ������������ <user_music>
alter database music_site_big owner to user_music;
# -----------------
# ������ � ����� ���������� �� ������������ user_music (�� music_site_big)
psql -U user_music music_site_big
# -----------------
CREATE TABLE Genres (
id_genre serial primary key,
genre_name varchar(50) not null
);
# -----------------
CREATE TABLE Singers (
id_singer serial primary key,
singer_name varchar(50) not null
);
# -----------------
CREATE TABLE Albums (
id_album serial primary key,
album_name varchar(50) not null,
year_issue_album integer
);
# -----------------
CREATE TABLE AlbumArtists (
id_album_artist serial primary key,
id_album integer references Albums (id_album),
id_singer integer references Singers (id_singer)
);
# -----------------
CREATE TABLE PerformerGenres (
id_performer_genre serial primary key,
id_singer integer references Singers (id_singer),
id_genre integer references Genres (id_genre)
);
# -----------------
CREATE TABLE AlbumCollections (
id_album_collection serial primary key,
album_collection_name varchar(50) not null,
year_issue_collection integer
);
# -----------------
CREATE TABLE tracks (
id_track serial primary key,
track_name varchar(50) not null,
track_duration numeric(3, 2),
id_album integer references Albums (id_album)
);
# -----------------
CREATE TABLE TrackCollections (
id_track_collection serial primary key,
id_album_collection integer references AlbumCollections (id_album_collection),
id_track integer references tracks (id_track)
);
# -----------------
