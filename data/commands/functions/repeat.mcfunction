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
#store the ingametime as normal time in a storage
execute if score #time_hours timo_data matches 10..23 if score #time_minutes timo_data matches 10..59 run data modify storage timos-pack:data time.daytime.string set value '[{"text":""},{"score":{"name":"#time_hours","objective":"timo_data"}},{"text":":"},{"score":{"name":"#time_minutes","objective":"timo_data"}}]'
execute if score #time_hours timo_data matches 10..23 if score #time_minutes timo_data matches 0..9 run data modify storage timos-pack:data time.daytime.string set value '[{"text":""},{"score":{"name":"#time_hours","objective":"timo_data"}},{"text":":0"},{"score":{"name":"#time_minutes","objective":"timo_data"}}]'
execute if score #time_hours timo_data matches 0..9 if score #time_minutes timo_data matches 10..59 run data modify storage timos-pack:data time.daytime.string set value '[{"text":"0"},{"score":{"name":"#time_hours","objective":"timo_data"}},{"text":":"},{"score":{"name":"#time_minutes","objective":"timo_data"}}]'
execute if score #time_hours timo_data matches 0..9 if score #time_minutes timo_data matches 0..9 run data modify storage timos-pack:data time.daytime.string set value '[{"text":"0"},{"score":{"name":"#time_hours","objective":"timo_data"}},{"text":":0"},{"score":{"name":"#time_minutes","objective":"timo_data"}}]'
#trigger for time function
scoreboard players enable @a show_time
execute as @a at @s if score @s show_time matches 1.. run function minecraft:time
execute as @a at @s if score @s show_time matches ..-1 run function minecraft:time

#dptools
execute if score #dptools repeat matches 1 run function dptools:main
execute if score #dptools repeat matches 1 run scoreboard players add @a cool 0
execute if score #dptools repeat matches 1 run scoreboard players add @a sneaktd 0
#trigger for dptools
scoreboard players enable @a info_dptools-recipes
execute as @a at @s if score @s info_dptools-recipes matches 1 run function dptools:recipes-info
execute as @a at @s if score @s info_dptools-recipes matches 1.. run scoreboard players set @s info_dptools-recipes 0
execute as @a at @s if score @s info_dptools-recipes matches ..-1 run function dptools:recipes-info
execute as @a at @s if score @s info_dptools-recipes matches ..-1 run scoreboard players set @s info_dptools-recipes 0

execute if score #SaplingGrow repeat matches 1 run function commands:sapling-grow/main

#trigger for nightvision
scoreboard players enable @a toggle_night-vision
execute as @a at @s if score @s toggle_night-vision matches 1 run effect give @s night_vision 1000000 255 true
execute as @a at @s if score @s toggle_night-vision matches 2.. run effect clear @s night_vision
execute as @a at @s if score @s toggle_night-vision matches ..-1 run effect clear @s night_vision
execute as @a at @s if score @s toggle_night-vision matches 2.. run scoreboard players set @s toggle_night-vision 0
execute as @a at @s if score @s toggle_night-vision matches ..-1 run scoreboard players set @s toggle_night-vision 0

#trigger for killme
scoreboard players enable @a kill-me
execute as @a at @s if score @s kill-me matches 1.. run kill @s
execute as @a at @s if score @s kill-me matches ..-1 run kill @s
execute as @a at @s if score @s kill-me matches 1.. run scoreboard players set @s kill-me 0
execute as @a at @s if score @s kill-me matches ..-1 run scoreboard players set @s kill-me 0

#trigger for show_tps
scoreboard players enable @a show_tps
execute as @a at @s if score @s show_tps matches 1.. if entity @a[tag=show_tps] unless entity @p[tag=show_tps] run tellraw @p ["",{"text":"TPS-Anzeige:","bold":true,"underlined":true,"color":"dark_red"},"\n",{"text":"Hinweis: ","bold":true,"color":"red"},{"text":"Jemand anders hat vor kurzem diesen trigger verwendet. Bitte warte einen Augenblick, dann werden die TPS allen Spielern im Chat angezeigt. Sollte dies nicht passieren, versuche es später erneut.","color":"red"}]
execute as @a at @s if score @s show_tps matches ..-1 if entity @a[tag=show_tps] unless entity @p[tag=show_tps] run tellraw @p ["",{"text":"TPS-Anzeige:","bold":true,"underlined":true,"color":"dark_red"},"\n",{"text":"Hinweis: ","bold":true,"color":"red"},{"text":"Jemand anders hat vor kurzem diesen trigger verwendet. Bitte warte einen Augenblick, dann werden die TPS allen Spielern im Chat angezeigt. Sollte dies nicht passieren, versuche es später erneut.","color":"red"}]
execute as @a at @s if score @s show_tps matches 1.. if entity @a[tag=show_tps] if entity @p[tag=show_tps] run tellraw @p ["",{"text":"TPS-Anzeige:","bold":true,"underlined":true,"color":"dark_red"},"\n",{"text":"Hinweis: ","bold":true,"color":"red"},{"text":"Du hast vor kurzem diesen trigger verwendet. Bitte warte einen Augenblick, dann werden die TPS allen Spielern im Chat angezeigt (Je nach Serverlag variiert die Zeit bis das Ergebnis angezeigt wird). Sollte dies nicht passieren, versuche es später erneut.","color":"red"}]
execute as @a at @s if score @s show_tps matches ..-1 if entity @a[tag=show_tps] if entity @p[tag=show_tps] run tellraw @p ["",{"text":"TPS-Anzeige:","bold":true,"underlined":true,"color":"dark_red"},"\n",{"text":"Hinweis: ","bold":true,"color":"red"},{"text":"Du hast vor kurzem diesen trigger verwendet. Bitte warte einen Augenblick, dann werden die TPS allen Spielern im Chat angezeigt (Je nach Serverlag variiert die Zeit bis das Ergebnis angezeigt wird). Sollte dies nicht passieren, versuche es später erneut.","color":"red"}]
execute as @a at @s if score @s show_tps matches 1.. unless entity @a[tag=show_tps] run tag @s add show_tps
execute as @a at @s if score @s show_tps matches ..-1 unless entity @a[tag=show_tps] run tag @s add show_tps
execute as @a at @s if score @s show_tps matches 1.. run scoreboard players set @s show_tps 0
execute as @a at @s if score @s show_tps matches ..-1 run scoreboard players set @s show_tps 0
execute as @a[tag=show_tps] at @s unless score #timer show_tps matches 1.. run scoreboard players set #show_tps repeat 1
execute if entity @a[tag=show_tps] unless score #show_tps repeat matches 1 run tag @a remove show_tps
#show_tps
execute if score #show_tps repeat matches 1 run function commands:tps/main