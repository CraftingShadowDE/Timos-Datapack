#disable
execute unless score #toggle__keepInventory repeat matches 1 if score #keepInventory repeat matches 1 run tellraw @a "'keepInventory' feature [only triggered after /reload] disabled"
execute unless score #toggle__keepInventory repeat matches 1 if score #keepInventory repeat matches 1 store success score #toggle__keepInventory repeat run scoreboard players set #keepInventory repeat 0

#enable
execute unless score #toggle__keepInventory repeat matches 1 unless score #keepInventory repeat matches 1 run tellraw @a "'keepInventory' feature [only triggered after /reload] enabled"
execute unless score #toggle__keepInventory repeat matches 1 unless score #keepInventory repeat matches 1 store success score #toggle__keepInventory repeat run scoreboard players set #keepInventory repeat 1

#reset
scoreboard players reset #toggle__keepInventory repeat