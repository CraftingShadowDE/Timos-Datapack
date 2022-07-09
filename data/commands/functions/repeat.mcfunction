execute if score #recipes repeat matches 1 run function commands:recipes

execute if score #vlgr-emer repeat matches 1 run function commands:vlgr-emer

execute if score #villagerleash repeat matches 1 run function villagerleash:vl/bobber

execute if score #antibabyzombie repeat matches 1 run function commands:antibabyzombie

#hiddennickname
execute if score #hiddennickname repeat matches 1 run function hiddennickname:tick
execute if score #hiddennickname repeat matches 0 run team leave @a

execute if score #armor_statues repeat matches 1 run function armor_statues:tick 

execute if score #position-engine repeat matches 1 as @a at @s run function commands:position-engine/repeat

execute if score #spione repeat matches 1 run function commands:spione

execute if score #spione repeat matches 0 run execute as @e[type=wandering_trader,name="Spion"] at @s run data merge entity @s {CustomNameVisible:0b,CustomName:NULL}

execute if score #antiinfested repeat matches 1 run function commands:antiinfested

execute if score #antinitwit repeat matches 1 run function commands:antinitwit

function commands:security

#get ingametime and save it to scores
execute store result score #daytime timo_data run time query daytime
execute store result score #day timo_data run time query day
execute store result score #gametime timo_data run time query gametime
#create trigger for time function
scoreboard players enable @a show_time
execute as @a at @s if score @s show_time matches 1 run function minecraft:time

execute if score #dptools repeat matches 1 run function dptools:main

execute if score #SaplingGrow repeat matches 1 run function commands:sapling-grow/main