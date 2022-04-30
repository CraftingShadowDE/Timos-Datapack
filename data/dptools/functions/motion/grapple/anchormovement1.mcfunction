tag @s add rider
execute as @e[tag=anchor,limit=1,sort=nearest,distance=..1] at @s run function dptools:motion/grapple/anchormovement
tp @s ~ ~ ~
tag @s remove rider
