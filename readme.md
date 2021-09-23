# 3rd Life with Impostor

## Install

Run the following command in Minecraft chat to start the 3rd Life gamemode:

```mcfunction
/function 3rdlife:main/install
```

To start the Impostor session with default settings write to chat:

```mcfunction
/function 3rdlife:impsotor/on
```

## Settings

### Change Impostor session length

You can change the length of the impostor session (in seconds):

```mcfunction
/scoreboard players set endSec impostorSettings 600
```

## How to script Datapacks

### Store data
Create a scoreboard objective to group data:

```mcfunction
scoreboard objectives add settings dummy
```

This creates a `settings` objective that stores `dummy` type data. To add a value to this group create a fake player in the `settings` group called `isWorldBorderSet` and set its value to 1:

```mcfunction
scoreboard players set isWorldBorderSet settings 1
```
