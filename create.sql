
CREATE TABLE IF NOT EXISTS bookmark (
        id  INT NOT NULL AUTO_INCREMENT , 
        PRIMARY KEY (id), 
        id_movie VARCHAR(100) NOT NULL, 
        id_user INT NOT NULL
)ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS user (
        id  INT NOT NULL AUTO_INCREMENT , 
        PRIMARY KEY (id), 
        name VARCHAR(400), 
        email VARCHAR(400), 
        login VARCHAR(400), 
        password VARCHAR(400), 
        level INT
)ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS watched (
        id  INT NOT NULL AUTO_INCREMENT , 
        PRIMARY KEY (id), 
        id_movie VARCHAR(100) NOT NULL, 
        id_user INT NOT NULL
)ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS movie (
        id  VARCHAR(100), 
        PRIMARY KEY (id), 
        id_themoviedb INT, 
        original_title VARCHAR(400), 
        release_date  DATE , 
        poster_path VARCHAR(400)
)ENGINE = InnoDB;

ALTER TABLE bookmark
    ADD CONSTRAINT fk_bookmark_movie FOREIGN KEY (id_movie)
    REFERENCES movie (id);

ALTER TABLE bookmark
    ADD CONSTRAINT fk_bookmark_user FOREIGN KEY (id_user)
    REFERENCES user (id);

ALTER TABLE watched
    ADD CONSTRAINT fk_watched_movie FOREIGN KEY (id_movie)
    REFERENCES movie (id);

ALTER TABLE watched
    ADD CONSTRAINT fk_watched_user FOREIGN KEY (id_user)
    REFERENCES user (id);