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

# bossbars
bossbar add sp:ver ""
bossbar set sp:ver max 12


# passive systems
## mine
scoreboard objectives add ore.state dummy
scoreboard objectives add ore.timer dummy
scoreboard players set ore.coal_ore internal 200
scoreboard players set ore.iron_ore internal 300
scoreboard players set ore.gold_ore internal 500
scoreboard players set ore.diamond_ore internal 800
## farm
scoreboard objectives add farm.state dummy
scoreboard objectives add farm.timer dummy
scoreboard players set farm.wheat internal 120


# display player level in trigger
scoreboard objectives add stats trigger


# quests
scoreboard objectives add quest.holding dummy
scoreboard objectives add quest.holding_id dummy
## quest 1
scoreboard objectives add quest_1 dummy
scoreboard objectives add quest_1.seen dummy
## quest 2
scoreboard objectives add quest_2 dummy
scoreboard objectives add quest_2.seen dummy
## quest 3
scoreboard objectives add quest_3 dummy
scoreboard objectives add quest_3.seen dummy
## quest 4
scoreboard objectives add quest_4 dummy
scoreboard objectives add quest_4.seen dummy


## generated via quests.html


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


# level rates
scoreboard objectives add lvl.rates dummy
## mining
scoreboard players set mine.cobblestone lvl.rates 5
scoreboard players set mine.coal lvl.rates 10
scoreboard players set mine.raw_iron lvl.rates 20
scoreboard players set mine.raw_gold lvl.rates 30
scoreboard players set mine.diamond lvl.rates 50
scoreboard players set mine.lapis_lazuli lvl.rates 0
scoreboard players set mine.redstone lvl.rates 0
## fishing
scoreboard players set fish.catch lvl.rates 10
## farming
scoreboard players set farm.wheat lvl.rates 1

## generated via rates.html