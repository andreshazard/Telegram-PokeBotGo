/* Create tables */
CREATE DATABASE pokebotgo;
use pokebotgo;
CREATE TABLE type(
    type_id INT NOT NULL AUTO_INCREMENT,
    type_name VARCHAR(100) NOT NULL,
    PRIMARY KEY ( type_id )
);
CREATE TABLE egg(
    egg_id INT NOT NULL AUTO_INCREMENT,
    distance INT not null,
    PRIMARY KEY ( egg_id )
);
CREATE TABLE quick_move(
    quick_move_id INT NOT NULL AUTO_INCREMENT,
    quick_move_name VARCHAR(200) NOT NULL,
    PRIMARY KEY ( quick_move_id)
);
CREATE TABLE charge_move(
    charge_move_id INT NOT NULL AUTO_INCREMENT,
    charge_move_name VARCHAR(200) NOT NULL,
    PRIMARY KEY ( charge_move_id)
);
CREATE TABLE pokemon(
    pokemon_id INT NOT NULL AUTO_INCREMENT,
    pokemon_number INT NOT NULL,
    pokemon_name VARCHAR(100) NOT NULL ,
    type_id INT NOT NULL,
    buddy_distance INT,
    best_offensive_quick_move_id INT NOT NULL,
    best_offensive_charge_move_id INT NOT NULL,
    best_defensive_quick_move_id INT NOT NULL,
    best_defensive_charge_move_id INT NOT NULL,
    PRIMARY KEY ( pokemon_id ),
    FOREIGN KEY ( type_id ) REFERENCES type ( type_id ),
    FOREIGN KEY ( best_offensive_quick_move_id ) REFERENCES quick_move (quick_move_id),
    FOREIGN KEY ( best_offensive_charge_move_id ) REFERENCES charge_move (charge_move_id),
    FOREIGN KEY ( best_defensive_quick_move_id ) REFERENCES quick_move (quick_move_id),
    FOREIGN KEY ( best_defensive_charge_move_id) REFERENCES charge_move (charge_move_id),
    CONSTRAINT unique_fields UNIQUE (pokemon_id, pokemon_number, pokemon_name)
)ENGINE=INNODB;

/* insert egss */
INSERT INTO egg values (1, 2);
INSERT INTO egg values (2, 5);
INSERT INTO egg values (3, 10);

/* insert quick moves */
INSERT INTO quick_move (quick_move_name) VALUES ("Acid");
INSERT INTO quick_move (quick_move_name) VALUES ("Bite");
INSERT INTO quick_move (quick_move_name) VALUES ("Bubble");
INSERT INTO quick_move (quick_move_name) VALUES ("Bug Bite");
INSERT INTO quick_move (quick_move_name) VALUES ("Bullet Punch");
INSERT INTO quick_move (quick_move_name) VALUES ("Confusion");
INSERT INTO quick_move (quick_move_name) VALUES ("Cut");
INSERT INTO quick_move (quick_move_name) VALUES ("Dragon Breath");
INSERT INTO quick_move (quick_move_name) VALUES ("Ember");
INSERT INTO quick_move (quick_move_name) VALUES ("Feint Attack");
INSERT INTO quick_move (quick_move_name) VALUES ("Fire Fang");
INSERT INTO quick_move (quick_move_name) VALUES ("Frost Breath");
INSERT INTO quick_move (quick_move_name) VALUES ("Fury Cutter");
INSERT INTO quick_move (quick_move_name) VALUES ("Ice Shard");
INSERT INTO quick_move (quick_move_name) VALUES ("Karate Chop");
INSERT INTO quick_move (quick_move_name) VALUES ("Lick");
INSERT INTO quick_move (quick_move_name) VALUES ("Low Kick");
INSERT INTO quick_move (quick_move_name) VALUES ("Metal Claw");
INSERT INTO quick_move (quick_move_name) VALUES ("Mud Shot");
INSERT INTO quick_move (quick_move_name) VALUES ("Mud Slap");
INSERT INTO quick_move (quick_move_name) VALUES ("Peck");
INSERT INTO quick_move (quick_move_name) VALUES ("Poison Jab");
INSERT INTO quick_move (quick_move_name) VALUES ("Poison Sting");
INSERT INTO quick_move (quick_move_name) VALUES ("Pound");
INSERT INTO quick_move (quick_move_name) VALUES ("Psycho Cut");
INSERT INTO quick_move (quick_move_name) VALUES ("Quick Attack");
INSERT INTO quick_move (quick_move_name) VALUES ("Razor Leaf");
INSERT INTO quick_move (quick_move_name) VALUES ("Rock Smash");
INSERT INTO quick_move (quick_move_name) VALUES ("Rock Throw");
INSERT INTO quick_move (quick_move_name) VALUES ("Scratch");
INSERT INTO quick_move (quick_move_name) VALUES ("Shadow Claw");
INSERT INTO quick_move (quick_move_name) VALUES ("Spark");
INSERT INTO quick_move (quick_move_name) VALUES ("Splash");
INSERT INTO quick_move (quick_move_name) VALUES ("Steel Wing");
INSERT INTO quick_move (quick_move_name) VALUES ("Sucker Punch");
INSERT INTO quick_move (quick_move_name) VALUES ("Tackle");
INSERT INTO quick_move (quick_move_name) VALUES ("Thunder Shock");
INSERT INTO quick_move (quick_move_name) VALUES ("Vine Whip");
INSERT INTO quick_move (quick_move_name) VALUES ("Water Gun");
INSERT INTO quick_move (quick_move_name) VALUES ("Wing Attack");
INSERT INTO quick_move (quick_move_name) VALUES ("Zen Headbutt");

