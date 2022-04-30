execute if entity @s[tag=1pass] run function dptools:motion/grapple/ifthrown1
kill @e[tag=watch,limit=1,sort=nearest,distance=..1]




summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["watch"],Duration:2}
scoreboard players operation @e[tag=watch,limit=1,sort=nearest,distance=..1] UUID = @s UUID
execute as @e[tag=watch,sort=nearest] at @s as @e[tag=hook,sort=nearest,distance=..33] if score @s UUID = @e[tag=watch,limit=1,sort=nearest,distance=..1] UUID facing entity @s feet run function dptools:motion/grapple/watchrotate
tag @s[tag=!1pass] add 1pass


