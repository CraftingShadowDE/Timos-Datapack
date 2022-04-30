execute store result score @p pos.x run data get entity @p Pos[0] 
execute store result score @p pos.y run data get entity @p Pos[1] 
execute store result score @p pos.z run data get entity @p Pos[2] 


execute store result score @p rot.hor run data get entity @p Rotation[0] 

execute if score @p rot.hor matches -203..-158 run scoreboard players set @p rot.fin 1 
execute if score @p rot.hor matches -157..-114 run scoreboard players set @p rot.fin 2 
execute if score @p rot.hor matches -113..-68 run scoreboard players set @p rot.fin 3 
execute if score @p rot.hor matches -67..-24 run scoreboard players set @p rot.fin 4 
execute if score @p rot.hor matches -360..-338 run scoreboard players set @p rot.fin 5 
execute if score @p rot.hor matches -23..0 run scoreboard players set @p rot.fin 5 
execute if score @p rot.hor matches -337..-294 run scoreboard players set @p rot.fin 6 
execute if score @p rot.hor matches -293..-248 run scoreboard players set @p rot.fin 7 
execute if score @p rot.hor matches -247..-204 run scoreboard players set @p rot.fin 8 

execute if score @p rot.hor matches 114..157 run scoreboard players set @p rot.fin 8 
execute if score @p rot.hor matches 68..113 run scoreboard players set @p rot.fin 7 
execute if score @p rot.hor matches 24..67 run scoreboard players set @p rot.fin 6 
execute if score @p rot.hor matches 338..360 run scoreboard players set @p rot.fin 5 
execute if score @p rot.hor matches 0..23 run scoreboard players set @p rot.fin 5 
execute if score @p rot.hor matches 294..337 run scoreboard players set @p rot.fin 4 
execute if score @p rot.hor matches 248..293 run scoreboard players set @p rot.fin 3 
execute if score @p rot.hor matches 204..247 run scoreboard players set @p rot.fin 2 
execute if score @p rot.hor matches 158..203 run scoreboard players set @p rot.fin 1 


execute if score @p rot.fin matches 1 run title @p actionbar [{"text":"Position: ","color":"dark_purple","bold":true},{"score":{"name":"@p","objective":"pos.x"},"color":"light_purple","bold":false},{"text":" "},{"score":{"name":"@p","objective":"pos.y"},"color":"light_purple","bold":false},{"text":" "},{"score":{"name":"@p","objective":"pos.z"},"color":"light_purple","bold":false},{"text":"      ","bold":false},{"text":"   "},{"text":"Compass: ","color":"dark_purple","bold":true},{"text":"N (-Z)","color":"light_purple","bold":false}] 

execute if score @p rot.fin matches 2 run title @p actionbar [{"text":"Position: ","color":"dark_purple","bold":true},{"score":{"name":"@p","objective":"pos.x"},"color":"light_purple","bold":false},{"text":" "},{"score":{"name":"@p","objective":"pos.y"},"color":"light_purple","bold":false},{"text":" "},{"score":{"name":"@p","objective":"pos.z"},"color":"light_purple","bold":false},{"text":"      ","bold":false},{"text":"   "},{"text":"Compass: ","color":"dark_purple","bold":true},{"text":"NO (+X-Z)","color":"light_purple","bold":false}] 

execute if score @p rot.fin matches 3 run title @p actionbar [{"text":"Position: ","color":"dark_purple","bold":true},{"score":{"name":"@p","objective":"pos.x"},"color":"light_purple","bold":false},{"text":" "},{"score":{"name":"@p","objective":"pos.y"},"color":"light_purple","bold":false},{"text":" "},{"score":{"name":"@p","objective":"pos.z"},"color":"light_purple","bold":false},{"text":"      ","bold":false},{"text":"   "},{"text":"Compass: ","color":"dark_purple","bold":true},{"text":"O (+X)","color":"light_purple","bold":false}] 

execute if score @p rot.fin matches 4 run title @p actionbar [{"text":"Position: ","color":"dark_purple","bold":true},{"score":{"name":"@p","objective":"pos.x"},"color":"light_purple","bold":false},{"text":" "},{"score":{"name":"@p","objective":"pos.y"},"color":"light_purple","bold":false},{"text":" "},{"score":{"name":"@p","objective":"pos.z"},"color":"light_purple","bold":false},{"text":"      ","bold":false},{"text":"   "},{"text":"Compass: ","color":"dark_purple","bold":true},{"text":"SO (+X+Z)","color":"light_purple","bold":false}] 

execute if score @p rot.fin matches 5 run title @p actionbar [{"text":"Position: ","color":"dark_purple","bold":true},{"score":{"name":"@p","objective":"pos.x"},"color":"light_purple","bold":false},{"text":" "},{"score":{"name":"@p","objective":"pos.y"},"color":"light_purple","bold":false},{"text":" "},{"score":{"name":"@p","objective":"pos.z"},"color":"light_purple","bold":false},{"text":"      ","bold":false},{"text":"   "},{"text":"Compass: ","color":"dark_purple","bold":true},{"text":"S (+Z)","color":"light_purple","bold":false}] 

execute if score @p rot.fin matches 6 run title @p actionbar [{"text":"Position: ","color":"dark_purple","bold":true},{"score":{"name":"@p","objective":"pos.x"},"color":"light_purple","bold":false},{"text":" "},{"score":{"name":"@p","objective":"pos.y"},"color":"light_purple","bold":false},{"text":" "},{"score":{"name":"@p","objective":"pos.z"},"color":"light_purple","bold":false},{"text":"      ","bold":false},{"text":"   "},{"text":"Compass: ","color":"dark_purple","bold":true},{"text":"SW (-X+Z)","color":"light_purple","bold":false}] 

execute if score @p rot.fin matches 7 run title @p actionbar [{"text":"Position: ","color":"dark_purple","bold":true},{"score":{"name":"@p","objective":"pos.x"},"color":"light_purple","bold":false},{"text":" "},{"score":{"name":"@p","objective":"pos.y"},"color":"light_purple","bold":false},{"text":" "},{"score":{"name":"@p","objective":"pos.z"},"color":"light_purple","bold":false},{"text":"      ","bold":false},{"text":"   "},{"text":"Compass: ","color":"dark_purple","bold":true},{"text":"W (-X)","color":"light_purple","bold":false}] 

execute if score @p rot.fin matches 8 run title @p actionbar [{"text":"Position: ","color":"dark_purple","bold":true},{"score":{"name":"@p","objective":"pos.x"},"color":"light_purple","bold":false},{"text":" "},{"score":{"name":"@p","objective":"pos.y"},"color":"light_purple","bold":false},{"text":" "},{"score":{"name":"@p","objective":"pos.z"},"color":"light_purple","bold":false},{"text":"      ","bold":false},{"text":"   "},{"text":"Compass: ","color":"dark_purple","bold":true},{"text":"NW (-X-Z)","color":"light_purple","bold":false}] 