# SP housing
## exit as player


# teleport to entry
execute at @e[tag=housing.entry,tag=housing.temporary_entry] run tp @s ~ ~ ~

# give player temporary timeout
tag @s add housing.player_timeout

# announce
tellraw @s ["",{"text":"[","color":"dark_gray"},{"text":"⌂","color":"#EF9139"},{"text":"] ","color":"dark_gray"},{"text":"You have left the house.","color":"#EF9139"}]
# sfx
execute at @e[tag=housing.entry,tag=housing.temporary_entry] run playsound minecraft:block.wooden_door.close player @s