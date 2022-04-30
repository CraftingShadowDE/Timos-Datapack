execute as @a[tag=djump] at @s run function dptools:djumpcourse 
execute as @a[tag=!shift,scores={sneak=1..,sneaktd=0},nbt={Inventory:[{Slot:100b,tag:{dj:1b}}]}] at @s if block ~ ~-.1 ~ air run function dptools:djump
execute as @a[tag=djump] at @s unless block ~ ~-.1 ~ air run function dptools:sneaktdclear
tag @a[tag=shift,scores={sneak=0}] remove shift
scoreboard players set @a[scores={sneak=1..}] sneak 0

execute as @a[nbt={Inventory:[{tag:{grapple:1b}}]}] at @s run function dptools:motion/invgrapple
execute as @a[nbt=!{SelectedItem:{tag:{grapple:1b}}},nbt=!{Inventory:[{Slot:-106b,tag:{grapple:1b}}]}] run function dptools:motion/cleanup
execute if entity @e[tag=anchor] run function dptools:motion/anchormain
execute as @a unless score @s UUID < UUID UUID run function dptools:motion/playerdiferental
scoreboard players set @a[scores={Fclick=1..}] Fclick 0
scoreboard players remove @a[scores={cool=1..}] cool 1


scoreboard players remove @a[scores={sneaktd=1..}] sneaktd 1
execute as @e[type=item,nbt={Item:{id:"minecraft:iron_boots"}}] at @s if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:string",Count:32b}}] run function dptools:motion/recipes/djump
execute as @e[type=item,nbt={Item:{id:"minecraft:leather_boots",Count:1b,tag:{Unbreakable:1b,Damage:0,dj:1b,display:{color:9891583,Name:'{"text":"Double Jump Boots","color":"blue","bold":true,"italic":false}'}}}}] at @s if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:enchanted_golden_apple",Count:1b}}] run function dptools:motion/recipes/ijump
execute as @e[type=item,nbt={Item:{id:"minecraft:fishing_rod"}}] at @s if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:diamond",Count:16b}}] run function dptools:motion/recipes/grapple