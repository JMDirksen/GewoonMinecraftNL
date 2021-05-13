schedule function anticheat:flycheck 10
scoreboard players add @a flycheck 0
# NBTs: FallFlying=Elytra, Effects: 25=Levitation, 8=JumpBoost, 28=SlowFalling
execute as @a[tag=!Admin,scores={flycheck=..9},nbt=!{FallFlying:1b},nbt=!{ActiveEffects:[{Id:25b}]},nbt=!{ActiveEffects:[{Id:8b}]},nbt=!{ActiveEffects:[{Id:28b}]}] at @s if block ~-1 ~-.5 ~-1 air if block ~-1 ~-.5 ~ air if block ~-1 ~-.5 ~1 air if block ~ ~-.5 ~-1 air if block ~ ~-.5 ~ air if block ~ ~-.5 ~1 air if block ~1 ~-.5 ~-1 air if block ~1 ~-.5 ~ air if block ~1 ~-.5 ~1 air run scoreboard players add @s flycheck 3
scoreboard players remove @a[scores={flycheck=1..}] flycheck 2
execute as @a[tag=!flynoticed,scores={flycheck=10..}] run tellraw @s {"text":"Waarschuwing - Cheats/hacks zijn verboden!","color":"red"}
scoreboard players add @a[tag=!flynoticed,scores={flycheck=10..}] fly_warning 1 
tag @a[tag=!flynoticed,scores={flycheck=10..}] add flynoticed
tag @a[tag=flynoticed,scores={flycheck=0}] remove flynoticed