/* insert charge moves */ 
INSERT INTO charge_move (charge_move_name) VALUES ("Aerial Ace");
INSERT INTO charge_move (charge_move_name) VALUES ("Air Cutter");
INSERT INTO charge_move (charge_move_name) VALUES ("Ancient Power");
INSERT INTO charge_move (charge_move_name) VALUES ("Aqua Jet");
INSERT INTO charge_move (charge_move_name) VALUES ("Aqua Tail");
INSERT INTO charge_move (charge_move_name) VALUES ("Blizzard");
INSERT INTO charge_move (charge_move_name) VALUES ("Body Slam");
INSERT INTO charge_move (charge_move_name) VALUES ("Bone Club");
INSERT INTO charge_move (charge_move_name) VALUES ("Brick Break");
INSERT INTO charge_move (charge_move_name) VALUES ("Brine");
INSERT INTO charge_move (charge_move_name) VALUES ("Bubble Beam");
INSERT INTO charge_move (charge_move_name) VALUES ("Bug Buzz");
INSERT INTO charge_move (charge_move_name) VALUES ("Bulldoze");
INSERT INTO charge_move (charge_move_name) VALUES ("Cross Chop");
INSERT INTO charge_move (charge_move_name) VALUES ("Cross Poison");
INSERT INTO charge_move (charge_move_name) VALUES ("Dark Pulse");
INSERT INTO charge_move (charge_move_name) VALUES ("Dazzling Gleam");
INSERT INTO charge_move (charge_move_name) VALUES ("Dig");
INSERT INTO charge_move (charge_move_name) VALUES ("Disarming Voice");
INSERT INTO charge_move (charge_move_name) VALUES ("Discharge");
INSERT INTO charge_move (charge_move_name) VALUES ("Dragon Claw");
INSERT INTO charge_move (charge_move_name) VALUES ("Dragon Pulse");
INSERT INTO charge_move (charge_move_name) VALUES ("Draining Kiss");
INSERT INTO charge_move (charge_move_name) VALUES ("Drill Peck");
INSERT INTO charge_move (charge_move_name) VALUES ("Drill Run");
INSERT INTO charge_move (charge_move_name) VALUES ("Earthquake");
INSERT INTO charge_move (charge_move_name) VALUES ("Fire Blast");
INSERT INTO charge_move (charge_move_name) VALUES ("Fire Punch");
INSERT INTO charge_move (charge_move_name) VALUES ("Flame Burst");
INSERT INTO charge_move (charge_move_name) VALUES ("Flame Charge");
INSERT INTO charge_move (charge_move_name) VALUES ("Flame Wheel");
INSERT INTO charge_move (charge_move_name) VALUES ("Flamethrower");
INSERT INTO charge_move (charge_move_name) VALUES ("Flash Cannon");
INSERT INTO charge_move (charge_move_name) VALUES ("Gunk Shot");
INSERT INTO charge_move (charge_move_name) VALUES ("Heat Wave");
INSERT INTO charge_move (charge_move_name) VALUES ("Horn Attack");
INSERT INTO charge_move (charge_move_name) VALUES ("Hurricane");
INSERT INTO charge_move (charge_move_name) VALUES ("Hydro Pump");
INSERT INTO charge_move (charge_move_name) VALUES ("Hyper Beam");
INSERT INTO charge_move (charge_move_name) VALUES ("Hyper Fang");
INSERT INTO charge_move (charge_move_name) VALUES ("Ice Beam");
INSERT INTO charge_move (charge_move_name) VALUES ("Ice Punch");
INSERT INTO charge_move (charge_move_name) VALUES ("Icy Wind");
INSERT INTO charge_move (charge_move_name) VALUES ("Iron Head");
INSERT INTO charge_move (charge_move_name) VALUES ("Leaf Blade");
INSERT INTO charge_move (charge_move_name) VALUES ("Low Sweep");
INSERT INTO charge_move (charge_move_name) VALUES ("Magnet Bomb");
INSERT INTO charge_move (charge_move_name) VALUES ("Megahorn");
INSERT INTO charge_move (charge_move_name) VALUES ("Moonblast");
INSERT INTO charge_move (charge_move_name) VALUES ("Mud Bomb");
INSERT INTO charge_move (charge_move_name) VALUES ("Night Slash");
INSERT INTO charge_move (charge_move_name) VALUES ("Ominous Wind");
INSERT INTO charge_move (charge_move_name) VALUES ("Petal Blizzard");
INSERT INTO charge_move (charge_move_name) VALUES ("Play Rough");
INSERT INTO charge_move (charge_move_name) VALUES ("Poison Fang");
INSERT INTO charge_move (charge_move_name) VALUES ("Power Gem");
INSERT INTO charge_move (charge_move_name) VALUES ("Power Whip");
INSERT INTO charge_move (charge_move_name) VALUES ("Psybeam");
INSERT INTO charge_move (charge_move_name) VALUES ("Psychic");
INSERT INTO charge_move (charge_move_name) VALUES ("Psyshock");
INSERT INTO charge_move (charge_move_name) VALUES ("Rock Slide");
INSERT INTO charge_move (charge_move_name) VALUES ("Rock Tomb");
INSERT INTO charge_move (charge_move_name) VALUES ("Scald");
INSERT INTO charge_move (charge_move_name) VALUES ("Seed Bomb");
INSERT INTO charge_move (charge_move_name) VALUES ("Shadow Ball");
INSERT INTO charge_move (charge_move_name) VALUES ("Signal Beam");
INSERT INTO charge_move (charge_move_name) VALUES ("Sludge");
INSERT INTO charge_move (charge_move_name) VALUES ("Sludge Bomb");
INSERT INTO charge_move (charge_move_name) VALUES ("Sludge Wave");
INSERT INTO charge_move (charge_move_name) VALUES ("Solar Beam");
INSERT INTO charge_move (charge_move_name) VALUES ("Stomp");
INSERT INTO charge_move (charge_move_name) VALUES ("Stone Edge");
INSERT INTO charge_move (charge_move_name) VALUES ("Struggle");
INSERT INTO charge_move (charge_move_name) VALUES ("Submission");
INSERT INTO charge_move (charge_move_name) VALUES ("Swift");
INSERT INTO charge_move (charge_move_name) VALUES ("Thunder");
INSERT INTO charge_move (charge_move_name) VALUES ("Thunder Punch");
INSERT INTO charge_move (charge_move_name) VALUES ("Thunderbolt");
INSERT INTO charge_move (charge_move_name) VALUES ("Twister");
INSERT INTO charge_move (charge_move_name) VALUES ("Vice Grip");
INSERT INTO charge_move (charge_move_name) VALUES ("Water Pulse");
INSERT INTO charge_move (charge_move_name) VALUES ("Wrap");
INSERT INTO charge_move (charge_move_name) VALUES ("X-Scissor");

/* insert types */
INSERT INTO type (type_name) VALUES ("Bug");
INSERT INTO type (type_name) VALUES ("Bug/Fighting");
INSERT INTO type (type_name) VALUES ("Bug/Flying");
INSERT INTO type (type_name) VALUES ("Bug/Grass");
INSERT INTO type (type_name) VALUES ("Bug/Poison");
INSERT INTO type (type_name) VALUES ("Bug/Rock");
INSERT INTO type (type_name) VALUES ("Bug/Steel");
INSERT INTO type (type_name) VALUES ("Dark");
INSERT INTO type (type_name) VALUES ("Dark/Fire");
INSERT INTO type (type_name) VALUES ("Dark/Flying");
INSERT INTO type (type_name) VALUES ("Dark/Ice");
INSERT INTO type (type_name) VALUES ("Dark/Rock");
INSERT INTO type (type_name) VALUES ("Dragon");
INSERT INTO type (type_name) VALUES ("Dragon/Flying");
INSERT INTO type (type_name) VALUES ("Electric");
INSERT INTO type (type_name) VALUES ("Fairy");
INSERT INTO type (type_name) VALUES ("Fairy/Flying");
INSERT INTO type (type_name) VALUES ("Fairy/Psychic");
INSERT INTO type (type_name) VALUES ("Fighting");
INSERT INTO type (type_name) VALUES ("Fighting/Water");
INSERT INTO type (type_name) VALUES ("Fire");
INSERT INTO type (type_name) VALUES ("Fire/Rock");
INSERT INTO type (type_name) VALUES ("Flying/Electric");
INSERT INTO type (type_name) VALUES ("Flying/Fire");
INSERT INTO type (type_name) VALUES ("Flying/Ice");
INSERT INTO type (type_name) VALUES ("Flying/Poison");
INSERT INTO type (type_name) VALUES ("Flying/Rock");
INSERT INTO type (type_name) VALUES ("Flying/Water");
INSERT INTO type (type_name) VALUES ("Ghost");
INSERT INTO type (type_name) VALUES ("Ghost/Poison");
INSERT INTO type (type_name) VALUES ("Grass");
INSERT INTO type (type_name) VALUES ("Grass/Flying");
INSERT INTO type (type_name) VALUES ("Grass/Poison");
INSERT INTO type (type_name) VALUES ("Grass/Psychic");
INSERT INTO type (type_name) VALUES ("Ground");
INSERT INTO type (type_name) VALUES ("Ground/Flying");
INSERT INTO type (type_name) VALUES ("Ground/Poison");
INSERT INTO type (type_name) VALUES ("Ground/Rock");
INSERT INTO type (type_name) VALUES ("Ground/Steel");
INSERT INTO type (type_name) VALUES ("Ground/Water");
INSERT INTO type (type_name) VALUES ("Ice/Ground");
INSERT INTO type (type_name) VALUES ("Ice/Psychic");
INSERT INTO type (type_name) VALUES ("Normal");
INSERT INTO type (type_name) VALUES ("Normal/Fairy");
INSERT INTO type (type_name) VALUES ("Normal/Flying");
INSERT INTO type (type_name) VALUES ("Poison");
INSERT INTO type (type_name) VALUES ("Psychic");
INSERT INTO type (type_name) VALUES ("Psychic/Flying");
INSERT INTO type (type_name) VALUES ("Psychic/Normal");
INSERT INTO type (type_name) VALUES ("Psychic/Water");
INSERT INTO type (type_name) VALUES ("Rock");
INSERT INTO type (type_name) VALUES ("Rock/Water");
INSERT INTO type (type_name) VALUES ("Steel/Electric");
INSERT INTO type (type_name) VALUES ("Steel/Flying");
INSERT INTO type (type_name) VALUES ("Water");
INSERT INTO type (type_name) VALUES ("Water/Dragon");
INSERT INTO type (type_name) VALUES ("Water/Electric");
INSERT INTO type (type_name) VALUES ("Water/Fairy");
INSERT INTO type (type_name) VALUES ("Water/Ice");
INSERT INTO type (type_name) VALUES ("Water/Poison");

