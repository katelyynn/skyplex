# check player's level requirements


# gain +xp

# mining
## Lv. 1
execute if score @s spmine.stone matches 1.. if score @s lvl.mine matches 1 run scoreboard players operation @s lvl.mine.progress += mine.01.stone lvl.rates
execute if score @s spmine.cobblestone matches 1.. if score @s lvl.mine matches 1 run scoreboard players operation @s lvl.mine.progress += mine.01.cobblestone lvl.rates
execute if score @s spmine.coal_ore matches 1.. if score @s lvl.mine matches 1 run scoreboard players operation @s lvl.mine.progress += mine.01.coal_ore lvl.rates
execute if score @s spmine.iron_ore matches 1.. if score @s lvl.mine matches 1 run scoreboard players operation @s lvl.mine.progress += mine.01.iron_ore lvl.rates
## Lv. 2
execute if score @s spmine.stone matches 1.. if score @s lvl.mine matches 2 run scoreboard players operation @s lvl.mine.progress += mine.11.stone lvl.rates
execute if score @s spmine.cobblestone matches 1.. if score @s lvl.mine matches 2 run scoreboard players operation @s lvl.mine.progress += mine.11.cobblestone lvl.rates
execute if score @s spmine.coal_ore matches 1.. if score @s lvl.mine matches 2 run scoreboard players operation @s lvl.mine.progress += mine.11.coal_ore lvl.rates
execute if score @s spmine.iron_ore matches 1.. if score @s lvl.mine matches 2 run scoreboard players operation @s lvl.mine.progress += mine.11.iron_ore lvl.rates
execute if score @s spmine.gold_ore matches 1.. if score @s lvl.mine matches 2 run scoreboard players operation @s lvl.mine.progress += mine.11.gold_ore lvl.rates

# fishing
## Lv. 1
execute if score @s spfish.catch matches 1.. if score @s lvl.fish matches 1 run scoreboard players operation @s lvl.fish.progress += fish.01.catch lvl.rates
## Lv. 2
execute if score @s spfish.catch matches 1.. if score @s lvl.fish matches 2 run scoreboard players operation @s lvl.fish.progress += fish.11.catch lvl.rates

## generated via rates.html

scoreboard players reset @s spmine.stone
scoreboard players reset @s spmine.cobblestone
scoreboard players reset @s spmine.coal_ore
scoreboard players reset @s spmine.iron_ore
scoreboard players reset @s spmine.gold_ore
scoreboard players reset @s spfish.catch