# SP housing
## enter as owner


# teleport to house
execute at @e[tag=housing.location,tag=housing.temporary_location] run tp @s ~ ~ ~

# announce
tellraw @s ["",{"text":"[","color":"dark_gray"},{"text":"⌂","color":"#EF9139"},{"text":"] ","color":"dark_gray"},{"text":"You have entered your house. \u0020 ","color":"#EF9139"},{"text":"[Open settings]","color":"green","clickEvent":{"action":"run_command","value":"/trigger housing"}}]
# sfx
playsound minecraft:block.wooden_door.open master @s
playsound minecraft:entity.allay.item_taken master @s