# thanks Lilith for the shulker box trick
# https://discordapp.com/channels/154777837382008833/157097006500806656/655840284189392902

# A shulker box is placed somewhere.
setblock 0 0 0 minecraft:brown_shulker_box

# First, we copy the item to a storage.
data modify storage qg:firewand Item set from entity @s SelectedItem

# modifiying the item's durability
scoreboard players set FireWandUse QG.WandOneDura 5
execute store result score FireWandDmg QG.WandOneDura run data get entity @s SelectedItem.tag.Damage
scoreboard players operation FireWandDmg QG.WandOneDura += FireWandUse QG.WandOneDura

# actually damaging item in shulker box
execute store result storage qg:firewand Item.tag.Damage int 1 run scoreboard players get FireWandDmg QG.WandOneDura

# Third, we copy the storage item to the shulker box. Because 'Slot' is 0, the item will be in the first slot.
data modify block 0 0 0 Items append from storage qg:firewand Item

# Then, we move the shulker box item back to the player's inventory.
loot replace entity @s weapon.mainhand 1 mine 0 0 0 minecraft:air{drop_contents: 1b}

# checking for negative durability to remove the item, can clean this up into a new mcfunction later!
execute if score FireWandDmg QG.WandOneDura matches 30 run replaceitem entity @s weapon.mainhand minecraft:air
execute if score FireWandDmg QG.WandOneDura matches 30 run playsound minecraft:entity.item.break player @s ~ ~ ~ 1
execute if score FireWandDmg QG.WandOneDura matches 30 run particle minecraft:block minecraft:oak_log ~ ~2 ~ 0.3 0.3 0.3 1 10