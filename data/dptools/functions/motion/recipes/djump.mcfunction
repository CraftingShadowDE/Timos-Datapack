kill @s
kill @e[type=item,distance=..1,nbt={Item:{id:"minecraft:string",Count:32b}}]
playsound minecraft:entity.slime.squish_small master @a[distance=..15]
particle minecraft:item_slime ~ ~.5 ~ 0.25 0.25 0.25 0 10
summon item ~ ~ ~ {Item:{id:"minecraft:leather_boots",Count:1b,tag:{Unbreakable:1b,Damage:0,dj:1b,display:{color:9891583,Name:'{"text":"Double Jump Boots","color":"blue","bold":true,"italic":false}'}}},Motion:[0.0d,0.25d,0.0d]}