# Check if impostor comleted the objective
# If the impostor successfully killed someone then he recieves a life
execute as @a if score @s isImpostor matches 1 if score @s kills matches 1 run scoreboard players add @s lives 1
execute as @a if score @s isImpostor matches 1 if score @s kills matches 1 run tellraw @s {"text": "You gained a new life!", "color": "green"}

# Else the impostor will be set to the last life
execute as @a if score @s isImpostor matches 1 if score @s kills matches 0 run scoreboard players set @s lives 1
execute as @a if score @s isImpostor matches 1 if score @s kills matches 0 run tellraw @s {"text":"You lost your lives!", "color": "yellow"}

# Turn off impostor mode and cleanup
scoreboard objectives remove isImpostor
scoreboard players set isImpostorModeOn impostorSettings 0
scoreboard players set timerSec impostorSettings 0
scoreboard players set @a kills 0

tellraw @a ["",{"text": "["},{"text": "Time's up!","color": "green"},{"text": "] "}]
