@echo off

echo Display Columns: First Name, Last Name, Gender, and Faction Code from Rogues Guild:
echo -----------------------------------------------------------------------------------
echo SELECT NPC_names.first_name, NPC_names.last_name, NPC_gender.gender, Factions.faction_code FROM NPC_names JOIN NPC_gender ON NPC_names.npc_id = NPC_gender.npc_id JOIN Factions_npc ON NPC_names.npc_id = Factions_npc.npc_id JOIN Factions ON Factions_npc.faction_id = Factions.faction_id WHERE Factions.faction_name = 'Rogues Guild'; > query.sql

.\sqlite3.exe world.db < query.sql

del query.sql
