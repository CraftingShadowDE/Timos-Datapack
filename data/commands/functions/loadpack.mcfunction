execute in minecraft:overworld run gamerule keepInventory true
execute in minecraft:the_nether run gamerule keepInventory true
execute in minecraft:the_end run gamerule keepInventory true

execute in minecraft:overworld run gamerule mobGriefing false


scoreboard objectives add repeat dummy
scoreboard objectives add timo_data dummy


execute unless score #recipes repeat matches 0 run scoreboard players set #recipes repeat 1 

tellraw @a ["",{"text":"Info zu Timo's Datapack:","bold":true,"underlined":true,"color":"dark_red"},"\n",{"text":"Das Datapack wurde geladen und folgende Funktionen wurden aktiviert:","color":"red"},"\n",{"text":"volles Rezeptbuch, keepInventory, keine Babyzombies, neue Rezepte, Villager","color":"red"},"\n",{"text":"anleinen und noch weitere aktivierte und auch standartmäßig deaktivierte","color":"red"},"\n",{"text":"Funktionen. Um alle (de-)aktivierbaren Funktionen zu sehen, verwende bitte","color":"red"},"\n",{"text":"\"","color":"red"},{"text":"/function info","italic":true,"color":"red","clickEvent":{"action":"run_command","value":"/function info"},"hoverEvent":{"action":"show_text","contents":[{"text":"Klicke, um \"","color":"red"},{"text":"/function info","italic":true,"color":"red"},{"text":"\" auszuführen","color":"red"}]}},{"text":"\" oder \"","color":"red"},{"text":"/function minecraft:info","italic":true,"color":"red","clickEvent":{"action":"run_command","value":"/function minecraft:info"},"hoverEvent":{"action":"show_text","contents":[{"text":"Klicke, um \"","color":"red"},{"text":"/function minecraft:info","italic":true,"color":"red"},{"text":"\" auszuführen","color":"red"}]}},{"text":"\".","color":"red"},"\n",{"text":"Des weiteren kann man mit einem speziellen Buch im Survivalmode einfach","color":"red"},"\n",{"text":"ArmorStands bearbeiten. Informationen dazu kann man über \"","color":"red"},{"text":"/trigger as_help","italic":true,"color":"red","clickEvent":{"action":"run_command","value":"/trigger as_help"},"hoverEvent":{"action":"show_text","contents":[{"text":"Klicke, um \"","color":"red"},{"text":"/trigger as_help","italic":true,"color":"red"},{"text":"\" auszuführen","color":"red"}]}},{"text":"\"","color":"red"},"\n",{"text":"erhalten, Einstellungen können über \"","color":"red"},{"text":"/function armor_statues:admin","italic":true,"color":"red","clickEvent":{"action":"run_command","value":"/function armor_statues:admin"},"hoverEvent":{"action":"show_text","contents":[{"text":"Klicke, um \"","color":"red"},{"text":"/function armor_statues:admin","italic":true,"color":"red"},{"text":"\" auszuführen","color":"red"}]}},{"text":"\"","color":"red"},"\n",{"text":"aufgerufen werden, wenn man Admin-Rechte hat.","color":"red"}]

execute unless score #villagerleash repeat matches 0 run scoreboard players set #villagerleash repeat 1
function villagerleash:vl/start

execute unless score #antibabyzombie repeat matches 0 run scoreboard players set #antibabyzombie repeat 1

function hiddennickname:load

execute unless score #armor_statues repeat matches 0 run scoreboard players set #armor_statues repeat 1
function armor_statues:load
function armor_statues:second
function armor_statues:3_second 
data modify storage customizable_armor_stands:settings as_admin.fixed_item_frame set value "Enabled"
data modify storage customizable_armor_stands:settings as_admin.uuid_lock set value "Enabled"

function commands:position-engine/prepare
execute unless score #position-engine repeat matches 1 run scoreboard players set #position-engine repeat 0

execute unless score #spione repeat matches 0 run scoreboard players set #spione repeat 1

scoreboard players set #security repeat 1

execute unless score #antiinfested repeat matches 0 run scoreboard players set #antiinfested repeat 1 

execute unless score #antinitwit repeat matches 0 run scoreboard players set #antinitwit repeat 1 

function dptools:init
execute unless score #dptools repeat matches 0 run scoreboard players set #dptools repeat 1 