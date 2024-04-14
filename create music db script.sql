CREATE TABLE Genre (
	GenreID SERIAL PRIMARY KEY,
	Genre_name VARCHAR(255) NOT NULL
);

CREATE TABLE Artist (
	ArtistID SERIAL PRIMARY KEY,
	Artist_name VARCHAR(255) NOT NULL
);

CREATE TABLE Artist_Genre (
	ArtistID INT REFERENCES Artist(ArtistID),
	GenreID INT REFERENCES Genre(GenreID),
	CONSTRAINT artist_genre_pk PRIMARY KEY (
		ArtistID,
		GenreID
	)
);

CREATE TABLE Album (
	AlbumID SERIAL PRIMARY KEY,
	Album_name VARCHAR(255) NOT NULL,
	Release_year NUMERIC(4)
);

CREATE TABLE Album_Artist (
	ArtistID INTEGER REFERENCES Artist(ArtistID),
	AlbumID INTEGER REFERENCES Album(AlbumID),
	CONSTRAINT album_artist_pk PRIMARY KEY (
		ArtistID,
		AlbumID
	)
);

CREATE TABLE Track (
	TrackID SERIAL PRIMARY KEY,
	AlbumID INTEGER REFERENCES Album(AlbumID) NOT NULL,
	Track_name VARCHAR(255) NOT NULL,
	Track_time SMALLINT CONSTRAINT correct_time CHECK (
		Track_time > 0
	)
);

CREATE TABLE Mixtape (
	MixtapeID SERIAL PRIMARY KEY,
	Mixtape_name varchar(255) NOT NULL,
	Release_year NUMERIC(4)
);

CREATE TABLE Mixtape_Track (
	MixtapeID INTEGER REFERENCES Mixtape(MixtapeID),
	TrackID INTEGER REFERENCES Track(TrackID),
	CONSTRAINT mixtape_mrack_pk PRIMARY KEY (
		MixtapeID,
		TrackID
	)
);