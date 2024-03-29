# skyplex /reload


# scoreboards
scoreboard objectives add global dummy
scoreboard objectives add internal dummy

# numbers
scoreboard players set 0 internal 0
scoreboard players set 1 internal 1
scoreboard players set 2 internal 2
scoreboard players set 3 internal 3
scoreboard players set 4 internal 4
scoreboard players set 5 internal 5
scoreboard players set 6 internal 6
scoreboard players set 7 internal 7
scoreboard players set 8 internal 8
scoreboard players set 9 internal 9
scoreboard players set 10 internal 10
scoreboard players set 11 internal 11
scoreboard players set 12 internal 12
scoreboard players set 20 internal 20

# world
gamerule announceAdvancements false
gamerule commandBlockOutput false
#gamerule doLimitedCrafting true
gamerule keepInventory true
gamerule mobGriefing false
gamerule sendCommandFeedback false
#gamerule showCoordinates false (1.20)
#gamerule showTags false (1.20)

# bossbars
bossbar add sp:ver ""
bossbar set sp:ver max 12


# passive systems
## mining
scoreboard objectives add ore.state dummy
scoreboard objectives add ore.timer dummy
scoreboard players set ore.coal_ore internal 200
scoreboard players set ore.iron_ore internal 300
scoreboard players set ore.gold_ore internal 500
scoreboard players set ore.diamond_ore internal 800
## farming
scoreboard objectives add farm.state dummy
scoreboard objectives add farm.timer dummy
scoreboard players set farm.wheat internal 480
## foraging
scoreboard objectives add wood.state dummy
scoreboard objectives add wood.timer dummy
scoreboard players set wood.oak_log internal 160
scoreboard players set wood.spruce_log internal 160
scoreboard players set wood.birch_log internal 160
scoreboard players set wood.jungle_log internal 160
scoreboard players set wood.acacia_log internal 160
scoreboard players set wood.dark_oak_log internal 160
scoreboard players set wood.mangrove_log internal 120


# display player level in trigger
scoreboard objectives add skills trigger "Your skills"


# quests
function sp:system/quest/load


# track player level requirements
## mining
scoreboard objectives add spmine.stone minecraft.mined:minecraft.stone
scoreboard objectives add spmine.cobblestone minecraft.mined:minecraft.cobblestone
scoreboard objectives add spmine.coal minecraft.mined:minecraft.coal_ore
scoreboard objectives add spmine.raw_iron minecraft.mined:minecraft.iron_ore
scoreboard objectives add spmine.raw_gold minecraft.mined:minecraft.gold_ore
scoreboard objectives add spmine.diamond minecraft.mined:minecraft.diamond_ore
## fishing
scoreboard objectives add spfish.catch minecraft.custom:fish_caught
## farming
scoreboard objectives add spfarm.wheat minecraft.mined:minecraft.wheat
scoreboard objectives add spfarm.carrots minecraft.mined:minecraft.carrots
scoreboard objectives add spfarm.sweet_berry_bush minecraft.mined:minecraft.sweet_berry_bush
## foraging
scoreboard objectives add spwood.oak_log minecraft.mined:minecraft.oak_log
scoreboard objectives add spwood.spruce_log minecraft.mined:minecraft.spruce_log
scoreboard objectives add spwood.birch_log minecraft.mined:minecraft.birch_log
scoreboard objectives add spwood.jungle_log minecraft.mined:minecraft.jungle_log
scoreboard objectives add spwood.acacia_log minecraft.mined:minecraft.acacia_log
scoreboard objectives add spwood.dark_oak_log minecraft.mined:minecraft.dark_oak_log
scoreboard objectives add spwood.mangrove_log minecraft.mined:minecraft.mangrove_log

# player levels
scoreboard objectives add lvl.goal dummy
scoreboard players set multiply lvl.goal 100
scoreboard players set addition lvl.goal 400
## mining
scoreboard objectives add lvl.mine dummy
scoreboard objectives add lvl.mine.progress dummy
scoreboard objectives add lvl.mine.goal dummy
scoreboard objectives add lvl.mine.goal_calc dummy
## fishing
scoreboard objectives add lvl.fish dummy
scoreboard objectives add lvl.fish.progress dummy
scoreboard objectives add lvl.fish.goal dummy
scoreboard objectives add lvl.fish.goal_calc dummy
## foraging
scoreboard objectives add lvl.wood dummy
scoreboard objectives add lvl.wood.progress dummy
scoreboard objectives add lvl.wood.goal dummy
scoreboard objectives add lvl.wood.goal_calc dummy
## farming
scoreboard objectives add lvl.farm dummy
scoreboard objectives add lvl.farm.progress dummy
scoreboard objectives add lvl.farm.goal dummy
scoreboard objectives add lvl.farm.goal_calc dummy
## N/A
scoreboard objectives add lvl.food dummy
scoreboard objectives add lvl.food.progress dummy
scoreboard objectives add lvl.food.goal dummy
scoreboard objectives add lvl.food.goal_calc dummy
## combat
scoreboard objectives add lvl.combat dummy
scoreboard objectives add lvl.combat.progress dummy
scoreboard objectives add lvl.combat.goal dummy
scoreboard objectives add lvl.combat.goal_calc dummy
## farming
#scoreboard objectives add lvl.farm dummy
#scoreboard objectives add lvl.farm.progress dummy
#scoreboard objectives add lvl.farm.goal dummy
#scoreboard objectives add lvl.farm.goal_calc dummy

