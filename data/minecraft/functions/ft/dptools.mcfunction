#disable
execute unless score #toggle__dptools repeat matches 1 if score #dptools repeat matches 1 run tellraw @a "'dptools' feature disabled"
execute unless score #toggle__dptools repeat matches 1 if score #dptools repeat matches 1 store success score #toggle__dptools repeat run scoreboard players set #dptools repeat 0

#enable
execute unless score #toggle__dptools repeat matches 1 unless score #dptools repeat matches 1 run tellraw @a "'dptools' feature enabled"
execute unless score #toggle__dptools repeat matches 1 unless score #dptools repeat matches 1 store success score #toggle__dptools repeat run scoreboard players set #dptools repeat 1

#reset
scoreboard players reset #toggle__dptools repeat