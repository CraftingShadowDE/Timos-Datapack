#disable
execute unless score #toggle__vlgr-emer repeat matches 1 if score #vlgr-emer repeat matches 1 run tellraw @a "'vlgr-emer' feature disabled"
execute unless score #toggle__vlgr-emer repeat matches 1 if score #vlgr-emer repeat matches 1 store success score #toggle__vlgr-emer repeat run scoreboard players set #vlgr-emer repeat 0

#enable
execute unless score #toggle__vlgr-emer repeat matches 1 unless score #vlgr-emer repeat matches 1 run tellraw @a "'vlgr-emer' feature enabled"
execute unless score #toggle__vlgr-emer repeat matches 1 unless score #vlgr-emer repeat matches 1 store success score #toggle__vlgr-emer repeat run scoreboard players set #vlgr-emer repeat 1

#reset
scoreboard players reset #toggle__vlgr-emer repeat