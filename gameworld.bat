@echo off
echo tables created
echo .open world.db > create_database.sql
echo CREATE TABLE NPC_names (npc_id INTEGER PRIMARY KEY, first_name TEXT, last_name TEXT); >> create_database.sql
echo CREATE TABLE NPC_gender (npc_id INTEGER, gender TEXT, FOREIGN KEY (npc_id) REFERENCES NPC_names(npc_id)); >> create_database.sql
echo CREATE TABLE NPC_quests (npc_quest_id INTEGER PRIMARY KEY, npc_id INTEGER, quest_name TEXT,FOREIGN KEY (npc_id) REFERENCES NPC_names(npc_id)); >> create_database.sql
echo CREATE TABLE Locations (location_id INTEGER PRIMARY KEY, location_name TEXT, region_name TEXT, region_code TEXT, region_type TEXT); >> create_database.sql
echo CREATE TABLE NPC_locations (npc_id INTEGER, location_id INTEGER, FOREIGN KEY (location_id) REFERENCES Locations(location_id), FOREIGN KEY (npc_id) REFERENCES NPC_names(npc_id)); >> create_database.sql
echo CREATE TABLE Factions (faction_id INTEGER PRIMARY KEY, faction_code TEXT, faction_name TEXT, faction_motto TEXT); >> create_database.sql
echo CREATE TABLE Factions_npc (faction_id INTEGER , npc_id INTEGER, FOREIGN KEY (faction_id) REFERENCES Factions(faction_id), FOREIGN KEY (npc_id) REFERENCES NPC_names(npc_id)); >> create_database.sql
echo CREATE TABLE Faction_locations (faction_id INTEGER, location_id INTEGER, FOREIGN KEY (faction_id) REFERENCES Factions(faction_id), FOREIGN KEY (location_id) REFERENCES Locations(location_id)); >> create_database.sql
echo CREATE TABLE SKILLS (skill_id INTEGER PRIMARY KEY, skill_name TEXT, skill_type TEXT); >> create_database.sql
echo CREATE TABLE NPC_skills (npc_skill_junction INTEGER PRIMARY KEY, npc_id INTEGER, skill_id INTEGER, FOREIGN KEY (npc_id) REFERENCES NPCs(npc_id), FOREIGN KEY (skill_id) REFERENCES Skills(skill_id)); >> create_database.sql

