# SP housing
## main loop


# assign entry points to index
execute as @e[tag=housing.entry,tag=housing.temporary_index] run function sp:system/housing/index

# allow players to enter houses
execute as @e[tag=housing.entry] at @s if entity @a[distance=..1.25] run function sp:system/housing/enter/go

# forceload locations
execute as @e[tag=housing.generic,tag=!housing.forceloaded] at @s run forceload add ~ ~
execute as @e[tag=housing.generic,tag=!housing.forceloaded] at @s run tag @s add housing.forceloaded

# player timeout
execute as @a[tag=housing.player_timeout] run function sp:system/housing/timeout/main

# housing settings
## /trigger housing
scoreboard players enable @a housing
execute as @a at @s if score @s housing.owner matches 1.. if score @s housing matches 1.. run function sp:system/housing/settings/go
execute as @a at @s unless score @s housing.owner matches 1.. if score @s housing matches 1.. run function sp:system/housing/settings/error