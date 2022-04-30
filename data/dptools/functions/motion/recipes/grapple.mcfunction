kill @s
kill @e[type=item,distance=..1,nbt={Item:{id:"minecraft:diamond",Count:16b}}]
playsound minecraft:entity.fishing_bobber.throw master @a[distance=..15] ~ ~ ~ 1 0.1
particle minecraft:cloud ~ ~.5 ~ 0.25 0.25 0.25 0.05 30

summon item ~ ~ ~ {Item:{id:"minecraft:fishing_rod",Count:1b,tag:{grapple:1b,Unbreakable:1b,Damage:0,HideFlags:63,display:{Lore:['{"text":"Travel around in style ","color":"gray","italic":false}','{"text":"using this Grappling Hook.","color":"gray","italic":false}','{"text":"2 Second Cooldown","color":"dark_gray","italic":false}'],Name:'{"text":"Grappling Hook","color":"green","italic":false}'}}}}
