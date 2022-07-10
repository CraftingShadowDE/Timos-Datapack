execute if score #recipes repeat matches 1 run function commands:recipes

execute if score #vlgr-emer repeat matches 1 run function commands:vlgr-emer

execute if score #villagerleash repeat matches 1 run function villagerleash:vl/bobber

execute if score #antibabyzombie repeat matches 1 run function commands:antibabyzombie

#hiddennickname
execute if score #hiddennickname repeat matches 1 run function hiddennickname:tick
execute if score #hiddennickname repeat matches 0 run team leave @a

execute if score #armor_statues repeat matches 1 run function armor_statues:tick 

#position-engine
scoreboard players enable @a toggle_position-engine
execute as @a at @s if score @s toggle_position-engine matches 2.. run scoreboard players set @s toggle_position-engine 0
execute as @a at @s if score @s toggle_position-engine matches ..-1 run scoreboard players set @s toggle_position-engine 0
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
#convert ingametime in ticks to ingametime as normal time
execute store result score #time_ticks1 timo_data run scoreboard players get #daytime timo_data
execute if score #time_ticks1 timo_data matches 18000..24000 store result score #time_ticks2 timo_data run scoreboard players operation #time_ticks1 timo_data -= #time_24000 timo_data
execute if score #time_ticks1 timo_data matches 0..17999 store result score #time_ticks2 timo_data run scoreboard players get #time_ticks1 timo_data
execute store result score #time_ticks3 timo_data run scoreboard players operation #time_ticks2 timo_data /= #time_1000 timo_data
execute store result score #time_hours timo_data run scoreboard players operation #time_ticks3 timo_data += #time_6 timo_data
execute store result score #time_ticks1b timo_data run scoreboard players get #daytime timo_data
execute store result score #time_ticks4 timo_data run scoreboard players operation #time_ticks1b timo_data /= #time_1000 timo_data
execute store result score #time_ticks5 timo_data run scoreboard players operation #time_ticks4 timo_data *= #time_1000 timo_data
execute store result score #time_ticks1c timo_data run scoreboard players get #daytime timo_data
execute store result score #time_ticks6 timo_data run scoreboard players operation #time_ticks1c timo_data -= #time_ticks5 timo_data
execute store result score #time_ticks7 timo_data run scoreboard players operation #time_ticks6 timo_data *= #time_60 timo_data
execute store result score #time_minutes timo_data run scoreboard players operation #time_ticks7 timo_data /= #time_1000 timo_data
#create trigger for time function
scoreboard players enable @a show_time
execute as @a at @s if score @s show_time matches 1.. run function minecraft:time
execute as @a at @s if score @s show_time matches ..-1 run function minecraft:time

execute if score #dptools repeat matches 1 run function dptools:main

execute if score #SaplingGrow repeat matches 1 run function commands:sapling-grow/main

#trigger for nightvision
scoreboard players enable @a toggle_night-vision
execute as @a at @s if score @s toggle_night-vision matches 1 run effect give @s night_vision 1000000 255 true
execute as @a at @s if score @s toggle_night-vision matches 2.. run effect clear @s night_vision
execute as @a at @s if score @s toggle_night-vision matches ..-1 run effect clear @s night_vision
execute as @a at @s if score @s toggle_night-vision matches 2.. run scoreboard players set @s toggle_night-vision 0
execute as @a at @s if score @s toggle_night-vision matches ..-1 run scoreboard players set @s toggle_night-vision 0