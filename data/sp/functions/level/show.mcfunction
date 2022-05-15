# show player's level
## depending on tool


# store current level goal
## mining
execute if score @s lvl.mine matches 1 store result score @s lvl.goal run scoreboard players get mine.1 lvl.goal
execute if score @s lvl.mine matches 2 store result score @s lvl.goal run scoreboard players get mine.2 lvl.goal
## fishing
execute if score @s lvl.fish matches 1 store result score @s lvl.goal run scoreboard players get fish.1 lvl.goal
execute if score @s lvl.fish matches 2 store result score @s lvl.goal run scoreboard players get fish.2 lvl.goal


# none
## (hides actionbar)
execute unless data entity @s SelectedItem run title @s actionbar ""


# mine
execute unless entity @s[nbt=!{SelectedItem:{id:"minecraft:wooden_pickaxe"}},nbt=!{SelectedItem:{id:"minecraft:stone_pickaxe"}},nbt=!{SelectedItem:{id:"minecraft:golden_pickaxe"}},nbt=!{SelectedItem:{id:"minecraft:iron_pickaxe"}},nbt=!{SelectedItem:{id:"minecraft:diamond_pickaxe"}},nbt=!{SelectedItem:{id:"minecraft:netherite_pickaxe"}}] run title @s actionbar ["",{"text":"Mining "},{"text":"LV. ","color":"gold","bold":true},{"score":{"name":"@s","objective":"lvl.mine"},"color":"gold","bold":true},{"text":"    "},{"score":{"name":"@s","objective":"lvl.mine.progress"}},{"text":"/"},{"score":{"name":"@s","objective":"lvl.goal"}}]

