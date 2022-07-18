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
execute unless entity @s[nbt=!{SelectedItem:{id:"minecraft:wooden_pickaxe"}},nbt=!{SelectedItem:{id:"minecraft:stone_pickaxe"}},nbt=!{SelectedItem:{id:"minecraft:golden_pickaxe"}},nbt=!{SelectedItem:{id:"minecraft:iron_pickaxe"}},nbt=!{SelectedItem:{id:"minecraft:diamond_pickaxe"}},nbt=!{SelectedItem:{id:"minecraft:netherite_pickaxe"}}] run title @s actionbar ["",{"text":"Mining ","color":"gold"},{"score":{"name":"@s","objective":"lvl.mine"},"color":"gold"},{"text":" [","color":"dark_gray"},{"score":{"name":"@s","objective":"lvl.mine.progress"}},{"text":"/","color":"gray"},{"score":{"name":"@s","objective":"lvl.mine.goal"}},{"text":"]","color":"dark_gray"}]
## fishing
execute unless entity @s[nbt=!{SelectedItem:{id:"minecraft:fishing_rod"}}] run title @s actionbar ["",{"text":"Fishing ","color":"gold"},{"score":{"name":"@s","objective":"lvl.fish"},"color":"gold"},{"text":" [","color":"dark_gray"},{"score":{"name":"@s","objective":"lvl.fish.progress"}},{"text":"/","color":"gray"},{"score":{"name":"@s","objective":"lvl.fish.goal"}},{"text":"]","color":"dark_gray"}]
## farming
execute unless entity @s[nbt=!{SelectedItem:{id:"minecraft:wooden_hoe"}},nbt=!{SelectedItem:{id:"minecraft:stone_hoe"}},nbt=!{SelectedItem:{id:"minecraft:golden_hoe"}},nbt=!{SelectedItem:{id:"minecraft:iron_hoe"}},nbt=!{SelectedItem:{id:"minecraft:diamond_hoe"}},nbt=!{SelectedItem:{id:"minecraft:netherite_hoe"}}] run title @s actionbar ["",{"text":"Farming ","color":"gold"},{"score":{"name":"@s","objective":"lvl.farm"},"color":"gold"},{"text":" [","color":"dark_gray"},{"score":{"name":"@s","objective":"lvl.farm.progress"}},{"text":"/","color":"gray"},{"score":{"name":"@s","objective":"lvl.farm.goal"}},{"text":"]","color":"dark_gray"}]
## foraging
execute unless entity @s[nbt=!{SelectedItem:{id:"minecraft:wooden_axe"}},nbt=!{SelectedItem:{id:"minecraft:stone_axe"}},nbt=!{SelectedItem:{id:"minecraft:golden_axe"}},nbt=!{SelectedItem:{id:"minecraft:iron_axe"}},nbt=!{SelectedItem:{id:"minecraft:diamond_axe"}},nbt=!{SelectedItem:{id:"minecraft:netherite_axe"}}] run title @s actionbar ["",{"text":"Foraging ","color":"gold"},{"score":{"name":"@s","objective":"lvl.wood"},"color":"gold"},{"text":" [","color":"dark_gray"},{"score":{"name":"@s","objective":"lvl.wood.progress"}},{"text":"/","color":"gray"},{"score":{"name":"@s","objective":"lvl.wood.goal"}},{"text":"]","color":"dark_gray"}]
## combat
execute unless entity @s[nbt=!{SelectedItem:{id:"minecraft:wooden_sword"}},nbt=!{SelectedItem:{id:"minecraft:stone_sword"}},nbt=!{SelectedItem:{id:"minecraft:golden_sword"}},nbt=!{SelectedItem:{id:"minecraft:iron_sword"}},nbt=!{SelectedItem:{id:"minecraft:diamond_sword"}},nbt=!{SelectedItem:{id:"minecraft:netherite_sword"}}] run title @s actionbar ["",{"text":"Combat ","color":"gold"},{"score":{"name":"@s","objective":"lvl.combat"},"color":"gold"},{"text":" [","color":"dark_gray"},{"score":{"name":"@s","objective":"lvl.combat.progress"}},{"text":"/","color":"gray"},{"score":{"name":"@s","objective":"lvl.combat.goal"}},{"text":"]","color":"dark_gray"}]