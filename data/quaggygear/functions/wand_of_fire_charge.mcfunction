# summon helper cloud and shooting entity
summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["qg.firechargetemp"]}
execute anchored eyes positioned ^ ^ ^1 run summon minecraft:fireball ~ ~ ~ {ExplosionPower:1,Tags:["qg.firechargetemp"],direction:[0.0,0.0,0.0]}

# add tag to player to find direction
tag @s add qg.executedirection

# tp helper cloud to 0 0 0 to find vector and transfer pos to shooting entity
execute as @e[type=minecraft:area_effect_cloud,limit=1,tag=qg.firechargetemp] run tp @s 0.0 0.0 0.0
execute as @e[type=minecraft:area_effect_cloud,limit=1,tag=qg.firechargetemp] run execute at @s rotated as @e[tag=qg.executedirection,limit=1] run teleport @s ^ ^ ^.3
execute as @e[type=minecraft:area_effect_cloud,limit=1,tag=qg.firechargetemp] run data modify entity @e[type=minecraft:fireball,tag=qg.firechargetemp,limit=1] power set from entity @s Pos

# remove tags
tag @s remove qg.executedirection
tag @e remove qg.firechargetemp