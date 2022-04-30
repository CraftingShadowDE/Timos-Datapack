execute as @e[tag=anchor,tag=!nograp] at @s as @a[distance=..20] if score @s UUID = @s UUID at @e[tag=anchor,limit=1,sort=nearest,distance=..1] run function dptools:motion/grapple/anchormovement1
execute as @e[tag=anchor] at @s at @a[distance=..1] if score @p UUID = @s UUID at @s run effect give @p minecraft:levitation 1 255 true
execute as @e[tag=anchor,scores={gtime=5..},nbt={OnGround:1b}] at @s run function dptools:motion/killanchor
execute as @e[tag=anchor,scores={gtime=5..}] at @s unless block ~ ~-.1 ~ air run function dptools:motion/killanchor



scoreboard players add @e[tag=anchor] gtime 1