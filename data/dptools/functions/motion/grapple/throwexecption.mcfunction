tp @s ~ ~.11 ~
scoreboard players operation @s UUID = @p UUID
scoreboard players operation @e[tag=tempanch,limit=1,sort=nearest] UUID = @p UUID
execute store result score @s pos1 run data get entity @s Pos[0] 100000
execute store result score @s pos3 run data get entity @s Pos[2] 100000

execute at @s run tp @s ^ ^ ^0.1

execute store result score @s posr1 run data get entity @s Pos[0] 100000
execute store result score @s posr3 run data get entity @s Pos[2] 100000
execute at @s run tp @s ^ ^ ^-0.1
scoreboard players operation @s posr1 -= @s pos1
scoreboard players operation @s posr3 -= @s pos3
scoreboard players add @s posr2 2000
scoreboard players set @s[scores={distance=200..}] distance 200
scoreboard players operation @s posr1 *= @s distance
scoreboard players operation @s posr3 *= @s distance
scoreboard players operation @s posr1 /= 125 125
scoreboard players operation @s posr3 /= 125 125
scoreboard players operation @s posr1 *= -1 -1
scoreboard players operation @s posr3 *= -1 -1
execute store result entity @s Motion[0] double 0.0005 run scoreboard players get @s posr1
execute store result entity @s Motion[1] double 0.0005 run scoreboard players get @s posr2
execute store result entity @s Motion[2] double 0.0005 run scoreboard players get @s posr3
