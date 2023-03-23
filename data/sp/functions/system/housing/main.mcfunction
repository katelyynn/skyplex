# SP housing
## main loop


# assign entry points to index
execute as @e[tag=housing.entry,tag=housing.temporary_index] run function sp:system/housing/index

# allow players to enter houses
execute as @e[tag=housing.entry] at @s if entity @a[distance=..1.25] run function sp:system/housing/enter/go

# forceload locations
execute as @e[tag=housing.generic,tag=!housing.forceloaded] at @s run forceload add ~ ~
execute as @e[tag=housing.generic,tag=!housing.forceloaded] at @s run tag @s add housing.forceloaded