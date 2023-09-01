@echo off

echo Changing data type of 'Gender' field and updating NPCs:
echo ------------------------------------------------------
.\sqlite3.exe world.db "BEGIN TRANSACTION; ALTER TABLE NPC_gender RENAME TO NPC_gender_old; CREATE TABLE NPC_gender (npc_id INTEGER, gender CHAR(6), FOREIGN KEY (npc_id) REFERENCES NPC_names(npc_id)); INSERT INTO NPC_gender SELECT npc_id, CASE WHEN gender = 'M' THEN 'Male' WHEN gender = 'F' THEN 'Female' ELSE gender END FROM NPC_gender_old; DROP TABLE NPC_gender_old; COMMIT;"

echo.

echo Displaying all NPCs:
echo ---------------------
.\sqlite3.exe world.db "SELECT NPC_names.first_name, NPC_names.last_name, NPC_gender.gender FROM NPC_names JOIN NPC_gender ON NPC_names.npc_id = NPC_gender.npc_id;"
