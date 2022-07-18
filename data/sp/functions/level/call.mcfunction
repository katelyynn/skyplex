# call player's level in trigger


# header
tellraw @s ["",{"text":"\nYour Skills\n","color":"yellow","bold":true}]
# professions
## mining
tellraw @s ["",{"text":"Mining ","color":"gold"},{"score":{"name":"@s","objective":"lvl.mine"},"color":"gold"},{"text":" [","color":"dark_gray"},{"score":{"name":"@s","objective":"lvl.mine.progress"}},{"text":"/","color":"gray"},{"score":{"name":"@s","objective":"lvl.mine.goal"}},{"text":"]","color":"dark_gray"}]
## fishing
tellraw @s ["",{"text":"Fishing ","color":"gold"},{"score":{"name":"@s","objective":"lvl.fish"},"color":"gold"},{"text":" [","color":"dark_gray"},{"score":{"name":"@s","objective":"lvl.fish.progress"}},{"text":"/","color":"gray"},{"score":{"name":"@s","objective":"lvl.fish.goal"}},{"text":"]","color":"dark_gray"}]
## farming
tellraw @s ["",{"text":"Farming ","color":"gold"},{"score":{"name":"@s","objective":"lvl.farm"},"color":"gold"},{"text":" [","color":"dark_gray"},{"score":{"name":"@s","objective":"lvl.farm.progress"}},{"text":"/","color":"gray"},{"score":{"name":"@s","objective":"lvl.farm.goal"}},{"text":"]","color":"dark_gray"}]
## foraging
tellraw @s ["",{"text":"Foraging ","color":"gold"},{"score":{"name":"@s","objective":"lvl.wood"},"color":"gold"},{"text":" [","color":"dark_gray"},{"score":{"name":"@s","objective":"lvl.wood.progress"}},{"text":"/","color":"gray"},{"score":{"name":"@s","objective":"lvl.wood.goal"}},{"text":"]","color":"dark_gray"}]
## combat
tellraw @s ["",{"text":"Combat ","color":"gold"},{"score":{"name":"@s","objective":"lvl.combat"},"color":"gold"},{"text":" [","color":"dark_gray"},{"score":{"name":"@s","objective":"lvl.combat.progress"}},{"text":"/","color":"gray"},{"score":{"name":"@s","objective":"lvl.combat.goal"}},{"text":"]","color":"dark_gray"}]
# footer
tellraw @s ""


scoreboard players reset @s stats