schedule function anticheat:warningscheck 1s

# Calculate warnings
scoreboard players reset @a warnings
execute as @a run scoreboard players operation @s warnings += @s ore_warning
execute as @a run scoreboard players operation @s warnings += @s fly_warning

# Cleanup
scoreboard players reset @a[scores={warnings=0}] warnings
scoreboard players reset @a[scores={ore_warning=0}] ore_warning
scoreboard players reset @a[scores={fly_warning=0}] fly_warning
