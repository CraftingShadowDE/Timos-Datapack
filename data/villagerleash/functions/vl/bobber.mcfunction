execute as @e store result score @s X run data get entity @s Pos[0]
execute as @e store result score @s Y run data get entity @s Pos[1]
execute as @e store result score @s Z run data get entity @s Pos[2]
execute as @e[type=minecraft:fishing_bobber] at @s if entity @e[type=minecraft:villager,distance=..2] if entity @a[limit=1,sort=nearest,nbt={SelectedItem:{id:"minecraft:fishing_rod",Count:1b}}] run function villagerleash:vl/movement