# SP housing
## main loop


# assign entry points to index
execute as @e[tag=housing.entry,tag=housing.temporary_index] run function sp:system/housing/index

# forceload locations
execute as @e[tag=housing.generic,tag=!housing.forceloaded] at @s run forceload add ~ ~
execute as @e[tag=housing.generic,tag=!housing.forceloaded] at @s run tag @s add housing.forceloaded