/* insert pokemons */
INSERT INTO pokemon (pokemon_number, pokemon_name,  type_id, buddy_distance, best_offensive_quick_move_id,
best_offensive_charge_move_id, best_defensive_quick_move_id, best_defensive_charge_move_id
) VALUES (1, "BULBASAUR", 33, 3, 38, 68, 36, 68 );


INSERT INTO pokemon (pokemon_number, pokemon_name, type_id, buddy_distance, best_offensive_quick_move_id,
best_offensive_charge_move_id, best_defensive_quick_move_id, best_defensive_charge_move_id
) VALUES (2, "IVYSAUR", 33, 3, 38, 70, 27, 70);


INSERT INTO pokemon (pokemon_number, pokemon_name, type_id, buddy_distance, best_offensive_quick_move_id,
best_offensive_charge_move_id, best_defensive_quick_move_id, best_defensive_charge_move_id
) VALUES (3, "VENUSAUR", 33, 3, 38, 70, 27, 70);

INSERT INTO pokemon (pokemon_number, pokemon_name, type_id, buddy_distance, best_offensive_quick_move_id,
best_offensive_charge_move_id, best_defensive_quick_move_id, best_defensive_charge_move_id
) VALUES (4, "CHARMANDER", 21, 3, 30, 32, 9, 32);

INSERT INTO pokemon (pokemon_number, pokemon_name, type_id, buddy_distance, best_offensive_quick_move_id,
best_offensive_charge_move_id, best_defensive_quick_move_id, best_defensive_charge_move_id
) VALUES (5, "CHARMELEON", 21, 3, 30, 32, 9, 32);

INSERT INTO pokemon (pokemon_number, pokemon_name, type_id, buddy_distance, best_offensive_quick_move_id,
best_offensive_charge_move_id, best_defensive_quick_move_id, best_defensive_charge_move_id
) VALUES (6, "CHARIZARD", 24, 3, 40, 27, 40, 32);

INSERT INTO pokemon (pokemon_number, pokemon_name, type_id, buddy_distance, best_offensive_quick_move_id,
best_offensive_charge_move_id, best_defensive_quick_move_id, best_defensive_charge_move_id
) VALUES (7, "SQUIRTLE", 55, 3, 3, 5, 3, 5);

INSERT INTO pokemon (pokemon_number, pokemon_name, type_id, buddy_distance, best_offensive_quick_move_id,
best_offensive_charge_move_id, best_defensive_quick_move_id, best_defensive_charge_move_id
) VALUES (8, "WARTORTLE", 55, 3, 39, 38, 39, 38);

INSERT INTO pokemon (pokemon_number, pokemon_name, type_id, buddy_distance, best_offensive_quick_move_id,
best_offensive_charge_move_id, best_defensive_quick_move_id, best_defensive_charge_move_id
) VALUES (9, "BLASTOISE", 55, 3, 39, 38, 39, 33);

INSERT INTO pokemon (pokemon_number, pokemon_name, type_id, buddy_distance, best_offensive_quick_move_id,
best_offensive_charge_move_id, best_defensive_quick_move_id, best_defensive_charge_move_id
) VALUES (10, "CATERPIE", 1, 1, 4, 73, 36, 73);

INSERT INTO pokemon (pokemon_number, pokemon_name, type_id, buddy_distance, best_offensive_quick_move_id,
best_offensive_charge_move_id, best_defensive_quick_move_id, best_defensive_charge_move_id
) VALUES (11, "METAPOD", 1, 1, 4, 73, 36, 73);

INSERT INTO pokemon (pokemon_number, pokemon_name, type_id, buddy_distance, best_offensive_quick_move_id,
best_offensive_charge_move_id, best_defensive_quick_move_id, best_defensive_charge_move_id
) VALUES (12, "BUTTERFREE", 3, 1, 4, 12, 6, 12);

INSERT INTO pokemon (pokemon_number, pokemon_name, type_id, buddy_distance, best_offensive_quick_move_id,
best_offensive_charge_move_id, best_defensive_quick_move_id, best_defensive_charge_move_id
) VALUES (13, "WEEDLE", 5, 1, 4, 73, 23, 73);

INSERT INTO pokemon (pokemon_number, pokemon_name, type_id, buddy_distance, best_offensive_quick_move_id,
best_offensive_charge_move_id, best_defensive_quick_move_id, best_defensive_charge_move_id
) VALUES (14, "KAKUNA", 5, 1, 4, 73, 23, 73);

INSERT INTO pokemon (pokemon_number, pokemon_name, type_id, buddy_distance, best_offensive_quick_move_id,
best_offensive_charge_move_id, best_defensive_quick_move_id, best_defensive_charge_move_id
) VALUES (15, "BEEDRILL", 5, 1, 4, 68, 22, 69);

INSERT INTO pokemon (pokemon_number, pokemon_name, type_id, buddy_distance, best_offensive_quick_move_id,
best_offensive_charge_move_id, best_defensive_quick_move_id, best_defensive_charge_move_id
) VALUES (16, "PIDGEY", 45, 1, 36, 1, 36, 1);

INSERT INTO pokemon (pokemon_number, pokemon_name, type_id, buddy_distance, best_offensive_quick_move_id,
best_offensive_charge_move_id, best_defensive_quick_move_id, best_defensive_charge_move_id
) VALUES (17, "PIDGEOTTO", 45, 1, 40, 1, 34, 1);

INSERT INTO pokemon (pokemon_number, pokemon_name, type_id, buddy_distance, best_offensive_quick_move_id,
best_offensive_charge_move_id, best_defensive_quick_move_id, best_defensive_charge_move_id
) VALUES (18, "PIDGEOT", 45, 1, 40, 37, 34, 37);

INSERT INTO pokemon (pokemon_number, pokemon_name, type_id, buddy_distance, best_offensive_quick_move_id,
best_offensive_charge_move_id, best_defensive_quick_move_id, best_defensive_charge_move_id
) VALUES (19, "RATTATA", 43, 1, 36, 7, 36, 40);

INSERT INTO pokemon (pokemon_number, pokemon_name, type_id, buddy_distance, best_offensive_quick_move_id,
best_offensive_charge_move_id, best_defensive_quick_move_id, best_defensive_charge_move_id
) VALUES (20, "RATICATE", 43, 1, 2, 39, 2, 40);

INSERT INTO pokemon (pokemon_number, pokemon_name, type_id, buddy_distance, best_offensive_quick_move_id,
best_offensive_charge_move_id, best_defensive_quick_move_id, best_defensive_charge_move_id
) VALUES (21, "SPEAROW", 45, 1, 21, 24, 26, 24);

INSERT INTO pokemon (pokemon_number, pokemon_name, type_id, buddy_distance, best_offensive_quick_move_id,
best_offensive_charge_move_id, best_defensive_quick_move_id, best_defensive_charge_move_id
) VALUES (22, "FEAROW", 45, 1, 34, 25, 34, 25);

INSERT INTO pokemon (pokemon_number, pokemon_name, type_id, buddy_distance, best_offensive_quick_move_id,
best_offensive_charge_move_id, best_defensive_quick_move_id, best_defensive_charge_move_id
) VALUES (23, "EKANS", 46, 3, 23, 68, 1, 68);

