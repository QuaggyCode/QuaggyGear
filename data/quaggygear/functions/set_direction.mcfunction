# teleport the vector to 0 0 0
tp @s 0.0 0.0 0.0

# get the correct direction values in the pos of the vector entity
execute at @s rotated as @e[tag=executor,limit=1] run teleport @s ^ ^ ^1

# set the direction
data modify entity @e[type=minecraft:fireball,tag=temp,limit=1] direction set from entity @s Pos
data modify entity @e[type=minecraft:fireball,tag=temp,limit=1] Motion set from entity @s Pos
data modify entity @e[type=minecraft:fireball,tag=temp,limit=1] power set from entity @s Pos