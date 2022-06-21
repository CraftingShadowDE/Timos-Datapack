#disable
execute unless score #toggle__armor_statues repeat matches 1 if score #armor_statues repeat matches 1 run tellraw @a "'armor_statues' feature disabled"
execute unless score #toggle__armor_statues repeat matches 1 if score #armor_statues repeat matches 1 store success score #toggle__armor_statues repeat run scoreboard players set #armor_statues repeat 0

#enable
execute unless score #toggle__armor_statues repeat matches 1 unless score #armor_statues repeat matches 1 run tellraw @a "'armor_statues' feature enabled"
execute unless score #toggle__armor_statues repeat matches 1 unless score #armor_statues repeat matches 1 store success score #toggle__armor_statues repeat run scoreboard players set #armor_statues repeat 1

#reset
scoreboard players reset #toggle__armor_statues repeat