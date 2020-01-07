# summon helper cloud and shooting entity
summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["qg.slimedirectionhelp"]}
execute anchored eyes positioned ^ ^ ^1 run summon minecraft:slime ~ ~ ~ {Tags:["qg.slimedirectionhelp"]}

# add tag to player to find direction
tag @s add qg.executedirection

# tp helper cloud to 0 0 0 to find vector and transfer pos to shooting entity
execute as @e[type=minecraft:area_effect_cloud,limit=1,tag=qg.slimedirectionhelp] run tp @s 0.0 0.0 0.0
execute as @e[type=minecraft:area_effect_cloud,limit=1,tag=qg.slimedirectionhelp] run execute at @s rotated as @e[tag=qg.executedirection,limit=1] run teleport @s ^ ^ ^5
execute as @e[type=minecraft:area_effect_cloud,limit=1,tag=qg.slimedirectionhelp] run data modify entity @e[type=minecraft:slime,tag=qg.slimedirectionhelp,limit=1] Motion set from entity @s Pos

# remove tags
tag @s remove qg.executedirection
tag @e remove qg.slimedirectionhelp