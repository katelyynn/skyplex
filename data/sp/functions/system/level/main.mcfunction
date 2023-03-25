# check player's level requirements


# gain +xp
## mining
execute if score @s spmine.cobblestone matches 1.. run scoreboard players operation @s lvl.mine.progress += mine.cobblestone lvl.rates
execute if score @s spmine.coal matches 1.. run scoreboard players operation @s lvl.mine.progress += mine.coal lvl.rates
execute if score @s spmine.raw_iron matches 1.. run scoreboard players operation @s lvl.mine.progress += mine.raw_iron lvl.rates
execute if score @s spmine.raw_gold matches 1.. run scoreboard players operation @s lvl.mine.progress += mine.raw_gold lvl.rates
execute if score @s spmine.diamond matches 1.. run scoreboard players operation @s lvl.mine.progress += mine.diamond lvl.rates
execute if score @s spmine.lapis_lazuli matches 1.. run scoreboard players operation @s lvl.mine.progress += mine.lapis_lazuli lvl.rates
execute if score @s spmine.redstone matches 1.. run scoreboard players operation @s lvl.mine.progress += mine.redstone lvl.rates
## fishing
execute if score @s spfish.catch matches 1.. run scoreboard players operation @s lvl.fish.progress += fish.catch lvl.rates
## farming
execute if score @s spfarm.wheat matches 1.. run scoreboard players operation @s lvl.farm.progress += farm.wheat lvl.rates
## foraging
execute if score @s spwood.oak_log matches 1.. run scoreboard players operation @s lvl.wood.progress += wood.oak_log lvl.rates
execute if score @s spwood.spruce_log matches 1.. run scoreboard players operation @s lvl.wood.progress += wood.spruce_log lvl.rates
execute if score @s spwood.birch_log matches 1.. run scoreboard players operation @s lvl.wood.progress += wood.birch_log lvl.rates
execute if score @s spwood.jungle_log matches 1.. run scoreboard players operation @s lvl.wood.progress += wood.jungle_log lvl.rates
execute if score @s spwood.acacia_log matches 1.. run scoreboard players operation @s lvl.wood.progress += wood.acacia_log lvl.rates
execute if score @s spwood.dark_oak_log matches 1.. run scoreboard players operation @s lvl.wood.progress += wood.dark_oak_log lvl.rates
execute if score @s spwood.mangrove_log matches 1.. run scoreboard players operation @s lvl.wood.progress += wood.mangrove_log lvl.rates

scoreboard players reset @s spmine.cobblestone
scoreboard players reset @s spmine.coal
scoreboard players reset @s spmine.raw_iron
scoreboard players reset @s spmine.raw_gold
scoreboard players reset @s spmine.diamond
scoreboard players reset @s spmine.lapis_lazuli
scoreboard players reset @s spmine.redstone
scoreboard players reset @s spfish.catch
scoreboard players reset @s spfarm.wheat
scoreboard players reset @s spwood.oak_log
scoreboard players reset @s spwood.spruce_log
scoreboard players reset @s spwood.birch_log
scoreboard players reset @s spwood.jungle_log
scoreboard players reset @s spwood.acacia_log
scoreboard players reset @s spwood.dark_oak_log
scoreboard players reset @s spwood.mangrove_log

## generated via rates.html