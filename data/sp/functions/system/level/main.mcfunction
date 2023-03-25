# check player's level requirements


# convert level rates per player
function sp:system/level/booster/main

# gain +xp
## mining
execute if score @s spmine.cobblestone matches 1.. run scoreboard players operation @s lvl.mine.progress += @s lvl.rates_player.mine.cobblestone
execute if score @s spmine.coal matches 1.. run scoreboard players operation @s lvl.mine.progress += @s lvl.rates_player.mine.coal
execute if score @s spmine.raw_iron matches 1.. run scoreboard players operation @s lvl.mine.progress += @s lvl.rates_player.mine.raw_iron
execute if score @s spmine.raw_gold matches 1.. run scoreboard players operation @s lvl.mine.progress += @s lvl.rates_player.mine.raw_gold
execute if score @s spmine.diamond matches 1.. run scoreboard players operation @s lvl.mine.progress += @s lvl.rates_player.mine.diamond
execute if score @s spmine.lapis_lazuli matches 1.. run scoreboard players operation @s lvl.mine.progress += @s lvl.rates_player.mine.lapis_lazuli
execute if score @s spmine.redstone matches 1.. run scoreboard players operation @s lvl.mine.progress += @s lvl.rates_player.mine.redstone
## fishing
execute if score @s spfish.catch matches 1.. run scoreboard players operation @s lvl.fish.progress += @s lvl.rates_player.fish.catch
## farming
execute if score @s spfarm.wheat matches 1.. run scoreboard players operation @s lvl.farm.progress += @s lvl.rates_player.farm.wheat
## foraging
execute if score @s spwood.oak_log matches 1.. run scoreboard players operation @s lvl.wood.progress += @s lvl.rates_player.wood.oak_log
execute if score @s spwood.spruce_log matches 1.. run scoreboard players operation @s lvl.wood.progress += @s lvl.rates_player.wood.spruce_log
execute if score @s spwood.birch_log matches 1.. run scoreboard players operation @s lvl.wood.progress += @s lvl.rates_player.wood.birch_log
execute if score @s spwood.jungle_log matches 1.. run scoreboard players operation @s lvl.wood.progress += @s lvl.rates_player.wood.jungle_log
execute if score @s spwood.acacia_log matches 1.. run scoreboard players operation @s lvl.wood.progress += @s lvl.rates_player.wood.acacia_log
execute if score @s spwood.dark_oak_log matches 1.. run scoreboard players operation @s lvl.wood.progress += @s lvl.rates_player.wood.dark_oak_log
execute if score @s spwood.mangrove_log matches 1.. run scoreboard players operation @s lvl.wood.progress += @s lvl.rates_player.wood.mangrove_log

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