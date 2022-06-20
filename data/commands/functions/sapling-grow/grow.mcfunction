#detect sapling type
execute if block ~ ~ ~ minecraft:oak_sapling run scoreboard players set @s timo_sapling-type 1
execute if block ~ ~ ~ minecraft:spruce_sapling run scoreboard players set @s timo_sapling-type 2
execute if block ~ ~ ~ minecraft:birch_sapling run scoreboard players set @s timo_sapling-type 3
execute if block ~ ~ ~ minecraft:jungle_sapling run scoreboard players set @s timo_sapling-type 4
execute if block ~ ~ ~ minecraft:acacia_sapling run scoreboard players set @s timo_sapling-type 5
execute if block ~ ~ ~ minecraft:dark_oak_sapling run scoreboard players set @s timo_sapling-type 6
execute if block ~ ~ ~ minecraft:azalea run scoreboard players set @s timo_sapling-type 7
execute if block ~ ~ ~ minecraft:flowering_azalea run scoreboard players set @s timo_sapling-type 8
execute if block ~ ~ ~ minecraft:mangrove_propagule run scoreboard players set @s timo_sapling-type 9

#detect Actor type
execute if entity @s[tag=SaplingGrowActor1x1] run scoreboard players set @s timo_actorType 1
execute if entity @s[tag=SaplingGrowActor2x2] run scoreboard players set @s timo_actorType 2


#set 1x1's
execute if score @s timo_actorType matches 1 run setblock ~ ~ ~ air
execute if score @s timo_actorType matches 1 if score @s timo_sapling-type matches 1 store success score @s timo_growSuccess run place feature oak
execute if score @s timo_actorType matches 1 if score @s timo_sapling-type matches 2 store success score @s timo_growSuccess run place feature spruce
execute if score @s timo_actorType matches 1 if score @s timo_sapling-type matches 3 store success score @s timo_growSuccess run place feature birch
execute if score @s timo_actorType matches 1 if score @s timo_sapling-type matches 4 store success score @s timo_growSuccess run place feature jungle_tree_no_vine
execute if score @s timo_actorType matches 1 if score @s timo_sapling-type matches 5 store success score @s timo_growSuccess run place feature acacia
#dark_oak is 2x2 only
execute if score @s timo_actorType matches 1 if score @s timo_sapling-type matches 7 store success score @s timo_growSuccess run setblock ~ ~ ~ flowering_azalea
execute if score @s timo_actorType matches 1 if score @s timo_sapling-type matches 8 store success score @s timo_growSuccess run place feature azalea_tree
execute if score @s timo_actorType matches 1 if score @s timo_sapling-type matches 9 store success score @s timo_growSuccess run place feature mangrove

#if unsuccessful, replace saplings (1x1)
execute if score @s timo_actorType matches 1 if score @s timo_growSuccess matches 0 if score @s timo_sapling-type matches 1 run setblock ~ ~ ~ oak_sapling[stage=1]
execute if score @s timo_actorType matches 1 if score @s timo_growSuccess matches 0 if score @s timo_sapling-type matches 2 run setblock ~ ~ ~ spruce_sapling[stage=1]
execute if score @s timo_actorType matches 1 if score @s timo_growSuccess matches 0 if score @s timo_sapling-type matches 3 run setblock ~ ~ ~ birch_sapling[stage=1]
execute if score @s timo_actorType matches 1 if score @s timo_growSuccess matches 0 if score @s timo_sapling-type matches 4 run setblock ~ ~ ~ jungle_sapling[stage=1]
execute if score @s timo_actorType matches 1 if score @s timo_growSuccess matches 0 if score @s timo_sapling-type matches 5 run setblock ~ ~ ~ acacia_sapling[stage=1]
#dark_oak is 2x2 only
execute if score @s timo_actorType matches 1 if score @s timo_growSuccess matches 0 if score @s timo_sapling-type matches 7 run setblock ~ ~ ~ azalea
execute if score @s timo_actorType matches 1 if score @s timo_growSuccess matches 0 if score @s timo_sapling-type matches 8 run setblock ~ ~ ~ flowering_azalea
execute if score @s timo_actorType matches 1 if score @s timo_growSuccess matches 0 if score @s timo_sapling-type matches 9 run setblock ~ ~ ~ mangrove_propagule[stage=1]


#set 2x2's
execute if score @s timo_actorType matches 2 run fill ~ ~ ~ ~1 ~ ~1 air
execute if score @s timo_actorType matches 2 if score @s timo_sapling-type matches 2 store success score @s timo_growSuccess run place feature mega_spruce
execute if score @s timo_actorType matches 2 if score @s timo_sapling-type matches 4 store success score @s timo_growSuccess run place feature mega_jungle_tree
execute if score @s timo_actorType matches 2 if score @s timo_sapling-type matches 6 store success score @s timo_growSuccess run place feature dark_oak

#if unsuccessful, replace saplings (2x2)
execute if score @s timo_actorType matches 2 if score @s timo_growSuccess matches 0 if score @s timo_sapling-type matches 2 run fill ~ ~ ~ ~1 ~ ~1 spruce_sapling[stage=1]
execute if score @s timo_actorType matches 2 if score @s timo_growSuccess matches 0 if score @s timo_sapling-type matches 4 run fill ~ ~ ~ ~1 ~ ~1 jungle_sapling[stage=1]
execute if score @s timo_actorType matches 2 if score @s timo_growSuccess matches 0 if score @s timo_sapling-type matches 6 run fill ~ ~ ~ ~1 ~ ~1 dark_oak_sapling[stage=1]