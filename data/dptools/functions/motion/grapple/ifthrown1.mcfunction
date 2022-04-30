tag @e[tag=watch] add see
execute as @e[tag=watch] at @e[tag=hook,distance=..33] if score @s UUID = @e[tag=hook,limit=1,sort=nearest] UUID run tag @s remove see
execute if entity @e[tag=watch,tag=see,distance=..2,sort=nearest,limit=1] run tag @s remove click1
execute if entity @e[tag=watch,tag=see,distance=..2,sort=nearest,limit=1] run tag @s remove 1pass
execute if entity @s[scores={cool=0}] if entity @e[tag=watch,tag=see,distance=..2,sort=nearest,limit=1] run function dptools:motion/grapple/throwprep
execute unless entity @s[scores={cool=0}] if entity @e[tag=watch,tag=see,distance=..2,sort=nearest,limit=1] run tellraw @s {"text":"Whow! Slow down there!","color":"red"}
