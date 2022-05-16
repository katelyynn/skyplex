# show player's level
## depending on tool


# store current level goal
## mining
execute if score @s lvl.mine matches 0 store result score @s lvl.mine.goal run scoreboard players get mine.0 lvl.goal
execute if score @s lvl.mine matches 1 store result score @s lvl.mine.goal run scoreboard players get mine.1 lvl.goal
execute if score @s lvl.mine matches 2 store result score @s lvl.mine.goal run scoreboard players get mine.2 lvl.goal
execute if score @s lvl.mine matches 3 store result score @s lvl.mine.goal run scoreboard players get mine.3 lvl.goal
## fishing
execute if score @s lvl.fish matches 0 store result score @s lvl.fish.goal run scoreboard players get fish.0 lvl.goal
execute if score @s lvl.fish matches 1 store result score @s lvl.fish.goal run scoreboard players get fish.1 lvl.goal
execute if score @s lvl.fish matches 2 store result score @s lvl.fish.goal run scoreboard players get fish.2 lvl.goal
execute if score @s lvl.fish matches 3 store result score @s lvl.fish.goal run scoreboard players get fish.3 lvl.goal


# none
## (hides actionbar)
execute unless data entity @s SelectedItem run title @s actionbar ""


# display current level
## mining
execute unless entity @s[nbt=!{SelectedItem:{id:"minecraft:wooden_pickaxe"}},nbt=!{SelectedItem:{id:"minecraft:stone_pickaxe"}},nbt=!{SelectedItem:{id:"minecraft:golden_pickaxe"}},nbt=!{SelectedItem:{id:"minecraft:iron_pickaxe"}},nbt=!{SelectedItem:{id:"minecraft:diamond_pickaxe"}},nbt=!{SelectedItem:{id:"minecraft:netherite_pickaxe"}}] run title @s actionbar ["",{"text":"Mining ","color":"gold","bold":true},{"score":{"name":"@s","objective":"lvl.mine"},"color":"gold","bold":true},{"text":"    "},{"score":{"name":"@s","objective":"lvl.mine.progress"}},{"text":"/"},{"score":{"name":"@s","objective":"lvl.mine.goal"}}]
## fishing
execute unless entity @s[nbt=!{SelectedItem:{id:"minecraft:fishing_rod"}}] run title @s actionbar ["",{"text":"Fishing ","color":"gold","bold":true},{"score":{"name":"@s","objective":"lvl.fish"},"color":"gold","bold":true},{"text":"    "},{"score":{"name":"@s","objective":"lvl.fish.progress"}},{"text":"/"},{"score":{"name":"@s","objective":"lvl.fish.goal"}}]
