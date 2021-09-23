# Loop this
schedule function 3rdlife:main/loop 1s

# Check if everyone has max 3 lives
execute as @a if score @s lives matches 4..2147483647 run scoreboard players set @s lives 3

# Decrease lives in case of death
execute as @a if score @s deaths matches 1 run scoreboard players remove @s lives 1
execute as @a if score @s deaths matches 1 run scoreboard players set @s deaths 0

# Set team based on lives left
team join team_green @a[scores={lives=3},team=!team_green]
team join team_yellow @a[scores={lives=2},team=!team_yellow]
team join team_red @a[scores={lives=1},team=!team_red]

# Change gamemode to spectator when player dies 3 time
gamemode spectator @a[scores={lives=0},team=!team_dead]
team join team_dead @a[scores={lives=0},team=!team_dead]
