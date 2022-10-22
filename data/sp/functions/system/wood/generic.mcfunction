# SP generic wood loop


# range check
execute unless score @s wood.state matches 1..3 run scoreboard players set @s wood.state 1

# wood present (state 1 -> 2)
execute if block ~ ~ ~ air if score @s wood.state matches 1 run function sp:system/wood/state_1


# timer finished
execute if entity @s[tag=wood.oak_log] if score @s wood.timer >= wood.oak_log internal run function sp:system/wood/finish
execute if entity @s[tag=wood.spruce_log] if score @s wood.timer >= wood.spruce_log internal run function sp:system/wood/finish
execute if entity @s[tag=wood.birch_log] if score @s wood.timer >= wood.birch_log internal run function sp:system/wood/finish
execute if entity @s[tag=wood.jungle_log] if score @s wood.timer >= wood.jungle_log internal run function sp:system/wood/finish
execute if entity @s[tag=wood.acacia_log] if score @s wood.timer >= wood.acacia_log internal run function sp:system/wood/finish
execute if entity @s[tag=wood.dark_oak_log] if score @s wood.timer >= wood.dark_oak_log internal run function sp:system/wood/finish
execute if entity @s[tag=wood.mangrove_log] if score @s wood.timer >= wood.mangrove_log internal run function sp:system/wood/finish