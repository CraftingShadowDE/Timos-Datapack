execute as @e[type=chest_minecart,tag=pndmenu] at @s store success score @s refill run clear @p #minecraft:menu{filler:1b}
execute as @e[scores={refill=1..},tag=pndmenu] at @s run function dptools:menu/pnddirectory
execute at @e[type=item,nbt={Item:{tag:{filler:1b}}}] as @e[tag=pndmenu,distance=..2,limit=1,sort=nearest] at @s run function dptools:menu/pnddirectory
function dptools:menu/pndstore









