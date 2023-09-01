@echo off

echo Displaying Location Name and Number of Quests:
echo ---------------------------------------------
echo SELECT Locations.location_name, COUNT(NPC_quests.quest_name) AS num_of_quests FROM Locations LEFT JOIN NPC_locations ON Locations.location_id = NPC_locations.location_id LEFT JOIN NPC_quests ON NPC_locations.npc_id = NPC_quests.npc_id GROUP BY Locations.location_name; > query.sql

.\sqlite3.exe world.db < query.sql

del query.sql
