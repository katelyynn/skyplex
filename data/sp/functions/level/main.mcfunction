# check player's level requirements


# gain +xp

# mining
execute if score @s spmine.cobblestone matches 1.. run scoreboard players operation @s lvl.mine.progress += mine.cobblestone lvl.rates
execute if score @s spmine.coal matches 1.. run scoreboard players operation @s lvl.mine.progress += mine.coal lvl.rates
execute if score @s spmine.raw_iron matches 1.. run scoreboard players operation @s lvl.mine.progress += mine.raw_iron lvl.rates
execute if score @s spmine.raw_gold matches 1.. run scoreboard players operation @s lvl.mine.progress += mine.raw_gold lvl.rates
execute if score @s spmine.diamond matches 1.. run scoreboard players operation @s lvl.mine.progress += mine.diamond lvl.rates
execute if score @s spmine.lapis_lazuli matches 1.. run scoreboard players operation @s lvl.mine.progress += mine.lapis_lazuli lvl.rates
execute if score @s spmine.redstone matches 1.. run scoreboard players operation @s lvl.mine.progress += mine.redstone lvl.rates

# fishing
execute if score @s spfish.catch matches 1.. run scoreboard players operation @s lvl.fish.progress += fish.catch lvl.rates

## generated via rates.html

scoreboard players reset @s spmine.stone
scoreboard players reset @s spmine.cobblestone
scoreboard players reset @s spmine.coal
scoreboard players reset @s spmine.raw_iron
scoreboard players reset @s spmine.raw_gold
scoreboard players reset @s spmine.diamond
scoreboard players reset @s spfish.catch