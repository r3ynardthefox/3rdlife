# Setup gamemode
gamemode survival @a
tellraw @a ["",{"text": "[    "},{"text": "Welcome to","color": "yellow"},{"text": " 3rd Life", "color": "red"},{"text": "!    ] "}]

# Add scoreboards for settings
scoreboard objectives add 3rd.config dummy
scoreboard objectives add 3rd.variables dummy
scoreboard objectives add 3rd.constants dummy

# Add scoreboards for tracking 3rd.kills and 3rd.deaths
scoreboard objectives add 3rd.deaths deathCount
scoreboard objectives add 3rd.lives dummy
scoreboard objectives add 3rd.kills playerKillCount

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

# Show 3rd.lives in player list
scoreboard objectives setdisplay list 3rd.lives

# setup impostor timer (based on main loop schedule: seconds)
scoreboard players set #timerSec 3rd.variables 0

# set default impostor end time (30 minutes) if not already set
execute unless score #sessionDurationSec 3rd.config matches -2147483648..2147483647 run scoreboard players set #sessionDurationSec 3rd.config 1800


# Reset all scores on install
function 3rdlife:reset

# start the loop
function 3rdlife:main/loop
