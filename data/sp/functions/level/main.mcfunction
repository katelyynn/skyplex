# check player's level requirements


# gain +xp

# mining
execute if score @s spmine.cobblestone matches 1.. if score @s lvl.mine matches 1 run scoreboard players operation @s lvl.mine.progress += mine.cobblestone lvl.rates
execute if score @s spmine.coal matches 1.. if score @s lvl.mine matches 2 run scoreboard players operation @s lvl.mine.progress += mine.coal lvl.rates
execute if score @s spmine.raw_iron matches 1.. if score @s lvl.mine matches 3 run scoreboard players operation @s lvl.mine.progress += mine.raw_iron lvl.rates
execute if score @s spmine.raw_gold matches 1.. if score @s lvl.mine matches 4 run scoreboard players operation @s lvl.mine.progress += mine.raw_gold lvl.rates
execute if score @s spmine.diamond matches 1.. if score @s lvl.mine matches 5 run scoreboard players operation @s lvl.mine.progress += mine.diamond lvl.rates
execute if score @s spmine.lapis_lazuli matches 1.. if score @s lvl.mine matches 6 run scoreboard players operation @s lvl.mine.progress += mine.lapis_lazuli lvl.rates
execute if score @s spmine.redstone matches 1.. if score @s lvl.mine matches 7 run scoreboard players operation @s lvl.mine.progress += mine.redstone lvl.rates

# fishing
execute if score @s spfish.catch matches 1.. if score @s lvl.fish matches 1 run scoreboard players operation @s lvl.fish.progress += fish.catch lvl.rates

## generated via rates.html

scoreboard players reset @s spmine.stone
scoreboard players reset @s spmine.cobblestone
scoreboard players reset @s spmine.coal
scoreboard players reset @s spmine.raw_iron
scoreboard players reset @s spmine.raw_gold
scoreboard players reset @s spfish.catch