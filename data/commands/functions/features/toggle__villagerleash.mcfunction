#disable
execute unless score #toggle__villagerleash repeat matches 1 if score #villagerleash repeat matches 1 run tellraw @a "'villagerleash' feature disabled"
execute unless score #toggle__villagerleash repeat matches 1 if score #villagerleash repeat matches 1 store success score #toggle__villagerleash repeat run scoreboard players set #villagerleash repeat 0

#enable
execute unless score #toggle__villagerleash repeat matches 1 unless score #villagerleash repeat matches 1 run tellraw @a "'villagerleash' feature enabled"
execute unless score #toggle__villagerleash repeat matches 1 unless score #villagerleash repeat matches 1 store success score #toggle__villagerleash repeat run scoreboard players set #villagerleash repeat 1

#reset
scoreboard players reset #toggle__villagerleash repeat