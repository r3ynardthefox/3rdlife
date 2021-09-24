# Clear kill list for all players
scoreboard players set @a 3rd.kills 0

# Randomly select the impostor
scoreboard objectives add isImpostor dummy
scoreboard players set @a isImpostor 0
scoreboard players set @r[team=!team_dead] isImpostor 1

# Turn on impostor mode if impostor has been selected
execute as @a if score @s isImpostor matches 1 run scoreboard players set #isImpostorModeOn 3rd.variables 1

# Show info for the impostor
execute as @a if score @s isImpostor matches 1 run tellraw @s { "text": "[    You are the Impostor.    ]", "color":"red" }

# Show info for the others
execute if score #isImpostorModeOn 3rd.variables matches 1 run execute as @a if score @s isImpostor matches 0 run tellraw @a ["",{"text": "["},{"text": "[ The impostor has been chosen... Run for your lives! ]","color": "red"},{"text": "] "}]

# If impostor mode is on run the impostor/loop
execute if score #isImpostorModeOn 3rd.variables matches 1 run function 3rdlife:impostor/loop
