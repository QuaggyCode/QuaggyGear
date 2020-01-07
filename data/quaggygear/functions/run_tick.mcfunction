# right click carrot on a stick detection
scoreboard players set @a QG.WeaponType 0
scoreboard players set @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Wand:1}}}] QG.WeaponType 1
scoreboard players set @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Wand:2}}}] QG.WeaponType 2
scoreboard players set @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Wand:3}}}] QG.WeaponType 3

# refer to different item mcfunctions for abilities
execute as @a[scores={QG.RightClick=1..,QG.WeaponType=1}] at @s run function quaggygear:wand_of_fire_charge
execute as @a[scores={QG.RightClick=1..,QG.WeaponType=2}] at @s run function quaggygear:wand_of_slime
execute as @a[scores={QG.RightClick=1..,QG.WeaponType=3}] at @s run function quaggygear:wand_of_magic_missile

# refer to different item mcfunctions for durability
execute as @a[scores={QG.RightClick=1..,QG.WeaponType=1},gamemode=!creative] at @s run function quaggygear:wand_durability

scoreboard players set @a[scores={QG.RightClick=1..}] QG.RightClick 0