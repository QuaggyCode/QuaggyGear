# WeaponType tracks the type of CoaS a player is holding
# RightClick detects right clicking
# WandOneDura keeps track of wand durabilities, fake players keep scores to subtract the durabilities

# remove scoreboards and forceload (from last unload)
forceload remove 0 0 0 0
scoreboard objectives remove QG.RightClick
scoreboard objectives remove QG.WeaponType
scoreboard objectives remove QG.WandOneDura

# different carrot on a stick item scoreboards
forceload add 0 0 0 0
setblock 0 1 0 minecraft:bedrock
scoreboard objectives add QG.RightClick minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add QG.WeaponType dummy
scoreboard objectives add QG.WandOneDura dummy