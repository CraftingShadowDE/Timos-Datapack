scoreboard players add #timer show_tps 1

execute if score #timer show_tps matches 1 store success score #success-start-main show_tps run function commands:tps/start

execute if score #timer show_tps matches 2 unless score #success-start-main show_tps matches 1 run scoreboard players set #success-start show_tps 0
execute if score #timer show_tps matches 2 if score #success-start-main show_tps matches 1 unless score #success-start-start show_tps matches 1 run scoreboard players set #success-start show_tps 0
execute if score #timer show_tps matches 2 if score #success-start-main show_tps matches 1 if score #success-start-start show_tps matches 1 run scoreboard players set #success-start show_tps 1
execute if score #timer show_tps matches 2 run scoreboard players reset #success-start-main show_tps
execute if score #timer show_tps matches 2 run scoreboard players reset #success-start-start show_tps

execute if score #timer show_tps matches 3 if score #success-start show_tps matches 0 run tellraw @a[tag=show_tps] ["",{"text":"TPS-Anzeige:","bold":true,"underlined":true,"color":"dark_red"},"\n",{"text":"Leider können die TPS nicht angezeigt werden. Dies kann mehrere Ursachen haben. Hier die wahrscheinlichsten:","italic":true,"color":"red"},"\n",{"text":"1. Dies ist eine Singleplayer-Welt (in solchen ist diese Funktion leider nicht möglich)","color":"red"},"\n",{"text":"2. Dies ist eine Multiplayer-Welt, aber \"function-permission-level\" in der server.properties-Datei wurde auf 1 oder 2 gesetzt (Standard ist 2, es muss aber auf 3 oder 4 gesetzt sein)","color":"red"},"\n",{"text":"3. Dies ist eine Multiplayer-Welt, aber jemand hat zuvor \"/debug start\" genutzt. Wenn du Adminrechte hast, nutze \"/debug stop\", danach könnte es funktionieren.","color":"red"}]
execute if score #timer show_tps matches 3 if score #success-start show_tps matches 0 run scoreboard players reset #show_tps repeat
execute if score #timer show_tps matches 3 if score #success-start show_tps matches 0 run tag @a remove show_tps
execute if score #timer show_tps matches 3 if score #success-start show_tps matches 0 run scoreboard players reset #timer show_tps

#sollte Mojang jemals bei "execute store result" von "debug stop" auf Kommazahlen wechseln, in dieser function von int auf double wechseln
execute if score #timer show_tps matches 21 run function commands:tps/stop

execute if score #timer show_tps matches 22 run tellraw @a ["",{"text":"TPS-Anzeige:","bold":true,"underlined":true,"color":"dark_red"},"\n",{"text":"TPS abgefragt von: ","italic":true,"color":"red"},{"selector":"@a[tag=show_tps,limit=1]","italic":true,"color":"red"},"\n",{"text":"Aktuell ","color":"red"},{"nbt":"tps","storage":"timos-pack:data","bold":true,"color":"red"},{"text":" TPS (Ticks pro Sekunde)","bold":true,"color":"red"},{"text":"; Optimalwert ist 20","color":"red"}]

execute if score #timer show_tps matches 22.. run scoreboard players reset #show_tps repeat
execute if score #timer show_tps matches 22.. run tag @a remove show_tps
execute if score #timer show_tps matches 22.. run data remove storage timos-pack:data tps
execute if score #timer show_tps matches 22.. run scoreboard players reset #timer show_tps