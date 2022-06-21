#disable
execute unless score #toggle__position-engine repeat matches 1 if score #position-engine repeat matches 1 run tellraw @a "'position-engine' feature disabled"
execute unless score #toggle__position-engine repeat matches 1 if score #position-engine repeat matches 1 store success score #toggle__position-engine repeat run scoreboard players set #position-engine repeat 0

#enable
execute unless score #toggle__position-engine repeat matches 1 unless score #position-engine repeat matches 1 run tellraw @a "'position-engine' feature enabled"
execute unless score #toggle__position-engine repeat matches 1 unless score #position-engine repeat matches 1 store success score #toggle__position-engine repeat run scoreboard players set #position-engine repeat 1

#reset
scoreboard players reset #toggle__position-engine repeat