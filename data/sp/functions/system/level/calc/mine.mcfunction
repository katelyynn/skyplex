# show player's level
## mining


# calc level goal
## store temp value for calc
scoreboard players operation @s lvl.mine.goal_calc = @s lvl.mine
## 100n
scoreboard players operation @s lvl.mine.goal_calc *= multiply lvl.goal
## +400
scoreboard players operation @s lvl.mine.goal_calc += addition lvl.goal
## save (final)
scoreboard players operation @s lvl.mine.goal = @s lvl.mine.goal_calc