tag @s remove repos
execute store result score @s pos1 run data get entity @s Pos[0] 500
execute store result score @s pos3 run data get entity @s Pos[2] 500
execute as @a[tag=rider] store result score @s pos1 run data get entity @s Pos[0] 1000
execute as @a[tag=rider] store result score @s pos3 run data get entity @s Pos[2] 1000
scoreboard players operation @s pos1 += @a[tag=rider,limit=1] pos1
scoreboard players operation @s pos3 += @a[tag=rider,limit=1] pos3
scoreboard players operation @s pos1 /= 3 3
scoreboard players operation @s pos3 /= 3 3
execute store result entity @s Pos[0] double 0.002 run scoreboard players get @s pos1
execute store result entity @s Pos[2] double 0.002 run scoreboard players get @s pos3
#tellraw @p ["",{"score":{"name":"@s","objective":"pos1"},"bold":true,"color":"dark_green"},{"text":","},{"score":{"name":"@s","objective":"pos3"},"bold":true,"color":"dark_green"}]