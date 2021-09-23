# announce half time for the impostor session
scoreboard players set #TWO constants 2
scoreboard players operation #TEMP1 temps = endSec impostorSettings
scoreboard players operation #TEMP1 temps /= #TWO constants
execute if score timerSec impostorSettings = #TEMP1 temps run tellraw @a {"text": "Impostor Session Half-time passed!", "color": "yellow"}

# check if impostor session is over
execute if score timerSec impostorSettings >= endSec impostorSettings run scoreboard players set isImpostorModeOn impostorSettings 0
execute if score timerSec impostorSettings >= endSec impostorSettings run function 3rdlife:impostor/off

# increase timer if impostor mode is on
scoreboard players add timerSec impostorSettings 1

# continue in loop if impostor mode is still on
execute if score isImpostorModeOn impostorSettings matches 1 run schedule function 3rdlife:impostor/loop 1s