INSERT INTO pokemon (pokemon_number, pokemon_name, type_id, buddy_distance, best_offensive_quick_move_id,
best_offensive_charge_move_id, best_defensive_quick_move_id, best_defensive_charge_move_id
) VALUES (24, "ARBOK", 46, 3, 2, 34, 1, 16);

INSERT INTO pokemon (pokemon_number, pokemon_name, type_id, buddy_distance, best_offensive_quick_move_id,
best_offensive_charge_move_id, best_defensive_quick_move_id, best_defensive_charge_move_id
) VALUES (25, "PIKACHU", 15, 1, 37, 76, 26, 78);

INSERT INTO pokemon (pokemon_number, pokemon_name, type_id, buddy_distance, best_offensive_quick_move_id,
best_offensive_charge_move_id, best_defensive_quick_move_id, best_defensive_charge_move_id
) VALUES (26, "RAICHU", 15, 1, 32, 76, 32, 77);

INSERT INTO pokemon (pokemon_number, pokemon_name, type_id, buddy_distance, best_offensive_quick_move_id,
best_offensive_charge_move_id, best_defensive_quick_move_id, best_defensive_charge_move_id
) VALUES (27, "SANDSHREW", 35, 3, 19, 61, 19, 18);

INSERT INTO pokemon (pokemon_number, pokemon_name, type_id, buddy_distance, best_offensive_quick_move_id,
best_offensive_charge_move_id, best_defensive_quick_move_id, best_defensive_charge_move_id
) VALUES (28, "SANDSLASH", 35, 3, 19, 26, 18, 13);

INSERT INTO pokemon (pokemon_number, pokemon_name, type_id, buddy_distance, best_offensive_quick_move_id,
best_offensive_charge_move_id, best_defensive_quick_move_id, best_defensive_charge_move_id
) VALUES (29, "NIDORAN-F", 46, 3, 23, 68, 23, 68);

INSERT INTO pokemon (pokemon_number, pokemon_name, type_id, buddy_distance, best_offensive_quick_move_id,
best_offensive_charge_move_id, best_defensive_quick_move_id, best_defensive_charge_move_id
) VALUES (30, "NIDORINA", 46, 3, 23, 68, 23, 68);

INSERT INTO pokemon (pokemon_number, pokemon_name, type_id, buddy_distance, best_offensive_quick_move_id,
best_offensive_charge_move_id, best_defensive_quick_move_id, best_defensive_charge_move_id
) VALUES (31, "NIDOQUEEN", 37, 3, 22, 26, 22, 26);

INSERT INTO pokemon (pokemon_number, pokemon_name, type_id, buddy_distance, best_offensive_quick_move_id,
best_offensive_charge_move_id, best_defensive_quick_move_id, best_defensive_charge_move_id
) VALUES (32, "NIDORAN-H", 46, 3, 23, 68, 21, 68);

INSERT INTO pokemon (pokemon_number, pokemon_name, type_id, buddy_distance, best_offensive_quick_move_id,
best_offensive_charge_move_id, best_defensive_quick_move_id, best_defensive_charge_move_id
) VALUES (33, "NIDORINO", 46, 3, 22, 68, 22, 68);

INSERT INTO pokemon (pokemon_number, pokemon_name, type_id, buddy_distance, best_offensive_quick_move_id,
best_offensive_charge_move_id, best_defensive_quick_move_id, best_defensive_charge_move_id
) VALUES (34, "NIDOKING", 37, 3, 22, 26, 22, 26);

INSERT INTO pokemon (pokemon_number, pokemon_name, type_id, buddy_distance, best_offensive_quick_move_id,
best_offensive_charge_move_id, best_defensive_quick_move_id, best_defensive_charge_move_id
) VALUES (35, "CLEFAIRY", 16, 1, 24, 49, 41, 49);

INSERT INTO pokemon (pokemon_number, pokemon_name, type_id, buddy_distance, best_offensive_quick_move_id,
best_offensive_charge_move_id, best_defensive_quick_move_id, best_defensive_charge_move_id
) VALUES (36, "CLEFABLE", 16, 1, 24, 49, 41, 17);

INSERT INTO pokemon (pokemon_number, pokemon_name, type_id, buddy_distance, best_offensive_quick_move_id,
best_offensive_charge_move_id, best_defensive_quick_move_id, best_defensive_charge_move_id
) VALUES (37, "VULPIX", 21, 3, 9, 32, 9, 32);

INSERT INTO pokemon (pokemon_number, pokemon_name, type_id, buddy_distance, best_offensive_quick_move_id,
best_offensive_charge_move_id, best_defensive_quick_move_id, best_defensive_charge_move_id
) VALUES (38, "NINETALES", 21, 3, 9, 27, 9, 32);

INSERT INTO pokemon (pokemon_number, pokemon_name, type_id, buddy_distance, best_offensive_quick_move_id,
best_offensive_charge_move_id, best_defensive_quick_move_id, best_defensive_charge_move_id
) VALUES (39, "JIGGLYPUFF", 44, 1, 24, 7, 10, 17);

INSERT INTO pokemon (pokemon_number, pokemon_name, type_id, buddy_distance, best_offensive_quick_move_id,
best_offensive_charge_move_id, best_defensive_quick_move_id, best_defensive_charge_move_id
) VALUES (40, "WIGGLYTUFF", 44, 1, 24, 39, 24, 54);

INSERT INTO pokemon (pokemon_number, pokemon_name, type_id, buddy_distance, best_offensive_quick_move_id,
best_offensive_charge_move_id, best_defensive_quick_move_id, best_defensive_charge_move_id
) VALUES (41, "ZUBAT", 26, 1, 2, 68, 26, 68);

INSERT INTO pokemon (pokemon_number, pokemon_name, type_id, buddy_distance, best_offensive_quick_move_id,
best_offensive_charge_move_id, best_defensive_quick_move_id, best_defensive_charge_move_id
) VALUES (42, "GOLBAT", 26, 1, 40, 55, 40, 55);

INSERT INTO pokemon (pokemon_number, pokemon_name, type_id, buddy_distance, best_offensive_quick_move_id,
best_offensive_charge_move_id, best_defensive_quick_move_id, best_defensive_charge_move_id
) VALUES (43, "ODDISH", 33, 3, 27, 68, 27, 68);

INSERT INTO pokemon (pokemon_number, pokemon_name, type_id, buddy_distance, best_offensive_quick_move_id,
best_offensive_charge_move_id, best_defensive_quick_move_id, best_defensive_charge_move_id
) VALUES (44, "GLOOM", 33, 3, 27, 53, 27, 53);

INSERT INTO pokemon (pokemon_number, pokemon_name, type_id, buddy_distance, best_offensive_quick_move_id,
best_offensive_charge_move_id, best_defensive_quick_move_id, best_defensive_charge_move_id
) VALUES (45, "VILEPLUME", 33, 3, 27, 70, 27, 53);

INSERT INTO pokemon (pokemon_number, pokemon_name, type_id, buddy_distance, best_offensive_quick_move_id,
best_offensive_charge_move_id, best_defensive_quick_move_id, best_defensive_charge_move_id
) VALUES (46, "PARAS", 4, 3, 4, 64, 4 ,64);

INSERT INTO pokemon (pokemon_number, pokemon_name, type_id, buddy_distance, best_offensive_quick_move_id,
best_offensive_charge_move_id, best_defensive_quick_move_id, best_defensive_charge_move_id
) VALUES (47, "PARASECT", 4, 3, 4, 70, 4, 70);

INSERT INTO pokemon (pokemon_number, pokemon_name, type_id, buddy_distance, best_offensive_quick_move_id,
best_offensive_charge_move_id, best_defensive_quick_move_id, best_defensive_charge_move_id
) VALUES (48, "VENONAT", 5, 3, 4, 66, 6, 66);

INSERT INTO pokemon (pokemon_number, pokemon_name, type_id, buddy_distance, best_offensive_quick_move_id,
best_offensive_charge_move_id, best_defensive_quick_move_id, best_defensive_charge_move_id
) VALUES (49, "VENOMOTH", 5, 3, 4, 12, 6, 12);

