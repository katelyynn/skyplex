# show player's level
## depending on tool


## TODO: run functions based on tool
## & calculate levels on fly


# store current level goal
## farming
execute if score @s lvl.farm matches 0 store result score @s lvl.farm.goal run scoreboard players get farm.0 lvl.goal
execute if score @s lvl.farm matches 1 store result score @s lvl.farm.goal run scoreboard players get farm.1 lvl.goal
execute if score @s lvl.farm matches 2 store result score @s lvl.farm.goal run scoreboard players get farm.2 lvl.goal
execute if score @s lvl.farm matches 3 store result score @s lvl.farm.goal run scoreboard players get farm.3 lvl.goal


# none
## (hides actionbar)
execute unless data entity @s SelectedItem run title @s actionbar ""


# display current level
## mining
execute unless entity @s[nbt=!{SelectedItem:{id:"minecraft:wooden_pickaxe"}},nbt=!{SelectedItem:{id:"minecraft:stone_pickaxe"}},nbt=!{SelectedItem:{id:"minecraft:golden_pickaxe"}},nbt=!{SelectedItem:{id:"minecraft:iron_pickaxe"}},nbt=!{SelectedItem:{id:"minecraft:diamond_pickaxe"}},nbt=!{SelectedItem:{id:"minecraft:netherite_pickaxe"}}] run function sp:level/tool/mine
## fishing
execute unless entity @s[nbt=!{SelectedItem:{id:"minecraft:fishing_rod"}}] run function sp:level/tool/fish
## farming
execute unless entity @s[nbt=!{SelectedItem:{id:"minecraft:wooden_hoe"}},nbt=!{SelectedItem:{id:"minecraft:stone_hoe"}},nbt=!{SelectedItem:{id:"minecraft:golden_hoe"}},nbt=!{SelectedItem:{id:"minecraft:iron_hoe"}},nbt=!{SelectedItem:{id:"minecraft:diamond_hoe"}},nbt=!{SelectedItem:{id:"minecraft:netherite_hoe"}}] run title @s actionbar ["",{"text":"Farming ","color":"gold","bold":true},{"score":{"name":"@s","objective":"lvl.farm"},"color":"gold","bold":true},{"text":"    "},{"score":{"name":"@s","objective":"lvl.farm.progress"}},{"text":"/"},{"score":{"name":"@s","objective":"lvl.farm.goal"}}]
