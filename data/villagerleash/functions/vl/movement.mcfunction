execute as @e[type=minecraft:villager] at @s if entity @e[type=minecraft:fishing_bobber,distance=..2,limit=1] run function villagerleash:vl/hop
execute as @e[type=minecraft:villager] at @s if entity @e[type=minecraft:fishing_bobber,distance=..2,limit=1] run scoreboard players operation @s X -= @p[nbt={SelectedItem:{id:"minecraft:fishing_rod",Count:1b}}] X
execute as @e[type=minecraft:villager] at @s if entity @e[type=minecraft:fishing_bobber,distance=..2,limit=1] run scoreboard players operation @s Z -= @p[nbt={SelectedItem:{id:"minecraft:fishing_rod",Count:1b}}] Z
execute as @e[type=minecraft:villager] at @s if entity @e[type=minecraft:fishing_bobber,distance=..2] if block ~ ~-0.5 ~ air run tp @s ~ ~-0.7 ~
execute as @e[type=minecraft:villager] at @s if entity @e[type=minecraft:fishing_bobber,distance=..2] if block ~ ~-0.1 ~ air run tp @s ~ ~-0.2 ~
execute as @e[type=minecraft:villager,scores={X=5..}] at @s if entity @e[type=minecraft:fishing_bobber,distance=..2] run function villagerleash:vl/west
execute as @e[type=minecraft:villager,scores={Z=5..}] at @s if entity @e[type=minecraft:fishing_bobber,distance=..2] run function villagerleash:vl/north
execute as @e[type=minecraft:villager,scores={X=..-5}] at @s if entity @e[type=minecraft:fishing_bobber,distance=..2] run function villagerleash:vl/east
execute as @e[type=minecraft:villager,scores={Z=..-5}] at @s if entity @e[type=minecraft:fishing_bobber,distance=..2] run function villagerleash:vl/south