INSERT INTO pokemon (pokemon_number, pokemon_name, type_id, buddy_distance, best_offensive_quick_move_id,
best_offensive_charge_move_id, best_defensive_quick_move_id, best_defensive_charge_move_id
) VALUES (50, "DIGLETT", 35, 3, 20, 18, 20, 18);

INSERT INTO pokemon (pokemon_number, pokemon_name, type_id, buddy_distance, best_offensive_quick_move_id,
best_offensive_charge_move_id, best_defensive_quick_move_id, best_defensive_charge_move_id
) VALUES (51, "DUGTRIO", 35, 3, 20, 26, 20, 26);

INSERT INTO pokemon (pokemon_number, pokemon_name, type_id, buddy_distance, best_offensive_quick_move_id,
best_offensive_charge_move_id, best_defensive_quick_move_id, best_defensive_charge_move_id
) VALUES (52, "MEOWTH", 43, 3, 30, 7, 30, 7);

INSERT INTO pokemon (pokemon_number, pokemon_name, type_id, buddy_distance, best_offensive_quick_move_id,
best_offensive_charge_move_id, best_defensive_quick_move_id, best_defensive_charge_move_id
) VALUES (53, "PERSIAN", 43, 3, 30, 54, 10, 54);

INSERT INTO pokemon (pokemon_number, pokemon_name, type_id, buddy_distance, best_offensive_quick_move_id,
best_offensive_charge_move_id, best_defensive_quick_move_id, best_defensive_charge_move_id
) VALUES (54, "PSYDUCK", 55, 3, 39, 5, 41, 5);

INSERT INTO pokemon (pokemon_number, pokemon_name, type_id, buddy_distance, best_offensive_quick_move_id,
best_offensive_charge_move_id, best_defensive_quick_move_id, best_defensive_charge_move_id
) VALUES (55, "GOLDUCK", 55, 3, 39, 38, 6, 41);

INSERT INTO pokemon (pokemon_number, pokemon_name, type_id, buddy_distance, best_offensive_quick_move_id,
best_offensive_charge_move_id, best_defensive_quick_move_id, best_defensive_charge_move_id
) VALUES (56, "MANKEY", 19, 3, 30, 14, 30, 46);

INSERT INTO pokemon (pokemon_number, pokemon_name, type_id, buddy_distance, best_offensive_quick_move_id,
best_offensive_charge_move_id, best_defensive_quick_move_id, best_defensive_charge_move_id
) VALUES (57, "PRIMEAPE", 19, 3, 17, 14, 17, 46);

INSERT INTO pokemon (pokemon_number, pokemon_name, type_id, buddy_distance, best_offensive_quick_move_id,
best_offensive_charge_move_id, best_defensive_quick_move_id, best_defensive_charge_move_id
) VALUES (58, "GROWLITHE", 21, 3, 2, 32, 9, 32);

INSERT INTO pokemon (pokemon_number, pokemon_name, type_id, buddy_distance, best_offensive_quick_move_id,
best_offensive_charge_move_id, best_defensive_quick_move_id, best_defensive_charge_move_id
) VALUES (59, "ARCANINE", 21, 3, 11, 27, 11, 32);

INSERT INTO pokemon (pokemon_number, pokemon_name, type_id, buddy_distance, best_offensive_quick_move_id,
best_offensive_charge_move_id, best_defensive_quick_move_id, best_defensive_charge_move_id
) VALUES (60, "POLIWAG", 55, 3, 3, 7, 3, 7);

INSERT INTO pokemon (pokemon_number, pokemon_name, type_id, buddy_distance, best_offensive_quick_move_id,
best_offensive_charge_move_id, best_defensive_quick_move_id, best_defensive_charge_move_id
) VALUES (61, "POLIWHIRL", 55, 3, 3, 63, 3, 63);

INSERT INTO pokemon (pokemon_number, pokemon_name, type_id, buddy_distance, best_offensive_quick_move_id,
best_offensive_charge_move_id, best_defensive_quick_move_id, best_defensive_charge_move_id
) VALUES (62, "POLIWRATH", 20, 3, 3, 38, 3, 38);

INSERT INTO pokemon (pokemon_number, pokemon_name, type_id, buddy_distance, best_offensive_quick_move_id,
best_offensive_charge_move_id, best_defensive_quick_move_id, best_defensive_charge_move_id
) VALUES (63, "ABRA", 47, 3, 41, 60, 41, 60);

INSERT INTO pokemon (pokemon_number, pokemon_name, type_id, buddy_distance, best_offensive_quick_move_id,
best_offensive_charge_move_id, best_defensive_quick_move_id, best_defensive_charge_move_id
) VALUES (64, "KADABRA", 47, 3, 25, 65, 6, 58);

INSERT INTO pokemon (pokemon_number, pokemon_name, type_id, buddy_distance, best_offensive_quick_move_id,
best_offensive_charge_move_id, best_defensive_quick_move_id, best_defensive_charge_move_id
) VALUES (65, "ALAKAZAM", 47, 3, 25, 59, 6, 59);

INSERT INTO pokemon (pokemon_number, pokemon_name, type_id, buddy_distance, best_offensive_quick_move_id,
best_offensive_charge_move_id, best_defensive_quick_move_id, best_defensive_charge_move_id
) VALUES (66, "MACHOP", 19, 3, 17, 14, 15, 46);

INSERT INTO pokemon (pokemon_number, pokemon_name, type_id, buddy_distance, best_offensive_quick_move_id,
best_offensive_charge_move_id, best_defensive_quick_move_id, best_defensive_charge_move_id
) VALUES (67, "MACHOKE", 19, 3, 17, 14, 15, 9);

INSERT INTO pokemon (pokemon_number, pokemon_name, type_id, buddy_distance, best_offensive_quick_move_id,
best_offensive_charge_move_id, best_defensive_quick_move_id, best_defensive_charge_move_id
) VALUES (68, "MACHAMP", 19, 3, 15, 14, 5, 74);

INSERT INTO pokemon (pokemon_number, pokemon_name, type_id, buddy_distance, best_offensive_quick_move_id,
best_offensive_charge_move_id, best_defensive_quick_move_id, best_defensive_charge_move_id
) VALUES (69, "BELLSPROUT", 33, 3, 38, 68, 1, 68);

INSERT INTO pokemon (pokemon_number, pokemon_name, type_id, buddy_distance, best_offensive_quick_move_id,
best_offensive_charge_move_id, best_defensive_quick_move_id, best_defensive_charge_move_id
) VALUES (70, "WEEPINBELL", 33, 3, 27, 68, 27, 68);

INSERT INTO pokemon (pokemon_number, pokemon_name, type_id, buddy_distance, best_offensive_quick_move_id,
best_offensive_charge_move_id, best_defensive_quick_move_id, best_defensive_charge_move_id
) VALUES (71, "VICTREEBEL", 33, 3, 27, 70, 27, 68);

INSERT INTO pokemon (pokemon_number, pokemon_name, type_id, buddy_distance, best_offensive_quick_move_id,
best_offensive_charge_move_id, best_defensive_quick_move_id, best_defensive_charge_move_id
) VALUES (72, "TENTACOOL", 60, 3, 3, 81, 3, 81);

INSERT INTO pokemon (pokemon_number, pokemon_name, type_id, buddy_distance, best_offensive_quick_move_id,
best_offensive_charge_move_id, best_defensive_quick_move_id, best_defensive_charge_move_id
) VALUES (73, "TENTACRUEL", 60, 3, 22, 38, 22, 38);

INSERT INTO pokemon (pokemon_number, pokemon_name, type_id, buddy_distance, best_offensive_quick_move_id,
best_offensive_charge_move_id, best_defensive_quick_move_id, best_defensive_charge_move_id
) VALUES (74, "GEODUDE", 38, 1, 29, 61, 29, 18);

