tp @s ~ ~.11 ~
scoreboard players operation @s UUID = @p UUID
scoreboard players operation @e[tag=tempanch,limit=1,sort=nearest] UUID = @p UUID
execute store result score @s pos1 run data get entity @s Pos[0] 100000
execute store result score @s pos2 run data get entity @s Pos[1] 100000
execute store result score @s pos3 run data get entity @s Pos[2] 100000

execute at @s run tp @s ^ ^ ^0.1

execute store result score @s posr1 run data get entity @s Pos[0] 100000
execute store result score @s posr2 run data get entity @s Pos[1] 100000
execute store result score @s posr3 run data get entity @s Pos[2] 100000
execute at @s run tp @s ^ ^ ^-0.1
scoreboard players operation @s posr1 -= @s pos1
scoreboard players operation @s posr2 -= @s pos2
scoreboard players operation @s posr3 -= @s pos3
scoreboard players add @s posr2 3000
scoreboard players set @s[scores={distance=200..}] distance 200
scoreboard players operation @s posr1 *= @s distance
scoreboard players operation @s posr2 *= @s distance
scoreboard players operation @s posr3 *= @s distance
scoreboard players operation @s posr1 /= 125 125
scoreboard players operation @s posr2 /= 125 125
scoreboard players operation @s posr3 /= 125 125
scoreboard players set @s[scores={posr2=1666..}] posr2 1666
execute store result entity @s Motion[0] double 0.00065 run scoreboard players get @s posr1
execute store result entity @s Motion[1] double 0.00065 run scoreboard players get @s posr2
execute store result entity @s Motion[2] double 0.00065 run scoreboard players get @s posr3
#tellraw @p ["",{"score":{"name":"@s","objective":"posr1"},"bold":true,"color":"dark_green"},{"text":","},{"score":{"name":"@s","objective":"posr2"},"bold":true,"color":"dark_green"},{"text":","},{"score":{"name":"@s","objective":"posr3"},"bold":true,"color":"dark_green"},{"text":","},{"score":{"name":"@p","objective":"distance"},"bold":true,"color":"dark_red"}]
