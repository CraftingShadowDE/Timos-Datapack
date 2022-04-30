execute at @a[tag=rider] if entity @e[tag=tempanch,limit=1,sort=nearest,distance=.012..] run function dptools:motion/grapple/anchorrepos



execute as @e[tag=tempanch,distance=..30,sort=nearest] if score @s UUID = @e[tag=anchor,limit=1,sort=nearest,distance=..1] UUID run kill @s 
summon minecraft:area_effect_cloud ~ ~ ~ {OnGround:0b,Tags:["tempanch"],Duration:2}
scoreboard players operation @e[tag=tempanch,limit=1,sort=nearest] UUID = @s UUID