INSERT INTO pokemon (pokemon_number, pokemon_name, type_id, buddy_distance, best_offensive_quick_move_id,
best_offensive_charge_move_id, best_defensive_quick_move_id, best_defensive_charge_move_id
) VALUES (75, "GRAVELER", 38, 1, 20, 72, 20, 18);

INSERT INTO pokemon (pokemon_number, pokemon_name, type_id, buddy_distance, best_offensive_quick_move_id,
best_offensive_charge_move_id, best_defensive_quick_move_id, best_defensive_charge_move_id
) VALUES (76, "GOLEM", 38, 1, 20, 26, 20, 26);

INSERT INTO pokemon (pokemon_number, pokemon_name, type_id, buddy_distance, best_offensive_quick_move_id,
best_offensive_charge_move_id, best_defensive_quick_move_id, best_defensive_charge_move_id
) VALUES (77, "PONYTA", 21, 3, 9, 27, 9, 27);

INSERT INTO pokemon (pokemon_number, pokemon_name, type_id, buddy_distance, best_offensive_quick_move_id,
best_offensive_charge_move_id, best_defensive_quick_move_id, best_defensive_charge_move_id
) VALUES (78, "RAPIDASH", 21, 3, 9, 27, 9, 25);

INSERT INTO pokemon (pokemon_number, pokemon_name, type_id, buddy_distance, best_offensive_quick_move_id,
best_offensive_charge_move_id, best_defensive_quick_move_id, best_defensive_charge_move_id
) VALUES (79, "SLOWPOKE", 50, 3, 39, 59, 6, 59);

INSERT INTO pokemon (pokemon_number, pokemon_name, type_id, buddy_distance, best_offensive_quick_move_id,
best_offensive_charge_move_id, best_defensive_quick_move_id, best_defensive_charge_move_id
) VALUES (80, "SLOWBRO", 50, 3, 39, 59, 6, 59);

INSERT INTO pokemon (pokemon_number, pokemon_name, type_id, buddy_distance, best_offensive_quick_move_id,
best_offensive_charge_move_id, best_defensive_quick_move_id, best_defensive_charge_move_id
) VALUES (81, "MAGNEMITE", 53, 3, 32, 78, 32, 78);

INSERT INTO pokemon (pokemon_number, pokemon_name, type_id, buddy_distance, best_offensive_quick_move_id,
best_offensive_charge_move_id, best_defensive_quick_move_id, best_defensive_charge_move_id
) VALUES (82, "MAGNETON", 53, 3, 33, 33, 33, 33);

INSERT INTO pokemon (pokemon_number, pokemon_name, type_id, buddy_distance, best_offensive_quick_move_id,
best_offensive_charge_move_id, best_defensive_quick_move_id, best_defensive_charge_move_id
) VALUES (83, "FARFETCHD", 45, 3, 7, 45, 7, 45);

INSERT INTO pokemon (pokemon_number, pokemon_name, type_id, buddy_distance, best_offensive_quick_move_id,
best_offensive_charge_move_id, best_defensive_quick_move_id, best_defensive_charge_move_id
) VALUES (84, "DODUO", 45, 3, 21, 24, 26, 24);

INSERT INTO pokemon (pokemon_number, pokemon_name, type_id, buddy_distance, best_offensive_quick_move_id,
best_offensive_charge_move_id, best_defensive_quick_move_id, best_defensive_charge_move_id
) VALUES (85, "DODRIO", 45, 3, 10, 24, 34, 24);

INSERT INTO pokemon (pokemon_number, pokemon_name, type_id, buddy_distance, best_offensive_quick_move_id,
best_offensive_charge_move_id, best_defensive_quick_move_id, best_defensive_charge_move_id
) VALUES (86, "SEEL", 55, 3, 16, 5, 14, 5);

INSERT INTO pokemon (pokemon_number, pokemon_name, type_id, buddy_distance, best_offensive_quick_move_id,
best_offensive_charge_move_id, best_defensive_quick_move_id, best_defensive_charge_move_id
) VALUES (87, "DEWGONG", 59, 3, 12, 6, 14, 6);

INSERT INTO pokemon (pokemon_number, pokemon_name, type_id, buddy_distance, best_offensive_quick_move_id,
best_offensive_charge_move_id, best_defensive_quick_move_id, best_defensive_charge_move_id
) VALUES (88, "GRIMER", 46, 3, 22, 68, 22, 68);

INSERT INTO pokemon (pokemon_number, pokemon_name, type_id, buddy_distance, best_offensive_quick_move_id,
best_offensive_charge_move_id, best_defensive_quick_move_id, best_defensive_charge_move_id
) VALUES (89, "MUK", 46, 3,  22, 34, 22, 22);

INSERT INTO pokemon (pokemon_number, pokemon_name, type_id, buddy_distance, best_offensive_quick_move_id,
best_offensive_charge_move_id, best_defensive_quick_move_id, best_defensive_charge_move_id
) VALUES (90, "SHELLDER", 55, 3,  36, 81, 14, 81);

INSERT INTO pokemon (pokemon_number, pokemon_name, type_id, buddy_distance, best_offensive_quick_move_id,
best_offensive_charge_move_id, best_defensive_quick_move_id, best_defensive_charge_move_id
) VALUES (91, "CLOYSTER", 59, 3,  12, 6, 14, 6);

INSERT INTO pokemon (pokemon_number, pokemon_name, type_id, buddy_distance, best_offensive_quick_move_id,
best_offensive_charge_move_id, best_defensive_quick_move_id, best_defensive_charge_move_id
) VALUES (92, "GASTLY", 30, 3, 16, 68, 35, 68);

INSERT INTO pokemon (pokemon_number, pokemon_name, type_id, buddy_distance, best_offensive_quick_move_id,
best_offensive_charge_move_id, best_defensive_quick_move_id, best_defensive_charge_move_id
) VALUES (93, "HAUNTER", 30, 3, 31, 68, 31, 65);

INSERT INTO pokemon (pokemon_number, pokemon_name, type_id, buddy_distance, best_offensive_quick_move_id,
best_offensive_charge_move_id, best_defensive_quick_move_id, best_defensive_charge_move_id
) VALUES (94, "GENGAR", 30, 3,  31, 68, 31, 65);

INSERT INTO pokemon (pokemon_number, pokemon_name, type_id, buddy_distance, best_offensive_quick_move_id,
best_offensive_charge_move_id, best_defensive_quick_move_id, best_defensive_charge_move_id
) VALUES (95, "ONIX", 38, 5,  29, 72, 29, 61);

INSERT INTO pokemon (pokemon_number, pokemon_name, type_id, buddy_distance, best_offensive_quick_move_id,
best_offensive_charge_move_id, best_defensive_quick_move_id, best_defensive_charge_move_id
) VALUES (96, "DROWZEE", 47, 3,  24, 59, 6, 59);

INSERT INTO pokemon (pokemon_number, pokemon_name, type_id, buddy_distance, best_offensive_quick_move_id,
best_offensive_charge_move_id, best_defensive_quick_move_id, best_defensive_charge_move_id
) VALUES (97, "HYPNO", 47, 3, 41, 59, 6, 59);

INSERT INTO pokemon (pokemon_number, pokemon_name, type_id, buddy_distance, best_offensive_quick_move_id,
best_offensive_charge_move_id, best_defensive_quick_move_id, best_defensive_charge_move_id
) VALUES (98, "KRABBY", 55, 3,  3, 81, 3, 81);

INSERT INTO pokemon (pokemon_number, pokemon_name, type_id, buddy_distance, best_offensive_quick_move_id,
best_offensive_charge_move_id, best_defensive_quick_move_id, best_defensive_charge_move_id
) VALUES (99, "KINGLER", 55, 3, 18, 83, 18, 81);

INSERT INTO pokemon (pokemon_number, pokemon_name, type_id, buddy_distance, best_offensive_quick_move_id,
best_offensive_charge_move_id, best_defensive_quick_move_id, best_defensive_charge_move_id
) VALUES (100, "VOLTORB", 15, 3,  32, 78, 36, 78);

