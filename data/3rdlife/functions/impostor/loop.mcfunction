# increase timer if impostor mode is on
scoreboard players add #timerSec 3rd.variables 1

# announce half time for the impostor session
scoreboard players set #TWO 3rd.constants 2
scoreboard players operation #halfTime 3rd.variables = #sessionDurationSec 3rd.config
scoreboard players operation #halfTime 3rd.variables /= #TWO 3rd.constants
execute if score #timerSec 3rd.variables = #halfTime 3rd.variables run tellraw @a {"text": "[    Impostor Session half-time passed!    ]", "color": "yellow"}

# check if impostor session is over
execute if score #timerSec 3rd.variables >= #sessionDurationSec 3rd.config run scoreboard players set #isImpostorModeOn 3rd.variables 0
execute if score #timerSec 3rd.variables >= #sessionDurationSec 3rd.config run function 3rdlife:impostor/off

# continue in loop if impostor mode is still on
execute if score #isImpostorModeOn 3rd.variables matches 1 run schedule function 3rdlife:impostor/loop 1s
