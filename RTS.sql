INSERT INTO players (nick, email, password) VALUES ("pawel", "siema123", "siema@gmail.com");
INSERT INTO players (nick, email, password) VALUES ("oskar", "siema1234", "oskar321@gmail.com");
INSERT INTO players (nick, email, password) VALUES ("kacper", "siema1235", "kacper123@gmail.com");
INSERT INTO resources (name) VALUES ("drewno", "glina", "żelazo");
INSERT INTO buildings (name) VALUES ("dół z gliny", "huta żelaza", "hata drwala");
INSERT INTO troops (name) VALUES ("łucznik", "rycerz", "miecznik");
SELECT name,password from players;
INSERT INTO villages (name) values("wioska oskar");
INSERT INTO villages_has_resources (villages_id, villages_players_id, resources_id, value) VALUES (1, 1, 1, 300);
SELECT * FROM players WHERE nick="pawel" AND password="siema123";
SELECT * FROM players WHERE nick="oskar" AND password="oskar321";
SELECT * FROM players WHERE nick="kacper" AND password="kacper123";
INSERT INTO villages_has_troops (villages_id, villages_players_id, troops_id, value) VALUES (1, 1, 1, 100);
INSERT INTO villages_has_troops (villages_id, villages_players_id, troops_id, value) VALUES (2, 2, 2, 100);
INSERT INTO villages_has_troops (villages_id, villages_players_id, troops_id, value) VALUES (3, 3, 3, 100);
SELECT villages_id, troops_id, value FROM villages_has_troops WHERE villages_id="1";
INSERT INTO villages_has_buildings (villages_id, villages_players_id, buildings_id) VALUES (1, 1, 1);
INSERT INTO villages_has_buildings (villages_id, villages_players_id, buildings_id) VALUES (2, 2, 1);
INSERT INTO villages_has_buildings (villages_id, villages_players_id, buildings_id) VALUES (2, 2, 1);
SELECT nick,name,troops_id FROM `players`
JOIN villages ON players.id = villages.players_id
JOIN villages_has_troops ON players.id = villages_has_troops.villages_id 
WHERE players.id=1;
SELECT nick,name,buildings_id FROM `players`
JOIN villages ON players.id = villages.players_id
JOIN villages_has_buildings ON players.id = villages_has_buildings.villages_id 
WHERE players.id=1;