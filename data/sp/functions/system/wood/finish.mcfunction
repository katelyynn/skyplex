# SP generic wood finish


# reset blocks
execute if entity @s[tag=wood.oak_log] run setblock ~ ~ ~ oak_log
execute if entity @s[tag=wood.spruce_log] run setblock ~ ~ ~ spruce_log
execute if entity @s[tag=wood.birch_log] run setblock ~ ~ ~ birch_log
execute if entity @s[tag=wood.jungle_log] run setblock ~ ~ ~ jungle_log
execute if entity @s[tag=wood.acacia_log] run setblock ~ ~ ~ acacia_log
execute if entity @s[tag=wood.dark_oak_log] run setblock ~ ~ ~ dark_oak_log
execute if entity @s[tag=wood.mangrove_log] run setblock ~ ~ ~ mangrove_log

# create particle & sfx
particle minecraft:block minecraft:oak_log ~ ~ ~ 0 0 0 0.12 2
playsound block.wood.fall block @a

# reset scores
scoreboard players set @s wood.state 1
scoreboard players reset @s wood.timer
tag @s remove wood.timer