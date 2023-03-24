# SP housing
## exit as player


# teleport to entry
execute at @e[tag=housing.entry,tag=housing.temporary_entry,tag=!face.north,tag=!face.east,tag=!face.south,tag=!face.west] run tp @s ~ ~ ~
execute at @e[tag=housing.entry,tag=housing.temporary_entry,tag=face.north] run tp @s ~ ~ ~ 180 0
execute at @e[tag=housing.entry,tag=housing.temporary_entry,tag=face.east] run tp @s ~ ~ ~ 270 0
execute at @e[tag=housing.entry,tag=housing.temporary_entry,tag=face.south] run tp @s ~ ~ ~ 0 0
execute at @e[tag=housing.entry,tag=housing.temporary_entry,tag=face.west] run tp @s ~ ~ ~ 90 0

# teleport forwards
tp @s ^ ^ ^1.5

# give player temporary timeout
tag @s add housing.player_timeout

# announce
tellraw @s ["",{"text":"[","color":"dark_gray"},{"text":"⌂","color":"#EF9139"},{"text":"] ","color":"dark_gray"},{"text":"You have left the house.","color":"#EF9139"}]
# sfx
execute at @e[tag=housing.entry,tag=housing.temporary_entry] run playsound minecraft:block.wooden_door.close player @s