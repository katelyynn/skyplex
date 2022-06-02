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
# colour
## Q1
execute if score ver.month internal >= 1 internal if score ver.month internal <= 3 internal run bossbar set sp:ver color yellow
## Q2
execute if score ver.month internal >= 4 internal if score ver.month internal <= 6 internal run bossbar set sp:ver color green
## Q3
execute if score ver.month internal >= 7 internal if score ver.month internal <= 9 internal run bossbar set sp:ver color red
## Q4
execute if score ver.month internal >= 10 internal if score ver.month internal <= 12 internal run bossbar set sp:ver color white


# ore states
scoreboard objectives add ore.state dummy
scoreboard objectives add ore.timer dummy

# ore respawns
scoreboard players set ore.coal_ore internal 200
scoreboard players set ore.iron_ore internal 300
scoreboard players set ore.gold_ore internal 500
scoreboard players set ore.diamond_ore internal 800


# display player level in trigger
scoreboard objectives add stats trigger


# quests
scoreboard objectives add quest.holding dummy
scoreboard objectives add quest.holding_id dummy
## quest 1
scoreboard objectives add quest_1 dummy
scoreboard objectives add quest_1.seen dummy


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
## mining
scoreboard objectives add lvl.mine dummy
scoreboard objectives add lvl.mine.progress dummy
scoreboard objectives add lvl.mine.goal dummy
## fishing
scoreboard objectives add lvl.fish dummy
scoreboard objectives add lvl.fish.progress dummy
scoreboard objectives add lvl.fish.goal dummy
## foraging
scoreboard objectives add lvl.wood dummy
scoreboard objectives add lvl.wood.progress dummy
scoreboard objectives add lvl.wood.goal dummy
## farming
scoreboard objectives add lvl.farm dummy
scoreboard objectives add lvl.farm.progress dummy
scoreboard objectives add lvl.farm.goal dummy
## N/A
scoreboard objectives add lvl.food dummy
scoreboard objectives add lvl.food.progress dummy
scoreboard objectives add lvl.food.goal dummy


# level goals
## mining
scoreboard players set mine.0 lvl.goal 10
scoreboard players set mine.1 lvl.goal 125
scoreboard players set mine.2 lvl.goal 230
scoreboard players set mine.3 lvl.goal 600
## fishing
scoreboard players set fish.0 lvl.goal 5
scoreboard players set fish.1 lvl.goal 20
scoreboard players set fish.2 lvl.goal 35
scoreboard players set fish.3 lvl.goal 50


# level rates
scoreboard objectives add lvl.rates dummy

# mining
scoreboard players set mine.cobblestone lvl.rates 1
scoreboard players set mine.coal lvl.rates 2
scoreboard players set mine.raw_iron lvl.rates 3
scoreboard players set mine.raw_gold lvl.rates 3
scoreboard players set mine.diamond lvl.rates 4
scoreboard players set mine.lapis_lazuli lvl.rates 0
scoreboard players set mine.redstone lvl.rates 0

# fishing
scoreboard players set fish.catch lvl.rates 1

## generated via rates.html