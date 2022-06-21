#disable
execute unless score #toggle__antibabyzombie repeat matches 1 if score #antibabyzombie repeat matches 1 run tellraw @a "'antibabyzombie' feature disabled"
execute unless score #toggle__antibabyzombie repeat matches 1 if score #antibabyzombie repeat matches 1 store success score #toggle__antibabyzombie repeat run scoreboard players set #antibabyzombie repeat 0

#enable
execute unless score #toggle__antibabyzombie repeat matches 1 unless score #antibabyzombie repeat matches 1 run tellraw @a "'antibabyzombie' feature enabled"
execute unless score #toggle__antibabyzombie repeat matches 1 unless score #antibabyzombie repeat matches 1 store success score #toggle__antibabyzombie repeat run scoreboard players set #antibabyzombie repeat 1

#reset
scoreboard players reset #toggle__antibabyzombie repeat