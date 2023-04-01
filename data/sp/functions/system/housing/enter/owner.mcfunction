# SP housing
## enter as owner


# teleport to house
execute at @e[tag=housing.location,tag=housing.temporary_location,tag=!face.north,tag=!face.east,tag=!face.south,tag=!face.west] run tp @s ~ ~ ~
execute at @e[tag=housing.location,tag=housing.temporary_location,tag=face.north] run tp @s ~ ~ ~ 180 0
execute at @e[tag=housing.location,tag=housing.temporary_location,tag=face.east] run tp @s ~ ~ ~ 270 0
execute at @e[tag=housing.location,tag=housing.temporary_location,tag=face.south] run tp @s ~ ~ ~ 0 0
execute at @e[tag=housing.location,tag=housing.temporary_location,tag=face.west] run tp @s ~ ~ ~ 90 0

# give player temporary timeout
tag @s add housing.player_timeout

# resistance
effect give @s minecraft:resistance 1 255 true

# announce
tellraw @s ["",{"text":"[","color":"dark_gray"},{"text":"⌂","color":"#EF9139"},{"text":"] ","color":"dark_gray"},{"text":"You have entered your house. \u0020 ","color":"#EF9139"},{"text":"[Open settings]","color":"green","clickEvent":{"action":"run_command","value":"/trigger housing"}}]
# sfx
execute at @e[tag=housing.location,tag=housing.temporary_location] run playsound minecraft:block.wooden_door.open player @a
execute at @e[tag=housing.location,tag=housing.temporary_location] run playsound minecraft:block.bell.use player @a