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


# track player level requirements
scoreboard objectives add spmine.stone minecraft.mined:minecraft.stone
scoreboard objectives add spmine.cobblestone minecraft.mined:minecraft.cobblestone
scoreboard objectives add spmine.coal_ore minecraft.mined:minecraft.coal_ore
scoreboard objectives add spmine.iron_ore minecraft.mined:minecraft.iron_ore
scoreboard objectives add spmine.gold_ore minecraft.mined:minecraft.gold_ore

# player levels
scoreboard objectives add lvl.goal dummy
## mining
scoreboard objectives add lvl.mine dummy
scoreboard objectives add lvl.mine.progress dummy
scoreboard objectives add lvl.mine.goal dummy
## the act of cutting down trees
scoreboard objectives add lvl.wood dummy
scoreboard objectives add lvl.wood.progress dummy
scoreboard objectives add lvl.wood.goal dummy
## fishing
scoreboard objectives add lvl.fish dummy
scoreboard objectives add lvl.fish.progress dummy
scoreboard objectives add lvl.fish.goal dummy
## N/A
scoreboard objectives add lvl.food dummy
scoreboard objectives add lvl.food.progress dummy
scoreboard objectives add lvl.food.goal dummy


# level goals
## mining
scoreboard players set mine.0 lvl.goal 10
scoreboard players set mine.1 lvl.goal 125
scoreboard players set mine.2 lvl.goal 600
## fishing
scoreboard players set fish.0 lvl.goal 5
scoreboard players set fish.1 lvl.goal 50
scoreboard players set fish.2 lvl.goal 200


# level rates
scoreboard objectives add lvl.rates dummy
## mining
### LV. 0
scoreboard players set mine.0.stone lvl.rates 1
scoreboard players set mine.0.cobblestone lvl.rates 1
scoreboard players set mine.0.coal_ore lvl.rates 2
scoreboard players set mine.0.iron_ore lvl.rates 3
#### LV. 1
scoreboard players set mine.1.stone lvl.rates 1
scoreboard players set mine.1.cobblestone lvl.rates 1
scoreboard players set mine.1.coal_ore lvl.rates 2
scoreboard players set mine.1.iron_ore lvl.rates 3
#### LV. 2
scoreboard players set mine.2.stone lvl.rates 1
scoreboard players set mine.2.cobblestone lvl.rates 1
scoreboard players set mine.2.coal_ore lvl.rates 3
scoreboard players set mine.2.iron_ore lvl.rates 5
scoreboard players set mine.2.gold_ore lvl.rates 6

## generated via rates.html