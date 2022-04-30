tag @a[tag=amen,tag=god,scores={sneak=0}] remove god
tag @a[tag=amen,tag=!god,scores={sneak=1..}] add god
scoreboard players set @a[scores={sneak=1..}] sneak 0


execute as @a[tag=god,tag=!gstart] at @s run function dptools:god/system/time/slowstart
execute as @a[tag=!god,tag=gstart] at @s run function dptools:god/system/time/slowend
execute as @e[tag=lock] at @s run tp @p ~ ~ ~ ~ ~
execute if entity @a[tag=god,tag=gstart] as @e[tag=!god,tag=!notgod,type=!item_frame] at @s run function dptools:god/system/time/new
execute as @e[tag=notgod,type=tnt] run data merge entity @s {Fuse:3}
execute as @e[tag=notgod,type=tnt_minecart] run data merge entity @s {Fuse:3}



