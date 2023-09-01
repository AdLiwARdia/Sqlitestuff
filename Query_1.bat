@echo off

echo All Skills and Skill Types:
echo ---------------------------
echo SELECT skill_name, skill_type FROM SKILLS; > query.sql
sqlite3.exe -header -column world.db < query.sql
del query.sql

