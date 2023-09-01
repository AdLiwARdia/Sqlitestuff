@echo off

echo Displaying Quest Name, NPC First Name, and NPC Last Name for quests given out by 'Warriors United' in a 'Large Scale City':
echo ---------------------------------------------------------------------------------------------------------------
echo SELECT NPC_quests.quest_name, NPC_names.first_name, NPC_names.last_name FROM NPC_quests JOIN NPC_names ON NPC_quests.npc_id = NPC_names.npc_id JOIN NPC_locations ON NPC_names.npc_id = NPC_locations.npc_id JOIN Locations ON NPC_locations.location_id = Locations.location_id JOIN Factions_npc ON NPC_names.npc_id = Factions_npc.npc_id JOIN Factions ON Factions_npc.faction_id = Factions.faction_id WHERE Factions.faction_name = 'Warriors United' AND Locations.region_type = 'Large Scale City'; > query.sql

.\sqlite3.exe world.db < query.sql

del query.sql
