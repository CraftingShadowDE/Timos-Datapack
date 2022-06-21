#disable
execute unless score #toggle__spione repeat matches 1 if score #spione repeat matches 1 run tellraw @a "'spione' feature disabled"
execute unless score #toggle__spione repeat matches 1 if score #spione repeat matches 1 store success score #toggle__spione repeat run scoreboard players set #spione repeat 0

#enable
execute unless score #toggle__spione repeat matches 1 unless score #spione repeat matches 1 run tellraw @a "'spione' feature enabled"
execute unless score #toggle__spione repeat matches 1 unless score #spione repeat matches 1 store success score #toggle__spione repeat run scoreboard players set #spione repeat 1

#reset
scoreboard players reset #toggle__spione repeat