# Loop this
schedule function 3rdlife:main/loop 1s

# Check if everyone has max 3 3rd.lives
execute as @a if score @s 3rd.lives matches 4..2147483647 run scoreboard players set @s 3rd.lives 3

# Decrease 3rd.lives in case of death
execute as @a if score @s 3rd.deaths matches 1 run scoreboard players remove @s 3rd.lives 1
execute as @a if score @s 3rd.deaths matches 1 run scoreboard players set @s 3rd.deaths 0

# Set team based on 3rd.lives left
team join team_green @a[scores={3rd.lives=3},team=!team_green]
team join team_yellow @a[scores={3rd.lives=2},team=!team_yellow]
team join team_red @a[scores={3rd.lives=1},team=!team_red]

# Change gamemode to spectator when player dies 3 time
gamemode spectator @a[scores={3rd.lives=0},team=!team_dead]
team join team_dead @a[scores={3rd.lives=0},team=!team_dead]
