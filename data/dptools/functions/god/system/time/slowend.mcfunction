tag @s remove gstart

execute as @e[tag=notgod] store result entity @s Motion[0] double 0.000001 run scoreboard players get @s m1
execute as @e[tag=notgod] store result entity @s Motion[1] double 0.000001 run scoreboard players get @s m2
execute as @e[tag=notgod] store result entity @s Motion[2] double 0.000001 run scoreboard players get @s m3
execute as @e[tag=notgod] run data merge entity @s {NoAI:0b}
execute as @e[tag=notgod] run data merge entity @s {NoGravity:0b}
execute as @e[tag=notgod] run effect clear @s minecraft:slowness
execute as @e[tag=notgod] run effect clear @s minecraft:blindness
execute as @e[tag=notgod] run effect clear @s minecraft:jump_boost
tag @e[tag=notgod] remove notgod
kill @e[tag=lock]
