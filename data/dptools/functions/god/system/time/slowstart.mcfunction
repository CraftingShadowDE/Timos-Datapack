tag @s add gstart
tag @e[tag=!god,type=!item_frame] add notgod
execute as @e[tag=notgod] store result score @s m1 run data get entity @s Motion[0] 1000000
execute as @e[tag=notgod] store result score @s m2 run data get entity @s Motion[1] 1000000
execute as @e[tag=notgod] store result score @s m3 run data get entity @s Motion[2] 1000000
execute as @e[tag=notgod] run data merge entity @s {NoAI:1b}
execute as @e[tag=notgod] run data merge entity @s {NoGravity:1b}
execute as @e[tag=notgod] run data merge entity @s {Motion:[0.0d,0.0d,0.0d]}
execute as @e[tag=notgod,type=!creeper] run effect give @s minecraft:slowness 1000000 255 true
execute as @e[tag=notgod,type=!creeper] run effect give @s minecraft:blindness 1000000 255 true
execute as @e[tag=notgod,type=!creeper] run effect give @s minecraft:jump_boost 1000000 245 true
execute at @a[tag=notgod] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:1000000000,Tags:["lock"]}
execute at @a[tag=notgod] run tp @e[tag=lock,limit=1,sort=nearest] ~ ~ ~ ~ ~
