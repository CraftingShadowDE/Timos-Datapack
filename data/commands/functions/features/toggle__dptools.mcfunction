#disable
execute unless score #toggle__aptools repeat matches 1 if score #aptools repeat matches 1 run tellraw @a "'aptools' feature disabled"
execute unless score #toggle__aptools repeat matches 1 if score #aptools repeat matches 1 store success score #toggle__aptools repeat run scoreboard players set #aptools repeat 0

#enable
execute unless score #toggle__aptools repeat matches 1 unless score #aptools repeat matches 1 run tellraw @a "'aptools' feature enabled"
execute unless score #toggle__aptools repeat matches 1 unless score #aptools repeat matches 1 store success score #toggle__aptools repeat run scoreboard players set #aptools repeat 1

#reset
scoreboard players reset #toggle__aptools repeat