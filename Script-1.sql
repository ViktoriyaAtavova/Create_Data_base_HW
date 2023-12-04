CREATE TABLE IF NOT EXISTS Musical_genre(
    musical_genre_id SERIAL PRIMARY KEY,
    name VARCHAR(200) UNIQUE
);

CREATE TABLE IF NOT EXISTS Performer(
    performer_id SERIAL PRIMARY KEY,
    name VARCHAR(200) UNIQUE
);

CREATE TABLE IF NOT EXISTS PerformerMusical_genre(
	musical_genre_id INTEGER REFERENCES Musical_genre(musical_genre_id),
	performer_id INTEGER REFERENCES Performer(performer_id),
	CONSTRAINT pk PRIMARY KEY (musical_genre_id, performer_id)
);

CREATE TABLE IF NOT exists Album(
    album_id SERIAL PRIMARY KEY,
    name VARCHAR(200),
    year_of_issue DATE
);
CREATE TABLE IF NOT EXISTS AlbumPerformer(
	album_id INTEGER REFERENCES Album(album_id),
	performer_id INTEGER REFERENCES Performer(performer_id),
	CONSTRAINT prk PRIMARY KEY (album_id, performer_id)
);

CREATE TABLE IF NOT EXISTS Song(
    song_id SERIAL PRIMARY KEY,
    name VARCHAR(200),
    duration INTEGER NOT NULL CHECK (duration > 0),
    album_id INTEGER NOT NULL REFERENCES Album(album_id)
);

CREATE TABLE IF NOT EXISTS Collection(
    collection_id SERIAL PRIMARY KEY,
    name VARCHAR (200),
    year_of_issue DATE
);

CREATE TABLE IF NOT EXISTS SongCollection(
	song_id INTEGER REFERENCES Song(song_id),
	collection_id INTEGER REFERENCES Collection(collection_id),
	CONSTRAINT prky PRIMARY KEY (song_id, collection_id)
);




