# How to script Datapacks

### Store data
Create a scoreboard objective to group data:

```mcfunction
scoreboard objectives add settings dummy
```

This creates a `settings` objective that stores `dummy` type data. To add a value to this group create a fake player in the `settings` group called `isWorldBorderSet` and set its value to 1:

```mcfunction
scoreboard players set isWorldBorderSet settings 1
```