# player level boosters
scoreboard objectives add lvl.generic.booster dummy
scoreboard objectives add temp_store.player_item_booster_eligible dummy
scoreboard objectives add temp_store.player_item_booster_profession dummy
scoreboard objectives add temp_store.player_item_booster_multiplier dummy
scoreboard objectives add temp_store.player_item_booster_length dummy
scoreboard objectives add temp_store.player_item_booster_persistent dummy
## mining
scoreboard objectives add lvl.mine.booster dummy
scoreboard objectives add lvl.mine.booster_time dummy
scoreboard objectives add lvl.mine.booster_time_s dummy
## fishing
scoreboard objectives add lvl.fish.booster dummy
scoreboard objectives add lvl.fish.booster_time dummy
scoreboard objectives add lvl.fish.booster_time_s dummy
## foraging
scoreboard objectives add lvl.wood.booster dummy
scoreboard objectives add lvl.wood.booster_time dummy
scoreboard objectives add lvl.wood.booster_time_s dummy
## farming
scoreboard objectives add lvl.farm.booster dummy
scoreboard objectives add lvl.farm.booster_time dummy
scoreboard objectives add lvl.farm.booster_time_s dummy
## N/A
scoreboard objectives add lvl.food.booster dummy
scoreboard objectives add lvl.food.booster_time dummy
scoreboard objectives add lvl.food.booster_time_s dummy
## combat
scoreboard objectives add lvl.combat.booster dummy
scoreboard objectives add lvl.combat.booster_time dummy
scoreboard objectives add lvl.combat.booster_time_s dummy

# player tools
## generic
scoreboard objectives add temp_store.player_tool_bool dummy
## level-locking
scoreboard objectives add temp_store.player_tool_eligible dummy
scoreboard objectives add temp_store.player_tool_profession dummy
scoreboard objectives add temp_store.player_tool_level dummy
## housing
scoreboard objectives add temp_store.player_tool_housing dummy


# housing
## /trigger housing
scoreboard objectives add housing dummy "Your house"
## player timeout
scoreboard objectives add temp_store.housing_player_timeout dummy
scoreboard players set housing_player_timeout internal 30
## housing index
scoreboard objectives add housing.index dummy
## is housing owner?
scoreboard objectives add housing.owner dummy
## housing configuration
scoreboard objectives add housing.config.open_to_visitors dummy
scoreboard objectives add housing.config.open_to_visitors_option trigger "Open to visitors"
scoreboard objectives add housing.config.lock_containers dummy
scoreboard objectives add housing.config.lock_containers_option trigger "Lock containers"
## player in house?
scoreboard objectives add temp_store.player_in_house dummy


# level rates
scoreboard objectives add lvl.rates dummy
## mining
scoreboard players set mine.cobblestone lvl.rates 5
scoreboard objectives add lvl.rates_player.mine.cobblestone dummy
scoreboard players set mine.coal lvl.rates 10
scoreboard objectives add lvl.rates_player.mine.coal dummy
scoreboard players set mine.raw_iron lvl.rates 20
scoreboard objectives add lvl.rates_player.mine.raw_iron dummy
scoreboard players set mine.raw_gold lvl.rates 30
scoreboard objectives add lvl.rates_player.mine.raw_gold dummy
scoreboard players set mine.diamond lvl.rates 50
scoreboard objectives add lvl.rates_player.mine.diamond dummy
scoreboard players set mine.lapis_lazuli lvl.rates 0
scoreboard objectives add lvl.rates_player.mine.lapis_lazuli dummy
scoreboard players set mine.redstone lvl.rates 0
scoreboard objectives add lvl.rates_player.mine.redstone dummy
## fishing
scoreboard players set fish.catch lvl.rates 10
scoreboard objectives add lvl.rates_player.fish.catch dummy
## farming
scoreboard players set farm.wheat lvl.rates 1
scoreboard objectives add lvl.rates_player.farm.wheat dummy
## foraging
scoreboard players set wood.oak_log lvl.rates 3
scoreboard objectives add lvl.rates_player.wood.oak_log dummy
scoreboard players set wood.spruce_log lvl.rates 3
scoreboard objectives add lvl.rates_player.wood.spruce_log dummy
scoreboard players set wood.birch_log lvl.rates 3
scoreboard objectives add lvl.rates_player.wood.birch_log dummy
scoreboard players set wood.jungle_log lvl.rates 3
scoreboard objectives add lvl.rates_player.wood.jungle_log dummy
scoreboard players set wood.acacia_log lvl.rates 3
scoreboard objectives add lvl.rates_player.wood.acacia_log dummy
scoreboard players set wood.dark_oak_log lvl.rates 3
scoreboard objectives add lvl.rates_player.wood.dark_oak_log dummy
scoreboard players set wood.mangrove_log lvl.rates 3
scoreboard objectives add lvl.rates_player.wood.mangrove_log dummy

## generated via rates.html