schedule function anticheat:orecheck 60s

scoreboard players set @a[scores={diamonds_mined=11..}] diamonds_mined 10
execute as @a[scores={diamonds_mined=10..}] run tellraw @s {"text":"Waarschuwing - Cheats/hacks zijn verboden!","color":"red"}
scoreboard players add @a[scores={diamonds_mined=10..}] ore_warning 1
scoreboard players remove @a[scores={diamonds_mined=1..}] diamonds_mined 1
