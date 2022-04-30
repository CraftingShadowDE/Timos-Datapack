kill @s
kill @e[type=item,distance=..1,nbt={Item:{id:"minecraft:enchanted_golden_apple",Count:1b}}]
playsound minecraft:entity.slime.squish master @a[distance=..15]
particle minecraft:item_slime ~ ~.5 ~ 0.35 0.35 0.35 0 40

summon item ~ ~ ~ {Item:{id:"minecraft:leather_boots",Count:1b,tag:{Unbreakable:1b,ij:1b,Damage:0,dj:1b,display:{color:3604304,Name:'{"text":"Infinite Jump Boots","color":"green","bold":true,"italic":false}'}}},Motion:[0.0d,0.5d,0.0d]}