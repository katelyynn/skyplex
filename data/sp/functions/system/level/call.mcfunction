# call player's level in trigger


# header
tellraw @s ["",{"text":"\n[","color":"dark_gray"},{"text":"♦","color":"yellow"},{"text":"] ","color":"dark_gray"},{"text":"Your skills\n","color":"yellow"}]
# professions
## mining
execute unless score @s lvl.mine.booster matches 2.. run tellraw @s ["",{"text":"Mining ","color":"gold"},{"score":{"name":"@s","objective":"lvl.mine"},"color":"gold"},{"text":" [","color":"dark_gray"},{"score":{"name":"@s","objective":"lvl.mine.progress"}},{"text":"/","color":"gray"},{"score":{"name":"@s","objective":"lvl.mine.goal"}},{"text":"]","color":"dark_gray"}]
execute if score @s lvl.mine.booster matches 2.. run tellraw @s ["",{"text":"Mining ","color":"#B8E45A"},{"score":{"name":"@s","objective":"lvl.mine"},"color":"#B8E45A"},{"text":" [","color":"dark_gray"},{"score":{"name":"@s","objective":"lvl.mine.progress"}},{"text":"/","color":"gray"},{"score":{"name":"@s","objective":"lvl.mine.goal"}},{"text":"]","color":"dark_gray"},{"text":" x","color":"#B8E45A"},{"score":{"name":"@s","objective":"lvl.mine.booster"},"color":"#B8E45A"}]
## fishing
execute unless score @s lvl.fish.booster matches 2.. run tellraw @s ["",{"text":"Fishing ","color":"gold"},{"score":{"name":"@s","objective":"lvl.fish"},"color":"gold"},{"text":" [","color":"dark_gray"},{"score":{"name":"@s","objective":"lvl.fish.progress"}},{"text":"/","color":"gray"},{"score":{"name":"@s","objective":"lvl.fish.goal"}},{"text":"]","color":"dark_gray"}]
execute if score @s lvl.fish.booster matches 2.. run tellraw @s ["",{"text":"Fishing ","color":"#B8E45A"},{"score":{"name":"@s","objective":"lvl.fish"},"color":"#B8E45A"},{"text":" [","color":"dark_gray"},{"score":{"name":"@s","objective":"lvl.fish.progress"}},{"text":"/","color":"gray"},{"score":{"name":"@s","objective":"lvl.fish.goal"}},{"text":"]","color":"dark_gray"},{"text":" x","color":"#B8E45A"},{"score":{"name":"@s","objective":"lvl.fish.booster"},"color":"#B8E45A"}]
## farming
execute unless score @s lvl.farm.booster matches 2.. run tellraw @s ["",{"text":"Farming ","color":"gold"},{"score":{"name":"@s","objective":"lvl.farm"},"color":"gold"},{"text":" [","color":"dark_gray"},{"score":{"name":"@s","objective":"lvl.farm.progress"}},{"text":"/","color":"gray"},{"score":{"name":"@s","objective":"lvl.farm.goal"}},{"text":"]","color":"dark_gray"}]
execute if score @s lvl.farm.booster matches 2.. run tellraw @s ["",{"text":"Farming ","color":"#B8E45A"},{"score":{"name":"@s","objective":"lvl.farm"},"color":"#B8E45A"},{"text":" [","color":"dark_gray"},{"score":{"name":"@s","objective":"lvl.farm.progress"}},{"text":"/","color":"gray"},{"score":{"name":"@s","objective":"lvl.farm.goal"}},{"text":"]","color":"dark_gray"},{"text":" x","color":"#B8E45A"},{"score":{"name":"@s","objective":"lvl.farm.booster"},"color":"#B8E45A"}]
## foraging
execute unless score @s lvl.wood.booster matches 2.. run tellraw @s ["",{"text":"Foraging ","color":"gold"},{"score":{"name":"@s","objective":"lvl.wood"},"color":"gold"},{"text":" [","color":"dark_gray"},{"score":{"name":"@s","objective":"lvl.wood.progress"}},{"text":"/","color":"gray"},{"score":{"name":"@s","objective":"lvl.wood.goal"}},{"text":"]","color":"dark_gray"}]
execute if score @s lvl.wood.booster matches 2.. run tellraw @s ["",{"text":"Foraging ","color":"#B8E45A"},{"score":{"name":"@s","objective":"lvl.wood"},"color":"#B8E45A"},{"text":" [","color":"dark_gray"},{"score":{"name":"@s","objective":"lvl.wood.progress"}},{"text":"/","color":"gray"},{"score":{"name":"@s","objective":"lvl.wood.goal"}},{"text":"]","color":"dark_gray"},{"text":" x","color":"#B8E45A"},{"score":{"name":"@s","objective":"lvl.wood.booster"},"color":"#B8E45A"}]
## combat
execute unless score @s lvl.combat.booster matches 2.. run tellraw @s ["",{"text":"Combat ","color":"gold"},{"score":{"name":"@s","objective":"lvl.combat"},"color":"gold"},{"text":" [","color":"dark_gray"},{"score":{"name":"@s","objective":"lvl.combat.progress"}},{"text":"/","color":"gray"},{"score":{"name":"@s","objective":"lvl.combat.goal"}},{"text":"]","color":"dark_gray"}]
execute if score @s lvl.combat.booster matches 2.. run tellraw @s ["",{"text":"Combat ","color":"#B8E45A"},{"score":{"name":"@s","objective":"lvl.combat"},"color":"#B8E45A"},{"text":" [","color":"dark_gray"},{"score":{"name":"@s","objective":"lvl.combat.progress"}},{"text":"/","color":"gray"},{"score":{"name":"@s","objective":"lvl.combat.goal"}},{"text":"]","color":"dark_gray"},{"text":" x","color":"#B8E45A"},{"score":{"name":"@s","objective":"lvl.combat.booster"},"color":"#B8E45A"}]
# footer
tellraw @s ""


scoreboard players reset @s skills