tag @s remove stop
scoreboard players add @s distance 1
execute at @e[tag=hook,distance=...75] if score @e[tag=hook,distance=...5,limit=1] UUID = @s UUID run tag @s add stop
execute positioned ^ ^ ^.1 unless entity @s[tag=stop] run function dptools:motion/grapple/distget