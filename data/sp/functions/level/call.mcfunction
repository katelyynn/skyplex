# call player's level in trigger


# header
tellraw @s ["",{"text":"\nYour Skills\n","color":"yellow","bold":true}]
# professions
## mining
tellraw @s ["",{"text":"Mining ","color":"gold","bold":true},{"score":{"name": "@s","objective": "lvl.mine"},"color":"gold","bold":true},{"text":"    "},{"score":{"name":"@s","objective":"lvl.mine.progress"}},{"text":"/"},{"score":{"name":"@s","objective":"lvl.mine.goal"}}]
## fishing
tellraw @s ["",{"text":"Fishing ","color":"gold","bold":true},{"score":{"name": "@s","objective": "lvl.fish"},"color":"gold","bold":true},{"text":"    "},{"score":{"name":"@s","objective":"lvl.fish.progress"}},{"text":"/"},{"score":{"name":"@s","objective":"lvl.fish.goal"}}]
## foraging
tellraw @s ["",{"text":"Foraging ","color":"gold","bold":true},{"score":{"name": "@s","objective": "lvl.wood"},"color":"gold","bold":true},{"text":"    "},{"score":{"name":"@s","objective":"lvl.wood.progress"}},{"text":"/"},{"score":{"name":"@s","objective":"lvl.wood.goal"}}]
## farming
tellraw @s ["",{"text":"Farming ","color":"gold","bold":true},{"score":{"name": "@s","objective": "lvl.farm"},"color":"gold","bold":true},{"text":"    "},{"score":{"name":"@s","objective":"lvl.farm.progress"}},{"text":"/"},{"score":{"name":"@s","objective":"lvl.farm.goal"}}]
# footer
tellraw @s ""


scoreboard players reset @s stats