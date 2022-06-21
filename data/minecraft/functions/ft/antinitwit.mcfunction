#disable
execute unless score #toggle__antinitwit repeat matches 1 if score #antinitwit repeat matches 1 run tellraw @a "'antinitwit' feature disabled"
execute unless score #toggle__antinitwit repeat matches 1 if score #antinitwit repeat matches 1 store success score #toggle__antinitwit repeat run scoreboard players set #antinitwit repeat 0

#enable
execute unless score #toggle__antinitwit repeat matches 1 unless score #antinitwit repeat matches 1 run tellraw @a "'antinitwit' feature enabled"
execute unless score #toggle__antinitwit repeat matches 1 unless score #antinitwit repeat matches 1 store success score #toggle__antinitwit repeat run scoreboard players set #antinitwit repeat 1

#reset
scoreboard players reset #toggle__antinitwit repeat