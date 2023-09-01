@echo off

echo Displaying Quest Name and NPC First Name for NPCs in the location 'Arcane Capital':
echo ----------------------------------------------------------------------------------
echo SELECT NPC_quests.quest_name, NPC_names.first_name FROM NPC_quests JOIN NPC_names ON NPC_quests.npc_id = NPC_names.npc_id JOIN NPC_locations ON NPC_names.npc_id = NPC_locations.npc_id JOIN Locations ON NPC_locations.location_id = Locations.location_id WHERE Locations.location_name = 'Arcane Capital'; > query.sql

.\sqlite3.exe world.db < query.sql

del query.sql
