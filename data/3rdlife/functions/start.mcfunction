# Setup gamemode
gamemode survival @a
title @a times 1 5 1
title @a actionbar ["",{"text": "["},{"text": "Welcome to","color": "yellow"},{"text": " 3rd Life", "color": "red"},{"text": "!] "}]

# Add scoreboards for settings
scoreboard objectives add 3rdLifeSettings dummy
scoreboard objectives add impostorSettings dummy
scoreboard objectives add temps dummy
scoreboard objectives add constants dummy

# Add scoreboards for tracking kills and deaths
scoreboard objectives add deaths deathCount
scoreboard objectives add lives dummy
scoreboard objectives add kills playerKillCount

# Set worldborder
worldborder center ~ ~
worldborder set 700

# Add team
team add team_green
team modify team_green color green
team add team_yellow
team modify team_yellow color yellow
team add team_red
team modify team_red color red
team add team_dead
team modify team_dead prefix ["",{"text": "["},{"text": "DIED","color": "gray"},{"text": "] "}]

# Show lives in player list
scoreboard objectives setdisplay list lives

# Reset all scores on install
function 3rdlife:reset

# start the loop
function 3rdlife:main/loop
