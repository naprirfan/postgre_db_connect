-- Create Tables
-- Table Artists
DROP TABLE IF EXISTS Artists;
CREATE TABLE Artists(
  ArtistId  BIGSERIAL PRIMARY KEY,
  Name  varchar(150) NOT NULL,
  InfoMarkdown TEXT
);

-- Table Skills
DROP TABLE IF EXISTS Skills;
CREATE TABLE Skills(
  SkillId INTEGER PRIMARY KEY,
  Name  varchar(50) NOT NULL
);
INSERT INTO Skills (SkillId, Name) VALUES 
  (1, 'Producer'),
  (2, 'MC'),
  (3, 'DJ');

-- Table ArtistsSkills
DROP TABLE IF EXISTS ArtistsSkills;
CREATE TABLE ArtistsSkills(
  ArtistId  BIGINT REFERENCES Artists (ArtistId),
  SkillId INTEGER REFERENCES Skills (SkillId),
  PRIMARY KEY (ArtistId, SkillId)
);

-- Populate Data
TRUNCATE artistsskills CASCADE;

INSERT INTO artists (Name,InfoMarkdown) VALUES ('Maisie Gates','Nunc mauris sapien, cursus in,'),('Jemima Lynn','purus ac tellus. Suspendisse sed'),('Hilda Glenn','non, lobortis quis, pede. Suspendisse'),('Kaitlin England','libero et tristique pellentesque, tellus'),('Destiny Mccray','orci quis lectus. Nullam suscipit,'),('Kirby Barnett','imperdiet ullamcorper. Duis at lacus.'),('Audrey Barrera','eros turpis non enim. Mauris'),('Kylee Reid','egestas. Sed pharetra, felis eget'),('Wynter Mcclain','metus sit amet ante. Vivamus'),('Sybil Robbins','eleifend nec, malesuada ut, sem.');
INSERT INTO artists (Name,InfoMarkdown) VALUES ('Brynn Irwin','sagittis placerat. Cras dictum ultricies'),('Jolie Henry','facilisis non, bibendum sed, est.'),('Sopoline Ayers','lectus pede et risus. Quisque'),('Hadley Sullivan','felis eget varius ultrices, mauris'),('Miranda Hopper','bibendum fermentum metus. Aenean sed'),('Francesca Wade','dolor. Quisque tincidunt pede ac'),('Halla Pace','laoreet ipsum. Curabitur consequat, lectus'),('Kiara Dixon','at pede. Cras vulputate velit'),('Britanney Dudley','Aliquam adipiscing lobortis risus. In'),('Nayda Sargent','sed dui. Fusce aliquam, enim');
INSERT INTO artists (Name,InfoMarkdown) VALUES ('Yeo Underwood','luctus, ipsum leo elementum sem,'),('Sopoline Gomez','eu tellus eu augue porttitor'),('Jolene Greer','mi. Aliquam gravida mauris ut'),('Alexandra Neal','ligula. Aenean euismod mauris eu'),('Risa Palmer','Nulla dignissim. Maecenas ornare egestas'),('Unity Stephens','Suspendisse dui. Fusce diam nunc,'),('Danielle Gonzales','non, dapibus rutrum, justo. Praesent'),('Francesca Watts','non dui nec urna suscipit'),('Mikayla Cleveland','malesuada vel, venenatis vel, faucibus'),('Erin Green','Curabitur ut odio vel est');
INSERT INTO artists (Name,InfoMarkdown) VALUES ('Brooke Vance','elit, pharetra ut, pharetra sed,'),('Simone Roy','Lorem ipsum dolor sit amet,'),('Amelia Gutierrez','lorem vitae odio sagittis semper.'),('Nora Spears','lorem, auctor quis, tristique ac,'),('Kaye Kane','In nec orci. Donec nibh.'),('Clio Byrd','Nam porttitor scelerisque neque. Nullam'),('Flavia Cooley','lobortis mauris. Suspendisse aliquet molestie'),('Lillian Clark','lorem ac risus. Morbi metus.'),('Maris Hyde','Suspendisse dui. Fusce diam nunc,'),('Tasha Cohen','Suspendisse sed dolor. Fusce mi');
INSERT INTO artists (Name,InfoMarkdown) VALUES ('Maxine Grimes','facilisis, magna tellus faucibus leo,'),('Jacqueline Marks','est. Nunc laoreet lectus quis'),('Teegan Ramos','tempus eu, ligula. Aenean euismod'),('Lydia Velazquez','justo faucibus lectus, a sollicitudin'),('Xandra Mcfadden','et pede. Nunc sed orci'),('Madonna Robinson','ut, pellentesque eget, dictum placerat,'),('Hilary Drake','arcu. Nunc mauris. Morbi non'),('Bree Bradley','risus, at fringilla purus mauris'),('Maile Carson','aliquet libero. Integer in magna.'),('Jescie Terry','id ante dictum cursus. Nunc');
INSERT INTO artists (Name,InfoMarkdown) VALUES ('Nevada Schneider','turpis vitae purus gravida sagittis.'),('Piper Farley','lectus ante dictum mi, ac'),('Lillith Barton','arcu iaculis enim, sit amet'),('Eugenia Cochran','Curae; Donec tincidunt. Donec vitae'),('Wynter Curtis','massa lobortis ultrices. Vivamus rhoncus.'),('Jada Shannon','pede. Cras vulputate velit eu'),('Kim Austin','dignissim. Maecenas ornare egestas ligula.'),('Stephanie Le','ac risus. Morbi metus. Vivamus'),('Adria Lynn','nulla. Donec non justo. Proin'),('Maggie Guerrero','hendrerit consectetuer, cursus et, magna.');
INSERT INTO artists (Name,InfoMarkdown) VALUES ('Patricia Olson','Proin dolor. Nulla semper tellus'),('Bertha Montoya','a odio semper cursus. Integer'),('Yvette Oneill','at augue id ante dictum'),('Giselle Hardin','sem mollis dui, in sodales'),('Virginia Foreman','Donec tempor, est ac mattis'),('Rylee Reed','ac mattis semper, dui lectus'),('Olympia Hansen','non lorem vitae odio sagittis'),('Nina Zamora','sapien. Aenean massa. Integer vitae'),('Jada Maxwell','neque sed sem egestas blandit.'),('Cecilia Keith','arcu. Curabitur ut odio vel');
INSERT INTO artists (Name,InfoMarkdown) VALUES ('Yen Perez','ultrices sit amet, risus. Donec'),('Hyacinth Chavez','auctor, velit eget laoreet posuere,'),('Sarah Benson','sagittis felis. Donec tempor, est'),('Ruby Long','eleifend, nunc risus varius orci,'),('Vivien Mosley','mauris id sapien. Cras dolor'),('Kaitlin Chase','dui, in sodales elit erat'),('Jaden Morrison','habitant morbi tristique senectus et'),('Alexa Norris','semper egestas, urna justo faucibus'),('Ima Flores','et, rutrum non, hendrerit id,'),('Shaine Velez','velit. Aliquam nisl. Nulla eu');
INSERT INTO artists (Name,InfoMarkdown) VALUES ('Madeson Butler','ultrices. Vivamus rhoncus. Donec est.'),('Eleanor Cash','sodales purus, in molestie tortor'),('Claudia Herrera','sapien. Cras dolor dolor, tempus'),('Emerald Fleming','dolor. Fusce feugiat. Lorem ipsum'),('Jeanette Collier','metus. In nec orci. Donec'),('Adrienne Mcmahon','porttitor interdum. Sed auctor odio'),('Adria Peterson','Nunc pulvinar arcu et pede.'),('Amethyst Ellis','diam nunc, ullamcorper eu, euismod'),('Amaya Terrell','auctor. Mauris vel turpis. Aliquam'),('Mari Clark','scelerisque, lorem ipsum sodales purus,');
INSERT INTO artists (Name,InfoMarkdown) VALUES ('Samantha Leon','justo faucibus lectus, a sollicitudin'),('Brenda Curtis','posuere, enim nisl elementum purus,'),('Megan Gardner','Nulla interdum. Curabitur dictum. Phasellus'),('Cleo Pruitt','justo sit amet nulla. Donec'),('Kiara Melendez','Aenean euismod mauris eu elit.'),('Cleo Hartman','est mauris, rhoncus id, mollis'),('Colette Duffy','lacus. Quisque purus sapien, gravida'),('Karen Morse','semper egestas, urna justo faucibus'),('Regina Brown','consectetuer adipiscing elit. Aliquam auctor,'),('Jana Ortiz','velit eget laoreet posuere, enim');

