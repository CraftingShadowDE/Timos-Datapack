#disable
execute unless score #toggle__SaplingGrow repeat matches 1 if score #SaplingGrow repeat matches 1 run tellraw @a "'SaplingGrow' feature disabled"
execute unless score #toggle__SaplingGrow repeat matches 1 if score #SaplingGrow repeat matches 1 store success score #toggle__SaplingGrow repeat run scoreboard players set #SaplingGrow repeat 0

#enable
execute unless score #toggle__SaplingGrow repeat matches 1 unless score #SaplingGrow repeat matches 1 run tellraw @a "'SaplingGrow' feature enabled"
execute unless score #toggle__SaplingGrow repeat matches 1 unless score #SaplingGrow repeat matches 1 store success score #toggle__SaplingGrow repeat run scoreboard players set #SaplingGrow repeat 1

#reset
scoreboard players reset #toggle__SaplingGrow repeat