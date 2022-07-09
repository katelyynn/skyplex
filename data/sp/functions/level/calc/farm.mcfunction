# show player's level
## farming


# calc level goal
## store temp value for calc
scoreboard players operation @s lvl.farm.goal_calc = @s lvl.farm
## 100n
scoreboard players operation @s lvl.farm.goal_calc *= multiply lvl.goal
## +400
scoreboard players operation @s lvl.farm.goal_calc += addition lvl.goal
## save (final)
scoreboard players operation @s lvl.farm.goal = @s lvl.farm.goal_calc