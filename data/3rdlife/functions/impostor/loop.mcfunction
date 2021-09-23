# check if impostor session is over
execute if score timerSec impostorSettings >= endSec impostorSettings run scoreboard players set isImpostorModeOn impostorSettings 0
execute if score timerSec impostorSettings >= endSec impostorSettings run function 3rdlife:impostor/off

# increase timer if impostor mode is on
scoreboard players add timerSec impostorSettings 1

# run in loop if impostor mode is still on
execute if score isImpostorModeOn impostorSettings matches 1 run schedule function 3rdlife:impostor/loop 1s
