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
    FOREIGN KEY ( best_defensive_charge_move_id) REFERENCES charge_move (charge_move_id)
)ENGINE=INNODB;
INSERT INTO egg values (1, 2);
INSERT INTO egg values (2, 5);
INSERT INTO egg values (2, 10);
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
