#disable
execute unless score #toggle__antiinfested repeat matches 1 if score #antiinfested repeat matches 1 run tellraw @a "'antiinfested' feature disabled"
execute unless score #toggle__antiinfested repeat matches 1 if score #antiinfested repeat matches 1 store success score #toggle__antiinfested repeat run scoreboard players set #antiinfested repeat 0

#enable
execute unless score #toggle__antiinfested repeat matches 1 unless score #antiinfested repeat matches 1 run tellraw @a "'antiinfested' feature enabled"
execute unless score #toggle__antiinfested repeat matches 1 unless score #antiinfested repeat matches 1 store success score #toggle__antiinfested repeat run scoreboard players set #antiinfested repeat 1

#reset
scoreboard players reset #toggle__antiinfested repeat