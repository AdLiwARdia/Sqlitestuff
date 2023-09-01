@echo off

echo Female NPCs' First and Last Names:
echo ----------------------------------
echo SELECT first_name, last_name FROM NPC_names WHERE npc_id IN (SELECT npc_id FROM NPC_gender WHERE gender = 'Female'); > query.sql
sqlite3.exe -header -column world.db < query.sql
del query.sql

