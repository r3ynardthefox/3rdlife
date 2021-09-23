# Check if impostor completed the objective
# If the impostor successfully killed someone then he recieves a life
execute as @a if score @s isImpostor matches 1 if score @s kills matches 1..100 run scoreboard players add @s lives 1
execute as @a if score @s isImpostor matches 1 if score @s kills matches 1..100 run tellraw @s {"text": "The Impostor WON! +1 life!", "color": "red"}

# If the impostor failed he will be set to the last life
execute as @a if score @s isImpostor matches 1 if score @s kills matches 0 run scoreboard players set @s lives 1
execute as @a if score @s isImpostor matches 1 if score @s kills matches 0 run tellraw @a {"text":"The Impostor LOST! The Impostor has only 1 life left!", "color": "green"}

# Turn off impostor mode and cleanup
scoreboard objectives remove isImpostor
scoreboard players set isImpostorModeOn impostorSettings 0
scoreboard players set timerSec impostorSettings 0
scoreboard players set @a kills 0
