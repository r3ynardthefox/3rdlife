# Check if impostor completed the objective
# If the impostor successfully killed someone then he recieves a life
execute as @a if score @s isImpostor matches 1 if score @s 3rd.kills matches 1..100 run scoreboard players add @s 3rd.lives 1
execute as @a if score @s isImpostor matches 1 if score @s 3rd.kills matches 1..100 run tellraw @s {"text": "[    The Impostor WON! +1 life!    ]", "color": "yellow"}

# If the impostor failed he will lose 1 life
execute as @a if score @s isImpostor matches 1 if score @s 3rd.kills matches 0 if score @s 3rd.lives matches 2..4 run tellraw @a {"text":"[    The Impostor LOST! -1 life!    ]", "color": "yellow"}
execute as @a if score @s isImpostor matches 1 if score @s 3rd.kills matches 0 if score @s 3rd.lives matches 1 run tellraw @a {"text":"[    The Impostor LOST!    ]", "color": "yellow"}
execute as @a if score @s isImpostor matches 1 if score @s 3rd.kills matches 0 if score @s 3rd.lives matches 2..4 run scoreboard players remove @s 3rd.lives 1

# Turn off impostor mode and cleanup
scoreboard objectives remove isImpostor
scoreboard players set #isImpostorModeOn 3rd.variables 0
scoreboard players set #timerSec 3rd.variables 0
scoreboard players set @a 3rd.kills 0
