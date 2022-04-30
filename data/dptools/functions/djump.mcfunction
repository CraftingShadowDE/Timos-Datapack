tag @s add djump
kill @e[tag=anchor,limit=1,sort=nearest,distance=..1]
playsound minecraft:block.metal.step master @a[distance=..4] ~ ~ ~ 0.2
execute if entity @s[nbt={Inventory:[{Slot:100b,tag:{ij:1b}}]}] run summon minecraft:armor_stand ~ ~ ~ {CustomNameVisible:0b,Invisible:1b,Tags:["anchor","nograp"],CustomName:'{"text":"Jump","color":"green","bold":true,"italic":false}',Motion:[0.0d,0.54d,0.0d]}
execute if entity @s[nbt=!{Inventory:[{Slot:100b,tag:{ij:1b}}]}] run summon minecraft:armor_stand ~ ~ ~ {CustomNameVisible:0b,Invisible:1b,Tags:["anchor","nograp"],CustomName:'{"text":"Jump","color":"green","bold":true,"italic":false}',Motion:[0.0d,0.42d,0.0d]}
scoreboard players operation @e[tag=anchor,limit=1,sort=nearest] UUID = @s UUID
scoreboard players set @s[nbt={Inventory:[{Slot:100b,tag:{ij:1b}}]}] sneaktd 10
scoreboard players set @s[nbt=!{Inventory:[{Slot:100b,tag:{ij:1b}}]}] sneaktd 1000000
tag @s add shift