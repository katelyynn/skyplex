# show player's level
## foraging


# calc level goal
## store temp value for calc
scoreboard players operation @s lvl.wood.goal_calc = @s lvl.wood
## 100n
scoreboard players operation @s lvl.wood.goal_calc *= multiply lvl.goal
## +400
scoreboard players operation @s lvl.wood.goal_calc += addition lvl.goal
## save (final)
scoreboard players operation @s lvl.wood.goal = @s lvl.wood.goal_calc