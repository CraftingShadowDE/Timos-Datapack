tag @s add notgod
execute store result score @s m1 run data get entity @s Motion[0] 1000000
execute store result score @s m2 run data get entity @s Motion[1] 1000000
execute store result score @s m3 run data get entity @s Motion[2] 1000000
data merge entity @s {NoAI:1b}
data merge entity @s {NoGravity:1b}
data merge entity @s {Motion:[0.0d,0.0d,0.0d]}
effect give @s[type=!creeper] minecraft:slowness 1000000 255 true
effect give @s[type=!creeper] minecraft:blindness 1000000 255 true
effect give @s[type=!creeper] minecraft:jump_boost 1000000 245 true
execute if entity @s[type=player] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:1000000000,Tags:["lock"]}
execute if entity @s[type=player] run tp @e[tag=lock,limit=1,sort=nearest] ~ ~ ~