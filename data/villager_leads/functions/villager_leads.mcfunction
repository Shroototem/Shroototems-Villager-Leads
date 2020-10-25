execute as @a[scores={SDP_VillagerLead=1..},nbt={SelectedItem:{id:"minecraft:lead"}}] at @s if entity @e[distance=..5,type=villager,limit=1,sort=nearest,nbt=!{Leash:{}}] run tag @s add Villager_Lead
clear @a[tag=Villager_Lead] minecraft:lead 1
execute as @a[tag=Villager_Lead] at @s run data modify entity @e[distance=..5,type=villager,limit=1,sort=nearest,nbt=!{Leash:{}}] Leash set from entity @s {}
tag @a[tag=Villager_Lead] remove Villager_Lead
scoreboard players reset @a[scores={SDP_VillagerLead=1..}] SDP_VillagerLead
