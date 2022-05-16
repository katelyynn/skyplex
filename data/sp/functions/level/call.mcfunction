# call player's level in trigger


# header
tellraw @s ["",{"text":"\nYour Skills\n","color":"yellow","bold":true}]
# professions
## mining
tellraw @s ["",{"text":"⛏ ","color":"yellow"},{"text":"Mining ","color":"gold","bold":true},{"score":{"name": "@s","objective": "lvl.mine"},"color":"gold","bold":true}]
## fishing
tellraw @s ["",{"text":"🎣 ","color":"yellow"},{"text":"Fishing ","color":"gold","bold":true},{"score":{"name": "@s","objective": "lvl.fish"},"color":"gold","bold":true}]
## foraging
tellraw @s ["",{"text":"🪓 ","color":"yellow"},{"text":"Foraging ","color":"gold","bold":true},{"score":{"name": "@s","objective": "lvl.wood"},"color":"gold","bold":true}]
## farming
tellraw @s ["",{"text":"🔱 ","color":"yellow"},{"text":"Farming ","color":"gold","bold":true},{"score":{"name": "@s","objective": "lvl.farm"},"color":"gold","bold":true}]
# footer
tellraw @s ""


scoreboard players reset @s lvl.call