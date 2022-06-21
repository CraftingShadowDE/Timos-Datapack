#disable
execute unless score #toggle__recipes repeat matches 1 if score #recipes repeat matches 1 run tellraw @a "'recipes' feature disabled"
execute unless score #toggle__recipes repeat matches 1 if score #recipes repeat matches 1 store success score #toggle__recipes repeat run scoreboard players set #recipes repeat 0

#enable
execute unless score #toggle__recipes repeat matches 1 unless score #recipes repeat matches 1 run tellraw @a "'recipes' feature enabled"
execute unless score #toggle__recipes repeat matches 1 unless score #recipes repeat matches 1 store success score #toggle__recipes repeat run scoreboard players set #recipes repeat 1

#reset
scoreboard players reset #toggle__recipes repeat