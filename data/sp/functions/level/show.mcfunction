# show player's level
## depending on tool


# calculate level goals
function sp:level/calc/mine
function sp:level/calc/fish
function sp:level/calc/farm


# none
## (hides actionbar)
execute unless data entity @s SelectedItem run title @s actionbar ""

# display current level
## mining
execute unless entity @s[nbt=!{SelectedItem:{id:"minecraft:wooden_pickaxe"}},nbt=!{SelectedItem:{id:"minecraft:stone_pickaxe"}},nbt=!{SelectedItem:{id:"minecraft:golden_pickaxe"}},nbt=!{SelectedItem:{id:"minecraft:iron_pickaxe"}},nbt=!{SelectedItem:{id:"minecraft:diamond_pickaxe"}},nbt=!{SelectedItem:{id:"minecraft:netherite_pickaxe"}}] run title @s actionbar ["",{"text":"Mining ","color":"gold","bold":true},{"score":{"name":"@s","objective":"lvl.mine"},"color":"gold","bold":true},{"text":"    "},{"score":{"name":"@s","objective":"lvl.mine.progress"}},{"text":"/"},{"score":{"name":"@s","objective":"lvl.mine.goal"}}]
## fishing
execute unless entity @s[nbt=!{SelectedItem:{id:"minecraft:fishing_rod"}}] run title @s actionbar ["",{"text":"Fishing ","color":"gold","bold":true},{"score":{"name":"@s","objective":"lvl.fish"},"color":"gold","bold":true},{"text":"    "},{"score":{"name":"@s","objective":"lvl.fish.progress"}},{"text":"/"},{"score":{"name":"@s","objective":"lvl.fish.goal"}}]
## farming
execute unless entity @s[nbt=!{SelectedItem:{id:"minecraft:wooden_hoe"}},nbt=!{SelectedItem:{id:"minecraft:stone_hoe"}},nbt=!{SelectedItem:{id:"minecraft:golden_hoe"}},nbt=!{SelectedItem:{id:"minecraft:iron_hoe"}},nbt=!{SelectedItem:{id:"minecraft:diamond_hoe"}},nbt=!{SelectedItem:{id:"minecraft:netherite_hoe"}}] run title @s actionbar ["",{"text":"Farming ","color":"gold","bold":true},{"score":{"name":"@s","objective":"lvl.farm"},"color":"gold","bold":true},{"text":"    "},{"score":{"name":"@s","objective":"lvl.farm.progress"}},{"text":"/"},{"score":{"name":"@s","objective":"lvl.farm.goal"}}]