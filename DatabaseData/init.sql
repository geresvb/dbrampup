-- Drop tables if they already exist to reset the database
DROP TABLE IF EXISTS merged_songs CASCADE;
DROP TABLE IF EXISTS top_songs CASCADE;

-- Create merged_songs table
CREATE TABLE merged_songs (
    id SERIAL PRIMARY KEY,
    user_id INT NOT NULL,
    song_name VARCHAR(255) NOT NULL,
    artist_name VARCHAR(255) NOT NULL,
    popularity INT DEFAULT 0,  -- Ensures NULL values become 0
    votes INT DEFAULT 0        -- Ensures NULL values become 0
);

-- Create top_songs table
CREATE TABLE top_songs (
    id SERIAL PRIMARY KEY,
    user_id INT NOT NULL,
    song_name VARCHAR(255) NOT NULL,
    artist_name VARCHAR(255) NOT NULL,
    popularity INT NOT NULL
);


INSERT INTO merged_songs (user_id, song_name, artist_name, popularity, votes)
VALUES 
(1, 'Shape of You', 'Ed Sheeran', 95, 100),
(2, 'Blinding Lights', 'The Weeknd', 90, 150),
(3, 'Someone Like You', 'Adele', 85, 75);

INSERT INTO top_songs (user_id, song_name, artist_name, popularity)
VALUES 
(1, 'Shape of You', 'Ed Sheeran', 98),
(2, 'Blinding Lights', 'The Weeknd', 95),
(3, 'Someone Like You', 'Adele', 90);
