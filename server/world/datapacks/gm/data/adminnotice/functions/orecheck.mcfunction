schedule function adminnotice:orecheck 60s

scoreboard players set @a[scores={diamonds_mined=11..}] diamonds_mined 10
execute as @a[scores={diamonds_mined=10..}] run tellraw @a[tag=Admin] ["",{"selector":"@s","color":"red"},{"text":" has mined ","color":"red"},{"score":{"name":"@s","objective":"diamonds_mined"},"color":"red"},{"text":" diamond ore!","color":"red"}]
execute as @a[scores={diamonds_mined=10..}] run tellraw @s {"text":"Waarschuwing - Cheats/hacks zijn verboden!","color":"red"}
scoreboard players add @a[scores={diamonds_mined=10..}] ore_warning 1
scoreboard players remove @a[scores={diamonds_mined=1..}] diamonds_mined 1
