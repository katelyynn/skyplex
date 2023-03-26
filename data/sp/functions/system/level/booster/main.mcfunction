# SP leveling
## level booster
## main loop


# check if any XP booster is active
scoreboard players set @s lvl.generic.booster 0
execute if score @s lvl.mine.booster matches 2.. run scoreboard players add @s lvl.generic.booster 1
execute if score @s lvl.fish.booster matches 2.. run scoreboard players add @s lvl.generic.booster 1
execute if score @s lvl.farm.booster matches 2.. run scoreboard players add @s lvl.generic.booster 1
execute if score @s lvl.wood.booster matches 2.. run scoreboard players add @s lvl.generic.booster 1
execute if score @s lvl.combat.booster matches 2.. run scoreboard players add @s lvl.generic.booster 1
## if so, run timer
execute if score @s lvl.generic.booster matches 1.. run function sp:system/level/booster/time

# profession lookup table
## TODO: merge with tool/main lookup table (different rn)
## 0: mine
## 1: fish
## 2: farm
## 3: wood
## 4: combat

# item eligible lookup table
## 0: invalid
## 1: valid
## 3: invalid (housing)

# XP booster attributes
scoreboard players set @s temp_store.player_item_booster_eligible 0
scoreboard players set @s temp_store.player_item_booster_profession -1
scoreboard players set @s temp_store.player_item_booster_multiplier -1
scoreboard players set @s temp_store.player_item_booster_length -1
## store current item's profession
## TODO: use some data storage lookup table smart thing?
execute store result score @s temp_store.player_item_booster_profession run data get entity @s SelectedItem.tag.boosterProfession
## store current item's multiplier
execute store result score @s temp_store.player_item_booster_multiplier run data get entity @s SelectedItem.tag.boosterMultiplier
## store current item's length
execute store result score @s temp_store.player_item_booster_length run data get entity @s SelectedItem.tag.boosterLength

# item eligible?
## invalid (housing)
execute if score @s temp_store.player_item_booster_profession matches 0.. if entity @e[tag=housing.inside,distance=..6] run scoreboard players set @s temp_store.player_item_booster_eligible 3
execute if score @s temp_store.player_item_booster_profession matches 0.. if entity @e[tag=housing.inside,distance=..6] run scoreboard players set @s temp_store.player_tool_eligible 3
## valid
execute unless score @s temp_store.player_item_booster_eligible matches 3 if score @s temp_store.player_item_booster_profession matches 0.. if score @s temp_store.player_item_booster_multiplier matches 2.. if score @s temp_store.player_item_booster_length matches 10.. run scoreboard players set @s temp_store.player_item_booster_eligible 1
## professions
## TODO: figure out a way to clear the item
## maybe copy the selecteditem data to armor stand
## then give it a unique tag that can be used for clearing?
execute unless score @s temp_store.player_item_booster_eligible matches 0 unless score @s temp_store.player_item_booster_eligible matches 3 if score @s temp_store.player_item_booster_profession matches 0 unless score @s lvl.mine.booster matches 2.. run function sp:system/level/booster/mine/start
execute unless score @s temp_store.player_item_booster_eligible matches 0 unless score @s temp_store.player_item_booster_eligible matches 3 if score @s temp_store.player_item_booster_profession matches 1 unless score @s lvl.fish.booster matches 2.. run function sp:system/level/booster/fish/start
execute unless score @s temp_store.player_item_booster_eligible matches 0 unless score @s temp_store.player_item_booster_eligible matches 3 if score @s temp_store.player_item_booster_profession matches 2 unless score @s lvl.farm.booster matches 2.. run function sp:system/level/booster/farm/start
execute unless score @s temp_store.player_item_booster_eligible matches 0 unless score @s temp_store.player_item_booster_eligible matches 3 if score @s temp_store.player_item_booster_profession matches 3 unless score @s lvl.wood.booster matches 2.. run function sp:system/level/booster/wood/start
execute unless score @s temp_store.player_item_booster_eligible matches 0 unless score @s temp_store.player_item_booster_eligible matches 3 if score @s temp_store.player_item_booster_profession matches 4 unless score @s lvl.combat.booster matches 2.. run function sp:system/level/booster/combat/start

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
