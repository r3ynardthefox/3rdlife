# Turn on impostor mode
scoreboard players set isImpostorModeOn impostorSettings 1

# setup timer (based on main loop schedule: seconds)
scoreboard players set timerSec impostorSettings 0

# set default turn off time (30 minutes) if not already sets
execute unless score endSec impostorSettings matches -2147483648..2147483647 run scoreboard players set endSec impostorSettings 1800

# Clear kill list for all players
scoreboard players set @a kills 0

# Randomly select the impostor
scoreboard objectives add isImpostor dummy
scoreboard players set @a isImpostor 0
scoreboard players set @r isImpostor 1

# Show info for the impostor
execute as @a if score @s isImpostor matches 1 run tellraw @s { "text": "You are the Impostor. Kill someone before the time runs out!", "color":"yellow" }
scoreboard objectives setdisplay sidebar isImpostor

function 3rdlife:impostor/loop
