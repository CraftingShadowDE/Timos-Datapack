#disable
execute unless score #toggle__hiddennickname repeat matches 1 if score #hiddennickname repeat matches 1 run tellraw @a "'hiddennickname' feature disabled"
execute unless score #toggle__hiddennickname repeat matches 1 if score #hiddennickname repeat matches 1 store success score #toggle__hiddennickname repeat run scoreboard players set #hiddennickname repeat 0

#enable
execute unless score #toggle__hiddennickname repeat matches 1 unless score #hiddennickname repeat matches 1 run tellraw @a "'hiddennickname' feature enabled"
execute unless score #toggle__hiddennickname repeat matches 1 unless score #hiddennickname repeat matches 1 store success score #toggle__hiddennickname repeat run scoreboard players set #hiddennickname repeat 1

#reset
scoreboard players reset #toggle__hiddennickname repeat