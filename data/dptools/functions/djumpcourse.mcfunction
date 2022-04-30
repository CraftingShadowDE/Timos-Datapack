execute at @e[tag=anchor,distance=..12] if score @e[tag=anchor,limit=1,sort=nearest] UUID = @s UUID run data modify entity @e[tag=anchor,limit=1,sort=nearest] Pos[0] set from entity @s Pos[0]
execute at @e[tag=anchor,distance=..12] if score @e[tag=anchor,limit=1,sort=nearest] UUID = @s UUID run data modify entity @e[tag=anchor,limit=1,sort=nearest] Pos[2] set from entity @s Pos[2]
execute at @e[tag=anchor,distance=..12] if score @e[tag=anchor,limit=1,sort=nearest] UUID = @s UUID run tp @s ~ ~ ~
