#creating scoreboards
scoreboard objectives add repeat dummy
scoreboard objectives add timo_data dummy

#convert daytime in ticks to daytime in time
scoreboard players set #time_6 timo_data 6
scoreboard players set #time_1000 timo_data 1000
scoreboard players set #time_60 timo_data 60
scoreboard players set #time_24000 timo_data 24000

#keepInvetory true in all dimensions
execute unless score #keepInventory repeat matches 0 run scoreboard players set #keepInventory repeat 1
execute unless score #keepInventory repeat matches 0 in minecraft:overworld run gamerule keepInventory true
execute unless score #keepInventory repeat matches 0 in minecraft:the_nether run gamerule keepInventory true
execute unless score #keepInventory repeat matches 0 in minecraft:the_end run gamerule keepInventory true

#recipes
execute unless score #recipes repeat matches 0 run scoreboard players set #recipes repeat 1 

#Info message in chat
tellraw @a ["",{"text":"Info zu Timo's Datapack:","bold":true,"underlined":true,"color":"dark_red"},"\n",{"text":"Das Datapack wurde geladen und folgende Funktionen wurden aktiviert:","color":"red"},"\n",{"text":"volles Rezeptbuch, keepInventory, keine Babyzombies, neue Rezepte, durch Sneaken Bäume zum Wachsen bringen,","color":"red"},"\n",{"text":"Villager anleinen und noch weitere aktivierte und auch standardmäßig deaktivierte","color":"red"},"\n",{"text":"Funktionen. Um alle (de-)aktivierbaren Funktionen zu sehen, verwende bitte","color":"red"},"\n",{"text":"\"","color":"red"},{"text":"/function feature_info","italic":true,"color":"red","clickEvent":{"action":"run_command","value":"/function feature_info"},"hoverEvent":{"action":"show_text","contents":[{"text":"Klicke, um \"","color":"red"},{"text":"/function feature_info","italic":true,"color":"red"},{"text":"\" auszuführen","color":"red"}]}},{"text":"\" oder \"","color":"red"},{"text":"/function minecraft:feature_info","italic":true,"color":"red","clickEvent":{"action":"run_command","value":"/function minecraft:feature_info"},"hoverEvent":{"action":"show_text","contents":[{"text":"Klicke, um \"","color":"red"},{"text":"/function minecraft:feature_info","italic":true,"color":"red"},{"text":"\" auszuführen","color":"red"}]}},{"text":"\".","color":"red"},"\n",{"text":"Des weiteren kann man mit einem speziellen Buch im Survivalmode einfach","color":"red"},"\n",{"text":"ArmorStands bearbeiten. Informationen dazu kann man über \"","color":"red"},{"text":"/trigger as_help","italic":true,"color":"red","clickEvent":{"action":"run_command","value":"/trigger as_help"},"hoverEvent":{"action":"show_text","contents":[{"text":"Klicke, um \"","color":"red"},{"text":"/trigger as_help","italic":true,"color":"red"},{"text":"\" auszuführen","color":"red"}]}},{"text":"\"","color":"red"},"\n",{"text":"erhalten, Einstellungen können über \"","color":"red"},{"text":"/function armor_statues:admin","italic":true,"color":"red","clickEvent":{"action":"run_command","value":"/function armor_statues:admin"},"hoverEvent":{"action":"show_text","contents":[{"text":"Klicke, um \"","color":"red"},{"text":"/function armor_statues:admin","italic":true,"color":"red"},{"text":"\" auszuführen","color":"red"}]}},{"text":"\"","color":"red"},"\n",{"text":"aufgerufen werden, wenn man Admin-Rechte hat.","color":"red"}]

#villagerleash
execute unless score #villagerleash repeat matches 0 run scoreboard players set #villagerleash repeat 1
function villagerleash:vl/start

#antibabyzombie
execute unless score #antibabyzombie repeat matches 0 run scoreboard players set #antibabyzombie repeat 1

#hiddennickname
function hiddennickname:load

#armor_statues
execute unless score #armor_statues repeat matches 0 run scoreboard players set #armor_statues repeat 1
function armor_statues:load
function armor_statues:second
function armor_statues:3_second 
data modify storage customizable_armor_stands:settings as_admin.fixed_item_frame set value "Enabled"
data modify storage customizable_armor_stands:settings as_admin.uuid_lock set value "Enabled"

#position-engine
function commands:position-engine/prepare
execute unless score #position-engine repeat matches 0 run scoreboard players set #position-engine repeat 1
scoreboard objectives add toggle_position-engine trigger "Position-Engine umschalten"

#spione
execute unless score #spione repeat matches 0 run scoreboard players set #spione repeat 1

#security
scoreboard players set #security repeat 1

#antiinfested
execute unless score #antiinfested repeat matches 0 run scoreboard players set #antiinfested repeat 1 

#antinitwit
execute unless score #antinitwit repeat matches 0 run scoreboard players set #antinitwit repeat 1 

#dptools
function dptools:init
execute unless score #dptools repeat matches 0 run scoreboard players set #dptools repeat 1 

#SaplingGrow
function commands:sapling-grow/load
execute unless score #SaplingGrow repeat matches 0 run scoreboard players set #SaplingGrow repeat 1 

#trigger for time function
scoreboard objectives add show_time trigger "Ingamezeit anzeigen"