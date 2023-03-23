# SP housing
## enter as player
## (if allowed via config)


# teleport to house
execute at @e[tag=housing.location,tag=housing.temporary_location] run tp @s ~ ~ ~

# announce
tellraw @s ["",{"text":"[","color":"dark_gray"},{"text":"⌂","color":"#EF9139"},{"text":"] ","color":"dark_gray"},{"selector":"@a[tag=housing.temporary_entry,limit=1]","color":"#EF9139"},{"text":"'s house.","color":"#EF9139"}]
# sfx
playsound minecraft:block.wooden_door.open master @s