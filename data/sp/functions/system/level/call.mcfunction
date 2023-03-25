# call player's level in trigger


# header
tellraw @s ["",{"text":"\n[","color":"dark_gray"},{"text":"♦","color":"yellow"},{"text":"] ","color":"dark_gray"},{"text":"Your skills\n","color":"yellow"}]
# professions
## mining
execute unless score @s lvl.mine.booster matches 2.. run tellraw @s ["",{"text":"Mining ","color":"gold"},{"score":{"name":"@s","objective":"lvl.mine"},"color":"gold"},{"text":" [","color":"dark_gray"},{"score":{"name":"@s","objective":"lvl.mine.progress"}},{"text":"/","color":"gray"},{"score":{"name":"@s","objective":"lvl.mine.goal"}},{"text":"]","color":"dark_gray"}]
execute if score @s lvl.mine.booster matches 2.. run tellraw @s ["",{"text":"Mining ","color":"green"},{"score":{"name":"@s","objective":"lvl.mine"},"color":"green"},{"text":" [","color":"dark_gray"},{"score":{"name":"@s","objective":"lvl.mine.progress"}},{"text":"/","color":"gray"},{"score":{"name":"@s","objective":"lvl.mine.goal"}},{"text":"]","color":"dark_gray"},{"text":" x","color":"green"},{"score":{"name":"@s","objective":"lvl.mine.booster"},"color":"green"}]
## fishing
execute unless score @s lvl.fish.booster matches 2.. run tellraw @s ["",{"text":"Fishing ","color":"gold"},{"score":{"name":"@s","objective":"lvl.fish"},"color":"gold"},{"text":" [","color":"dark_gray"},{"score":{"name":"@s","objective":"lvl.fish.progress"}},{"text":"/","color":"gray"},{"score":{"name":"@s","objective":"lvl.fish.goal"}},{"text":"]","color":"dark_gray"}]
execute if score @s lvl.fish.booster matches 2.. run tellraw @s ["",{"text":"Fishing ","color":"green"},{"score":{"name":"@s","objective":"lvl.fish"},"color":"green"},{"text":" [","color":"dark_gray"},{"score":{"name":"@s","objective":"lvl.fish.progress"}},{"text":"/","color":"gray"},{"score":{"name":"@s","objective":"lvl.fish.goal"}},{"text":"]","color":"dark_gray"},{"text":" x","color":"green"},{"score":{"name":"@s","objective":"lvl.fish.booster"},"color":"green"}]
## farming
execute unless score @s lvl.farm.booster matches 2.. run tellraw @s ["",{"text":"Farming ","color":"gold"},{"score":{"name":"@s","objective":"lvl.farm"},"color":"gold"},{"text":" [","color":"dark_gray"},{"score":{"name":"@s","objective":"lvl.farm.progress"}},{"text":"/","color":"gray"},{"score":{"name":"@s","objective":"lvl.farm.goal"}},{"text":"]","color":"dark_gray"}]
execute if score @s lvl.farm.booster matches 2.. run tellraw @s ["",{"text":"Farming ","color":"green"},{"score":{"name":"@s","objective":"lvl.farm"},"color":"green"},{"text":" [","color":"dark_gray"},{"score":{"name":"@s","objective":"lvl.farm.progress"}},{"text":"/","color":"gray"},{"score":{"name":"@s","objective":"lvl.farm.goal"}},{"text":"]","color":"dark_gray"},{"text":" x","color":"green"},{"score":{"name":"@s","objective":"lvl.farm.booster"},"color":"green"}]
## foraging
execute unless score @s lvl.wood.booster matches 2.. run tellraw @s ["",{"text":"Foraging ","color":"gold"},{"score":{"name":"@s","objective":"lvl.wood"},"color":"gold"},{"text":" [","color":"dark_gray"},{"score":{"name":"@s","objective":"lvl.wood.progress"}},{"text":"/","color":"gray"},{"score":{"name":"@s","objective":"lvl.wood.goal"}},{"text":"]","color":"dark_gray"}]
execute if score @s lvl.wood.booster matches 2.. run tellraw @s ["",{"text":"Foraging ","color":"green"},{"score":{"name":"@s","objective":"lvl.wood"},"color":"green"},{"text":" [","color":"dark_gray"},{"score":{"name":"@s","objective":"lvl.wood.progress"}},{"text":"/","color":"gray"},{"score":{"name":"@s","objective":"lvl.wood.goal"}},{"text":"]","color":"dark_gray"},{"text":" x","color":"green"},{"score":{"name":"@s","objective":"lvl.wood.booster"},"color":"green"}]
## combat
execute unless score @s lvl.combat.booster matches 2.. run tellraw @s ["",{"text":"Combat ","color":"gold"},{"score":{"name":"@s","objective":"lvl.combat"},"color":"gold"},{"text":" [","color":"dark_gray"},{"score":{"name":"@s","objective":"lvl.combat.progress"}},{"text":"/","color":"gray"},{"score":{"name":"@s","objective":"lvl.combat.goal"}},{"text":"]","color":"dark_gray"}]
execute if score @s lvl.combat.booster matches 2.. run tellraw @s ["",{"text":"Combat ","color":"green"},{"score":{"name":"@s","objective":"lvl.combat"},"color":"green"},{"text":" [","color":"dark_gray"},{"score":{"name":"@s","objective":"lvl.combat.progress"}},{"text":"/","color":"gray"},{"score":{"name":"@s","objective":"lvl.combat.goal"}},{"text":"]","color":"dark_gray"},{"text":" x","color":"green"},{"score":{"name":"@s","objective":"lvl.combat.booster"},"color":"green"}]
# footer
tellraw @s ""


scoreboard players reset @s skills