INSERT INTO pokemon (pokemon_number, pokemon_name, type_id, buddy_distance, best_offensive_quick_move_id,
best_offensive_charge_move_id, best_defensive_quick_move_id, best_defensive_charge_move_id
) VALUES (101, "ELECTRODE", 15, 3, 32, 78, 36, 78);

INSERT INTO pokemon (pokemon_number, pokemon_name, type_id, buddy_distance, best_offensive_quick_move_id,
best_offensive_charge_move_id, best_defensive_quick_move_id, best_defensive_charge_move_id
) VALUES (102, "EXEGGCUTE", 34, 3, 6, 59, 6, 59);

INSERT INTO pokemon (pokemon_number, pokemon_name, type_id, buddy_distance, best_offensive_quick_move_id,
best_offensive_charge_move_id, best_defensive_quick_move_id, best_defensive_charge_move_id
) VALUES (103, "EXEGGUTOR", 34, 3, 41, 70, 6, 59);

INSERT INTO pokemon (pokemon_number, pokemon_name, type_id, buddy_distance, best_offensive_quick_move_id,
best_offensive_charge_move_id, best_defensive_quick_move_id, best_defensive_charge_move_id
) VALUES (104, "CUBONE", 35, 3, 20, 8, 20, 18);

INSERT INTO pokemon (pokemon_number, pokemon_name, type_id, buddy_distance, best_offensive_quick_move_id,
best_offensive_charge_move_id, best_defensive_quick_move_id, best_defensive_charge_move_id
) VALUES (105, "MAROWAK", 35, 3, 20, 26, 20, 18);

INSERT INTO pokemon (pokemon_number, pokemon_name, type_id, buddy_distance, best_offensive_quick_move_id,
best_offensive_charge_move_id, best_defensive_quick_move_id, best_defensive_charge_move_id
) VALUES (106, "HITMONLEE", 19, 5, 28, 9, 28, 46);

INSERT INTO pokemon (pokemon_number, pokemon_name, type_id, buddy_distance, best_offensive_quick_move_id,
best_offensive_charge_move_id, best_defensive_quick_move_id, best_defensive_charge_move_id
) VALUES (107, "HITMONCHAN", 19, 5, 28, 9, 28, 9);

INSERT INTO pokemon (pokemon_number, pokemon_name, type_id, buddy_distance, best_offensive_quick_move_id,
best_offensive_charge_move_id, best_defensive_quick_move_id, best_defensive_charge_move_id
) VALUES (108, "LICKITUNG", 43, 3, 16, 39, 41, 39);

INSERT INTO pokemon (pokemon_number, pokemon_name, type_id, buddy_distance, best_offensive_quick_move_id,
best_offensive_charge_move_id, best_defensive_quick_move_id, best_defensive_charge_move_id
) VALUES (109, "KOFFING", 46, 3, 36, 68, 36, 68);

INSERT INTO pokemon (pokemon_number, pokemon_name, type_id, buddy_distance, best_offensive_quick_move_id,
best_offensive_charge_move_id, best_defensive_quick_move_id, best_defensive_charge_move_id
) VALUES (110, "WEEZING", 46, 3, 1, 68, 36, 68);

INSERT INTO pokemon (pokemon_number, pokemon_name, type_id, buddy_distance, best_offensive_quick_move_id,
best_offensive_charge_move_id, best_defensive_quick_move_id, best_defensive_charge_move_id
) VALUES (111, "RHYHORN", 38, 3, 20, 71, 20, 13);

INSERT INTO pokemon (pokemon_number, pokemon_name, type_id, buddy_distance, best_offensive_quick_move_id,
best_offensive_charge_move_id, best_defensive_quick_move_id, best_defensive_charge_move_id
) VALUES (112, "RHYDON", 38, 3, 20, 26, 20, 26);

INSERT INTO pokemon (pokemon_number, pokemon_name, type_id, buddy_distance, best_offensive_quick_move_id,
best_offensive_charge_move_id, best_defensive_quick_move_id, best_defensive_charge_move_id
) VALUES (113, "CHANSEY", 43, 5, 24, 39, 41, 39);

INSERT INTO pokemon (pokemon_number, pokemon_name, type_id, buddy_distance, best_offensive_quick_move_id,
best_offensive_charge_move_id, best_defensive_quick_move_id, best_defensive_charge_move_id
) VALUES (114, "TANGELA", 31, 3, 38, 70, 38, 70);

INSERT INTO pokemon (pokemon_number, pokemon_name, type_id, buddy_distance, best_offensive_quick_move_id,
best_offensive_charge_move_id, best_defensive_quick_move_id, best_defensive_charge_move_id
) VALUES (115, "KANGASKHAN", 4, 3, 20, 26, 20, 71);

INSERT INTO pokemon (pokemon_number, pokemon_name, type_id, buddy_distance, best_offensive_quick_move_id,
best_offensive_charge_move_id, best_defensive_quick_move_id, best_defensive_charge_move_id
) VALUES (116, "HORSEA", 55, 3, 39, 22, 3, 33);

INSERT INTO pokemon (pokemon_number, pokemon_name, type_id, buddy_distance, best_offensive_quick_move_id,
best_offensive_charge_move_id, best_defensive_quick_move_id, best_defensive_charge_move_id
) VALUES (117, "SEADRA", 55, 3, 39, 38, 39, 22);

INSERT INTO pokemon (pokemon_number, pokemon_name, type_id, buddy_distance, best_offensive_quick_move_id,
best_offensive_charge_move_id, best_defensive_quick_move_id, best_defensive_charge_move_id
) VALUES (118, "GOLDEEN", 55, 3, 19, 5, 21, 81);

INSERT INTO pokemon (pokemon_number, pokemon_name, type_id, buddy_distance, best_offensive_quick_move_id,
best_offensive_charge_move_id, best_defensive_quick_move_id, best_defensive_charge_move_id
) VALUES (119, "SEAKING", 55, 3, 22, 48, 22, 25);

INSERT INTO pokemon (pokemon_number, pokemon_name, type_id, buddy_distance, best_offensive_quick_move_id,
best_offensive_charge_move_id, best_defensive_quick_move_id, best_defensive_charge_move_id
) VALUES (120, "STARYU", 55, 3, 39, 56, 36, 11);

INSERT INTO pokemon (pokemon_number, pokemon_name, type_id, buddy_distance, best_offensive_quick_move_id,
best_offensive_charge_move_id, best_defensive_quick_move_id, best_defensive_charge_move_id
) VALUES (121, "STARMIE", 50, 3, 39, 38, 36, 59);

INSERT INTO pokemon (pokemon_number, pokemon_name, type_id, buddy_distance, best_offensive_quick_move_id,
best_offensive_charge_move_id, best_defensive_quick_move_id, best_defensive_charge_move_id
) VALUES (122, "MR MIME", 18, 5, 41, 59, 6, 59);

INSERT INTO pokemon (pokemon_number, pokemon_name, type_id, buddy_distance, best_offensive_quick_move_id,
best_offensive_charge_move_id, best_defensive_quick_move_id, best_defensive_charge_move_id
) VALUES (123, "SCYTHER", 3, 5, 13, 12, 34, 12);

INSERT INTO pokemon (pokemon_number, pokemon_name, type_id, buddy_distance, best_offensive_quick_move_id,
best_offensive_charge_move_id, best_defensive_quick_move_id, best_defensive_charge_move_id
) VALUES (124, "JYNX", 42, 5, 24, 60, 12, 42);

INSERT INTO pokemon (pokemon_number, pokemon_name, type_id, buddy_distance, best_offensive_quick_move_id,
best_offensive_charge_move_id, best_defensive_quick_move_id, best_defensive_charge_move_id
) VALUES (125, "ELECTABUZZ", 15, 5, 37, 76, 37, 77);