echo INSERT INTO NPC_names (npc_id, first_name, last_name) VALUES (1, 'Adelina', 'Dragonscream'); >> create_database.sql
echo INSERT INTO NPC_names (npc_id, first_name, last_name) VALUES (2, 'Agaell', 'Clavira'); >> create_database.sql
echo INSERT INTO NPC_names (npc_id, first_name, last_name) VALUES (3, 'Alicia', 'Stormmane'); >> create_database.sql
echo INSERT INTO NPC_names (npc_id, first_name, last_name) VALUES (4, 'Cara', 'the Menace'); >> create_database.sql
echo INSERT INTO NPC_names (npc_id, first_name, last_name) VALUES (5, 'Davis', 'Smokes'); >> create_database.sql
echo INSERT INTO NPC_names (npc_id, first_name, last_name) VALUES (6, 'Pikipius', 'Tepewrick'); >> create_database.sql
echo INSERT INTO NPC_gender (npc_id, gender) VALUES (1, 'Female'); >> create_database.sql
echo INSERT INTO NPC_gender (npc_id, gender) VALUES (2, 'Female'); >> create_database.sql
echo INSERT INTO NPC_gender (npc_id, gender) VALUES (3, 'Female'); >> create_database.sql
echo INSERT INTO NPC_gender (npc_id, gender) VALUES (4, 'Female'); >> create_database.sql
echo INSERT INTO NPC_gender (npc_id, gender) VALUES (5, 'Male'); >> create_database.sql
echo INSERT INTO NPC_gender (npc_id, gender) VALUES (6, 'Male'); >> create_database.sql
echo INSERT INTO NPC_quests (npc_quest_id, npc_id,quest_name) VALUES (1, 1, 'Kill the dragon lord: Aegeras'); >> create_database.sql
echo INSERT INTO NPC_quests (npc_quest_id, npc_id,quest_name) VALUES (2, 2, 'Clear the training room of summoned creatures'); >> create_database.sql
echo INSERT INTO NPC_quests (npc_quest_id, npc_id,quest_name) VALUES (3, 3, 'Capture a storm giant'); >> create_database.sql
echo INSERT INTO NPC_quests (npc_quest_id, npc_id,quest_name) VALUES (4, 6, 'Research the blue crystal'); >> create_database.sql
echo INSERT INTO Locations (location_id, location_name, region_name, region_code, region_type) VALUES (1,'Warriors HQ', 'Arcanum', 'ARC', 'Large Scale City'); >> create_database.sql
echo INSERT INTO Locations (location_id, location_name, region_name, region_code, region_type) VALUES (2,'The Void', 'Herodi', 'HER', 'Magical Demiplane'); >> create_database.sql
echo INSERT INTO Locations (location_id, location_name, region_name, region_code, region_type) VALUES (3,'Arena Pits', 'Arcanum', 'ARC', 'Large Scale City'); >> create_database.sql
echo INSERT INTO Locations (location_id, location_name, region_name, region_code, region_type) VALUES (4,'Poor Quarters', 'Arcanum', 'ARC', 'Large Scale City'); >> create_database.sql
echo INSERT INTO Locations (location_id, location_name, region_name, region_code, region_type) VALUES (5,'Arcane Capital', 'Arcanum', 'ARC', 'Large Scale City'); >> create_database.sql
echo INSERT INTO NPC_locations ( npc_id, location_id) VALUES (1, 1); >> create_database.sql
echo INSERT INTO NPC_locations ( npc_id, location_id) VALUES (2, 2); >> create_database.sql
echo INSERT INTO NPC_locations ( npc_id, location_id) VALUES (3, 3); >> create_database.sql
echo INSERT INTO NPC_locations ( npc_id, location_id) VALUES (4, 4); >> create_database.sql
echo INSERT INTO NPC_locations ( npc_id, location_id) VALUES (5, 5); >> create_database.sql
echo INSERT INTO NPC_locations ( npc_id, location_id) VALUES (6, 5); >> create_database.sql
echo INSERT INTO Factions ( faction_id, faction_code, faction_name, faction_motto) VALUES (1, 'MAG', 'School of Magicians', 'Always a spell for the job'); >> create_database.sql
echo INSERT INTO Factions ( faction_id, faction_code, faction_name, faction_motto) VALUES (2, 'WAR', 'Warriors United', 'Ready for war!'); >> create_database.sql
echo INSERT INTO Factions ( faction_id, faction_code, faction_name, faction_motto) VALUES (3, 'ROG', 'Rogues Guild', 'Never get caught'); >> create_database.sql
echo INSERT INTO Factions_npc ( faction_id, npc_id) VALUES (1, 1); >> create_database.sql
echo INSERT INTO Factions_npc ( faction_id, npc_id) VALUES (2, 1); >> create_database.sql
echo INSERT INTO Factions_npc ( faction_id, npc_id) VALUES (1, 2); >> create_database.sql
echo INSERT INTO Factions_npc ( faction_id, npc_id) VALUES (1, 3); >> create_database.sql
echo INSERT INTO Factions_npc ( faction_id, npc_id) VALUES (2, 4); >> create_database.sql
echo INSERT INTO Factions_npc ( faction_id, npc_id) VALUES (3, 4); >> create_database.sql
echo INSERT INTO Factions_npc ( faction_id, npc_id) VALUES (3, 5); >> create_database.sql
echo INSERT INTO Factions_npc ( faction_id, npc_id) VALUES (1, 6); >> create_database.sql
echo INSERT INTO Factions_npc ( faction_id, npc_id) VALUES (2, 6); >> create_database.sql
echo INSERT INTO Faction_locations (faction_id, location_id) VALUES (1, 5); >> create_database.sql
echo INSERT INTO Faction_locations (faction_id, location_id) VALUES (2, 1); >> create_database.sql
echo INSERT INTO Faction_locations (faction_id, location_id) VALUES (3, 4); >> create_database.sql
echo INSERT INTO SKILLS (skill_id, skill_name, skill_type) VALUES (1, 'Hamstring', 'Melee'); >> create_database.sql
echo INSERT INTO SKILLS (skill_id, skill_name, skill_type) VALUES (2, 'Water Torrent', 'Magic'); >> create_database.sql
echo INSERT INTO SKILLS (skill_id, skill_name, skill_type) VALUES (3, 'Fireball', 'Magic'); >> create_database.sql
echo INSERT INTO SKILLS (skill_id, skill_name, skill_type) VALUES (4, 'Heart Strike', 'Melee'); >> create_database.sql
echo INSERT INTO SKILLS (skill_id, skill_name, skill_type) VALUES (5, 'Cleave', 'Melee'); >> create_database.sql
echo INSERT INTO SKILLS (skill_id, skill_name, skill_type) VALUES (6, 'Lunging Strike', 'Melee'); >> create_database.sql
echo INSERT INTO SKILLS (skill_id, skill_name, skill_type) VALUES (7, 'Overpower', 'Melee'); >> create_database.sql
echo INSERT INTO SKILLS (skill_id, skill_name, skill_type) VALUES (8, 'Backstab', 'Melee'); >> create_database.sql
echo INSERT INTO SKILLS (skill_id, skill_name, skill_type) VALUES (9, 'Steal', 'Non Lethal'); >> create_database.sql
echo INSERT INTO SKILLS (skill_id, skill_name, skill_type) VALUES (10, 'Eye Gouge', 'Melee'); >> create_database.sql
echo INSERT INTO SKILLS (skill_id, skill_name, skill_type) VALUES (11, 'sap', 'Non Lethal'); >> create_database.sql
echo INSERT INTO SKILLS (skill_id, skill_name, skill_type) VALUES (12, 'Ice Blast', 'Magic'); >> create_database.sql
echo INSERT INTO SKILLS (skill_id, skill_name, skill_type) VALUES (13, 'Thunder Bolt', 'Magic'); >> create_database.sql
echo INSERT INTO SKILLS (skill_id, skill_name, skill_type) VALUES (14, 'Arcane Storm', 'Magic'); >> create_database.sql
echo INSERT INTO NPC_skills (npc_skill_junction, npc_id, skill_id) VALUES (1, 1, 1); >> create_database.sql
echo INSERT INTO NPC_skills (npc_skill_junction, npc_id, skill_id) VALUES (2, 1, 2); >> create_database.sql
echo INSERT INTO NPC_skills (npc_skill_junction, npc_id, skill_id) VALUES (3, 2, 3); >> create_database.sql
echo INSERT INTO NPC_skills (npc_skill_junction, npc_id, skill_id) VALUES (4, 3, 4); >> create_database.sql
echo INSERT INTO NPC_skills (npc_skill_junction, npc_id, skill_id) VALUES (5, 3, 5); >> create_database.sql
echo INSERT INTO NPC_skills (npc_skill_junction, npc_id, skill_id) VALUES (6, 4, 6); >> create_database.sql
echo INSERT INTO NPC_skills (npc_skill_junction, npc_id, skill_id) VALUES (7, 4, 7); >> create_database.sql
echo INSERT INTO NPC_skills (npc_skill_junction, npc_id, skill_id) VALUES (8, 4, 1); >> create_database.sql
echo INSERT INTO NPC_skills (npc_skill_junction, npc_id, skill_id) VALUES (9, 4, 8); >> create_database.sql
echo INSERT INTO NPC_skills (npc_skill_junction, npc_id, skill_id) VALUES (10, 5, 9); >> create_database.sql
echo INSERT INTO NPC_skills (npc_skill_junction, npc_id, skill_id) VALUES (11, 5, 10); >> create_database.sql
echo INSERT INTO NPC_skills (npc_skill_junction, npc_id, skill_id) VALUES (12, 5, 11); >> create_database.sql
echo INSERT INTO NPC_skills (npc_skill_junction, npc_id, skill_id) VALUES (13, 6, 3); >> create_database.sql
echo INSERT INTO NPC_skills (npc_skill_junction, npc_id, skill_id) VALUES (14, 6, 12); >> create_database.sql
echo INSERT INTO NPC_skills (npc_skill_junction, npc_id, skill_id) VALUES (15, 6, 13); >> create_database.sql
echo INSERT INTO NPC_skills (npc_skill_junction, npc_id, skill_id) VALUES (16, 6, 4); >> create_database.sql
echo INSERT INTO NPC_skills (npc_skill_junction, npc_id, skill_id) VALUES (17, 6, 2); >> create_database.sql
echo INSERT INTO NPC_skills (npc_skill_junction, npc_id, skill_id) VALUES (18, 6, 14); >> create_database.sql
echo INSERT INTO NPC_skills (npc_skill_junction, npc_id, skill_id) VALUES (19, 6, 7); >> create_database.sql


echo .exit >> create_database.sql
sqlite3.exe < create_database.sql
del create_database.sql