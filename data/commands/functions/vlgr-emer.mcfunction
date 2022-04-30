execute as @a[tag=vlgr-emer] unless data entity @p SelectedItem{id:"minecraft:emerald"} run tag @p remove vlgr-emer

execute as @a if data entity @p SelectedItem{id:"minecraft:emerald"} run tag @a[nbt={SelectedItem:{id:"minecraft:emerald"}}] add vlgr-emer

execute as @a[tag=vlgr-emer] at @p as @e[type=minecraft:villager,distance=2..10] at @s run tp @s ^ ^ ^0.1 facing entity @a[tag=vlgr-emer,sort=nearest,limit=1] feet