INSERT INTO artistsskills (ArtistId,SkillId) VALUES (1,1),(2,2),(3,2),(4,3),(5,2),(6,1),(7,2),(8,1),(9,2),(10,2);
INSERT INTO artistsskills (ArtistId,SkillId) VALUES (11,2),(12,1),(13,1),(14,3),(15,2),(16,1),(17,2),(18,1),(19,2),(20,3);
INSERT INTO artistsskills (ArtistId,SkillId) VALUES (21,1),(22,2),(23,2),(24,1),(25,2),(26,3),(27,3),(28,1),(29,3),(30,1);
INSERT INTO artistsskills (ArtistId,SkillId) VALUES (31,1),(32,2),(33,1),(34,1),(35,2),(36,2),(37,3),(38,2),(39,2),(40,2);
INSERT INTO artistsskills (ArtistId,SkillId) VALUES (41,2),(42,3),(43,1),(44,3),(45,1),(46,1),(47,1),(48,3),(49,1),(50,3);
INSERT INTO artistsskills (ArtistId,SkillId) VALUES (51,1),(52,3),(53,1),(54,2),(55,2),(56,3),(57,1),(58,2),(59,2),(60,2);
INSERT INTO artistsskills (ArtistId,SkillId) VALUES (61,3),(62,1),(63,3),(64,3),(65,2),(66,1),(67,2),(68,2),(69,2),(70,1);
INSERT INTO artistsskills (ArtistId,SkillId) VALUES (71,2),(72,1),(73,2),(74,1),(75,1),(76,2),(77,1),(78,1),(79,3),(80,1);
INSERT INTO artistsskills (ArtistId,SkillId) VALUES (81,3),(82,2),(83,2),(84,2),(85,3),(86,2),(87,3),(88,1),(89,3),(90,2);
INSERT INTO artistsskills (ArtistId,SkillId) VALUES (91,2),(92,3),(93,3),(94,1),(95,1),(96,1),(97,2),(98,3),(99,2),(100,1);

INSERT INTO artistsskills (ArtistId, SkillId) VALUES (59, 1), (59, 3), (87, 1);