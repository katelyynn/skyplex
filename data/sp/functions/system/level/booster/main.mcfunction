# SP leveling
## level booster
## main loop


## mining
scoreboard players operation @s lvl.rates_player.mine.cobblestone = mine.cobblestone lvl.rates
execute if score @s lvl.mine.booster matches 2.. run scoreboard players operation @s lvl.rates_player.mine.cobblestone *= @s lvl.mine.booster
scoreboard players operation @s lvl.rates_player.mine.coal = mine.coal lvl.rates
execute if score @s lvl.mine.booster matches 2.. run scoreboard players operation @s lvl.rates_player.mine.coal *= @s lvl.mine.booster
scoreboard players operation @s lvl.rates_player.mine.raw_iron = mine.raw_iron lvl.rates
execute if score @s lvl.mine.booster matches 2.. run scoreboard players operation @s lvl.rates_player.mine.raw_iron *= @s lvl.mine.booster
scoreboard players operation @s lvl.rates_player.mine.raw_gold = mine.raw_gold lvl.rates
execute if score @s lvl.mine.booster matches 2.. run scoreboard players operation @s lvl.rates_player.mine.raw_gold *= @s lvl.mine.booster
scoreboard players operation @s lvl.rates_player.mine.diamond = mine.diamond lvl.rates
execute if score @s lvl.mine.booster matches 2.. run scoreboard players operation @s lvl.rates_player.mine.diamond *= @s lvl.mine.booster
scoreboard players operation @s lvl.rates_player.mine.lapis_lazuli = mine.lapis_lazuli lvl.rates
execute if score @s lvl.mine.booster matches 2.. run scoreboard players operation @s lvl.rates_player.mine.lapis_lazuli *= @s lvl.mine.booster
scoreboard players operation @s lvl.rates_player.mine.redstone = mine.redstone lvl.rates
execute if score @s lvl.mine.booster matches 2.. run scoreboard players operation @s lvl.rates_player.mine.redstone *= @s lvl.mine.booster
## fishing
scoreboard players operation @s lvl.rates_player.fish.catch = fish.catch lvl.rates
execute if score @s lvl.fish.booster matches 2.. run scoreboard players operation @s lvl.rates_player.fish.catch *= @s lvl.fish.booster
## farming
scoreboard players operation @s lvl.rates_player.farm.wheat = farm.wheat lvl.rates
execute if score @s lvl.farm.booster matches 2.. run scoreboard players operation @s lvl.rates_player.farm.wheat *= @s lvl.farm.booster
## foraging
scoreboard players operation @s lvl.rates_player.wood.oak_log = wood.oak_log lvl.rates
execute if score @s lvl.wood.booster matches 2.. run scoreboard players operation @s lvl.rates_player.wood.oak_log *= @s lvl.wood.booster
scoreboard players operation @s lvl.rates_player.wood.spruce_log = wood.spruce_log lvl.rates
execute if score @s lvl.wood.booster matches 2.. run scoreboard players operation @s lvl.rates_player.wood.spruce_log *= @s lvl.wood.booster
scoreboard players operation @s lvl.rates_player.wood.birch_log = wood.birch_log lvl.rates
execute if score @s lvl.wood.booster matches 2.. run scoreboard players operation @s lvl.rates_player.wood.birch_log *= @s lvl.wood.booster
scoreboard players operation @s lvl.rates_player.wood.jungle_log = wood.jungle_log lvl.rates
execute if score @s lvl.wood.booster matches 2.. run scoreboard players operation @s lvl.rates_player.wood.jungle_log *= @s lvl.wood.booster
scoreboard players operation @s lvl.rates_player.wood.acacia_log = wood.acacia_log lvl.rates
execute if score @s lvl.wood.booster matches 2.. run scoreboard players operation @s lvl.rates_player.wood.acacia_log *= @s lvl.wood.booster
scoreboard players operation @s lvl.rates_player.wood.dark_oak_log = wood.dark_oak_log lvl.rates
execute if score @s lvl.wood.booster matches 2.. run scoreboard players operation @s lvl.rates_player.wood.dark_oak_log *= @s lvl.wood.booster
scoreboard players operation @s lvl.rates_player.wood.mangrove_log = wood.mangrove_log lvl.rates
execute if score @s lvl.wood.booster matches 2.. run scoreboard players operation @s lvl.rates_player.wood.mangrove_log *= @s lvl.wood.booster

## generated via rates.html
