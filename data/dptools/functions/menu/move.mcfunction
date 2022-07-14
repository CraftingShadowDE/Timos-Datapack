tag @s[tag=move] remove move
execute store result score @s x1 run data get entity @s Rotation[0] 100000
execute store result score @s y1 run data get entity @s Rotation[1] 100000
execute run scoreboard players operation @s x2 -= @s x1
execute run scoreboard players operation @s y2 -= @s y1
execute unless score @s x2 matches 0 run tag @s add move 
execute unless score @s y2 matches 0 run tag @s add move 
execute run scoreboard players operation @s x2 = @s x1
execute run scoreboard players operation @s y2 = @s y1
execute store result score @s pos1 run data get entity @s Pos[0] 100
execute store result score @s pos2 run data get entity @s Pos[1] 100
execute store result score @s pos3 run data get entity @s Pos[1] 100
execute run scoreboard players operation @s posr1 -= @s pos1
execute run scoreboard players operation @s posr2 -= @s pos2
execute run scoreboard players operation @s posr3 -= @s pos3
execute unless score @s posr1 matches 0 run tag @s add move 
execute unless score @s posr2 matches 0 run tag @s add move
execute unless score @s posr3 matches 0 run tag @s add move 
execute run scoreboard players operation @s posr1 = @s pos1
execute run scoreboard players operation @s posr2 = @s pos2
execute run scoreboard players operation @s posr3 = @s pos3
