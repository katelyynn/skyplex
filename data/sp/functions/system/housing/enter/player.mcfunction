# SP housing
## enter as player
## (if allowed via config)


# teleport to house
execute at @e[tag=housing.location,tag=housing.temporary_location] run tp @s ~ ~ ~

# give player temporary timeout
tag @s add housing.player_timeout

# announce
tellraw @s ["",{"text":"[","color":"dark_gray"},{"text":"⌂","color":"#EF9139"},{"text":"] ","color":"dark_gray"},{"text":"You have entered a house.","color":"#EF9139"}]
# sfx
execute at @e[tag=housing.location,tag=housing.temporary_location] run playsound minecraft:block.wooden_door.open player @s