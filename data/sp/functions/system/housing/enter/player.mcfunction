# SP housing
## enter as player
## (if allowed via config)


# teleport to house
execute at @e[tag=housing.location,tag=housing.temporary_location] run tp @s ~ ~ ~

# announce
tellraw @s {"text":"you are now in house","color":"yellow"}