INSERT INTO pokemon (pokemon_number, pokemon_name, type_id, buddy_distance, best_offensive_quick_move_id,
best_offensive_charge_move_id, best_defensive_quick_move_id, best_defensive_charge_move_id
) VALUES (126, "MAGMAR", 21, 5, 9, 27, 9, 32);

INSERT INTO pokemon (pokemon_number, pokemon_name, type_id, buddy_distance, best_offensive_quick_move_id,
best_offensive_charge_move_id, best_defensive_quick_move_id, best_defensive_charge_move_id
) VALUES (127, "PINSIR", 1, 5, 13, 83, 28, 83);

INSERT INTO pokemon (pokemon_number, pokemon_name, type_id, buddy_distance, best_offensive_quick_move_id,
best_offensive_charge_move_id, best_defensive_quick_move_id, best_defensive_charge_move_id
) VALUES (128, "TAUROS", 43, 3, 36, 26, 36, 36);

INSERT INTO pokemon (pokemon_number, pokemon_name, type_id, buddy_distance, best_offensive_quick_move_id,
best_offensive_charge_move_id, best_defensive_quick_move_id, best_defensive_charge_move_id
) VALUES (129, "MAGIKARP", 55, 1, 33, 73, 33, 73);

INSERT INTO pokemon (pokemon_number, pokemon_name, type_id, buddy_distance, best_offensive_quick_move_id,
best_offensive_charge_move_id, best_defensive_quick_move_id, best_defensive_charge_move_id
) VALUES (130, "GYARADOS", 28, 1, 2, 38, 8, 22);

INSERT INTO pokemon (pokemon_number, pokemon_name, type_id, buddy_distance, best_offensive_quick_move_id,
best_offensive_charge_move_id, best_defensive_quick_move_id, best_defensive_charge_move_id
) VALUES (131, "LAPRAS", 59, 5, 12, 6, 14, 41);

INSERT INTO pokemon (pokemon_number, pokemon_name, type_id, buddy_distance,  best_offensive_quick_move_id,
best_offensive_charge_move_id, best_defensive_quick_move_id, best_defensive_charge_move_id
) VALUES (132, "DITTO", 4, 3, 24, 73, 24, 73);

INSERT INTO pokemon (pokemon_number, pokemon_name, type_id, buddy_distance, best_offensive_quick_move_id,
best_offensive_charge_move_id, best_defensive_quick_move_id, best_defensive_charge_move_id
) VALUES (133, "EEVEE", 43, 5, 36, 7, 36, 18);

INSERT INTO pokemon (pokemon_number, pokemon_name, type_id, buddy_distance, best_offensive_quick_move_id,
best_offensive_charge_move_id, best_defensive_quick_move_id, best_defensive_charge_move_id
) VALUES (134, "VAPOREON", 55, 5, 39, 38, 39, 81);

INSERT INTO pokemon (pokemon_number, pokemon_name, type_id, buddy_distance, best_offensive_quick_move_id,
best_offensive_charge_move_id, best_defensive_quick_move_id, best_defensive_charge_move_id
) VALUES (135, "JOLTEON", 15, 5, 37, 76, 37, 78);

INSERT INTO pokemon (pokemon_number, pokemon_name, type_id, buddy_distance, best_offensive_quick_move_id,
best_offensive_charge_move_id, best_defensive_quick_move_id, best_defensive_charge_move_id
) VALUES (136, "FLAREON", 21, 5, 9, 27, 9, 32);

INSERT INTO pokemon (pokemon_number, pokemon_name, type_id, buddy_distance, best_offensive_quick_move_id,
best_offensive_charge_move_id, best_defensive_quick_move_id, best_defensive_charge_move_id
) VALUES (137, "PORYGON", 43, 3, 36, 66, 36, 66);

INSERT INTO pokemon (pokemon_number, pokemon_name, type_id, buddy_distance, best_offensive_quick_move_id,
best_offensive_charge_move_id, best_defensive_quick_move_id, best_defensive_charge_move_id
) VALUES (138, "OMANYTE", 52, 5, 39, 10, 39, 3);

INSERT INTO pokemon (pokemon_number, pokemon_name, type_id, buddy_distance, best_offensive_quick_move_id,
best_offensive_charge_move_id, best_defensive_quick_move_id, best_defensive_charge_move_id
) VALUES (139, "OMASTAR", 52, 5, 39, 38, 29, 61);

INSERT INTO pokemon (pokemon_number, pokemon_name, type_id, buddy_distance, best_offensive_quick_move_id,
best_offensive_charge_move_id, best_defensive_quick_move_id, best_defensive_charge_move_id
) VALUES (140, "KABUTO", 52, 5, 30, 4, 30, 3);

INSERT INTO pokemon (pokemon_number, pokemon_name, type_id, buddy_distance, best_offensive_quick_move_id,
best_offensive_charge_move_id, best_defensive_quick_move_id, best_defensive_charge_move_id
) VALUES (141, "KABUTOPS", 52, 5, 19, 72, 19, 81);

INSERT INTO pokemon (pokemon_number, pokemon_name, type_id, buddy_distance, best_offensive_quick_move_id,
best_offensive_charge_move_id, best_defensive_quick_move_id, best_defensive_charge_move_id
) VALUES (142, "AERODACTYL", 27, 5, 2, 39, 34, 39);

INSERT INTO pokemon (pokemon_number, pokemon_name, type_id, buddy_distance, best_offensive_quick_move_id,
best_offensive_charge_move_id, best_defensive_quick_move_id, best_defensive_charge_move_id
) VALUES (143, "SNORLAX", 43, 5, 16, 39, 41, 39);

INSERT INTO pokemon (pokemon_number, pokemon_name, type_id, buddy_distance, best_offensive_quick_move_id,
best_offensive_charge_move_id, best_defensive_quick_move_id, best_defensive_charge_move_id
) VALUES (144, "ARTICUNO", 2, 5, 12, 6, 12, 41);

INSERT INTO pokemon (pokemon_number, pokemon_name, type_id, buddy_distance, best_offensive_quick_move_id,
best_offensive_charge_move_id, best_defensive_quick_move_id, best_defensive_charge_move_id
) VALUES (145, "ZAPDOS", 2, 3, 37, 76, 37, 78);

INSERT INTO pokemon (pokemon_number, pokemon_name, type_id, buddy_distance, best_offensive_quick_move_id,
best_offensive_charge_move_id, best_defensive_quick_move_id, best_defensive_charge_move_id
) VALUES (146, "MOLTRES", 2, 4, 9, 27, 9, 32);

INSERT INTO pokemon (pokemon_number, pokemon_name, type_id, buddy_distance, best_offensive_quick_move_id,
best_offensive_charge_move_id, best_defensive_quick_move_id, best_defensive_charge_move_id
) VALUES (147, "DRATINI", 13, 5, 8, 5, 8, 79);

INSERT INTO pokemon (pokemon_number, pokemon_name, type_id, buddy_distance, best_offensive_quick_move_id,
best_offensive_charge_move_id, best_defensive_quick_move_id, best_defensive_charge_move_id
) VALUES (148, "DRAGONAIR", 13, 5, 8, 22, 8, 22);

INSERT INTO pokemon (pokemon_number, pokemon_name, type_id, buddy_distance, best_offensive_quick_move_id,
best_offensive_charge_move_id, best_defensive_quick_move_id, best_defensive_charge_move_id
) VALUES (149, "DRAGONITE", 14, 5, 8, 21, 34, 22);

INSERT INTO pokemon (pokemon_number, pokemon_name, type_id, buddy_distance,  best_offensive_quick_move_id,
best_offensive_charge_move_id, best_defensive_quick_move_id, best_defensive_charge_move_id
) VALUES (150, "MEWTWO", 47, 5, 25, 59, 6, 59);

INSERT INTO pokemon (pokemon_number, pokemon_name, type_id, buddy_distance,  best_offensive_quick_move_id,
best_offensive_charge_move_id, best_defensive_quick_move_id, best_defensive_charge_move_id
) VALUES (151, "MEW", 47, 5, 24, 59, 24, 59);
