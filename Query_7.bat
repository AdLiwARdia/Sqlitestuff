@echo off

rem Add one-to-many relationship between Factions and Skills
echo CREATE TABLE Favourite_Skills (faction_id INTEGER, skill_id INTEGER, FOREIGN KEY (faction_id) REFERENCES Factions(faction_id), FOREIGN KEY (skill_id) REFERENCES Skills(skill_id)); > update_database.sql
echo INSERT INTO Favourite_Skills (faction_id, skill_id) VALUES ((SELECT faction_id FROM Factions WHERE faction_name = 'School of Magicians'), (SELECT skill_id FROM Skills WHERE skill_name = 'Fireball')); >> update_database.sql
echo INSERT INTO Favourite_Skills (faction_id, skill_id) VALUES ((SELECT faction_id FROM Factions WHERE faction_name = 'Warriors United'), (SELECT skill_id FROM Skills WHERE skill_name = 'Lunging Strike')); >> update_database.sql
echo INSERT INTO Favourite_Skills (faction_id, skill_id) VALUES ((SELECT faction_id FROM Factions WHERE faction_name = 'Rogues Guild'), (SELECT skill_id FROM Skills WHERE skill_name = 'Steal')); >> update_database.sql
.\sqlite3.exe world.db < update_database.sql

rem Print each Faction with its Favourite Skill
echo Displaying Factions with their Favourite Skills:
echo ----------------------------------------------
.\sqlite3.exe world.db "SELECT Factions.faction_name, SKILLS.skill_name AS 'Favourite Skill Name' FROM Factions JOIN Favourite_Skills ON Factions.faction_id = Favourite_Skills.faction_id JOIN SKILLS ON Favourite_Skills.skill_id = SKILLS.skill_id;"

del update_database.sql
