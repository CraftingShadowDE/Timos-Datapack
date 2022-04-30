execute at @e[tag=anchor,sort=nearest] if score @s UUID = @e[tag=anchor,limit=1,sort=nearest,distance=..1] UUID run kill @e[tag=anchor,sort=nearest,distance=..1]
kill @e[tag=nograp,limit=1,sort=nearest,distance=..1]
summon minecraft:armor_stand ~ ~ ~ {CustomNameVisible:0b,Invisible:1b,Tags:["anchor"],CustomName:'{"text":"Jump","color":"green","bold":true,"italic":false}'}
summon minecraft:area_effect_cloud ~ ~ ~ {OnGround:0b,Tags:["tempanch"],Duration:2}
tp @e[tag=anchor,limit=1,sort=nearest] @e[tag=watch,limit=1,sort=nearest]
scoreboard players operation @s distance = @e[tag=watch,limit=1,sort=nearest] distance
scoreboard players operation @e[tag=anchor,limit=1,sort=nearest] distance = @e[tag=watch,limit=1,sort=nearest] distance
tag @s remove djump
scoreboard players set @s sneaktd 0

execute as @e[tag=anchor,limit=1,sort=nearest,distance=..1,scores={distance=11..}] at @s unless block ~ ~-.5 ~ air run function dptools:motion/grapple/throw
execute as @e[tag=anchor,limit=1,sort=nearest,distance=..1,scores={distance=11..}] at @s if block ~ ~-.5 ~ air run function dptools:motion/grapple/throwjump
execute as @e[tag=anchor,limit=1,sort=nearest,distance=..1,scores={distance=..10}] at @s run function dptools:motion/grapple/throwexecption

kill @e[tag=watch,tag=see]
##########################Get rid of This to disable Cooldown##############################
scoreboard players set @s cool 40