# show player's level
## fishing


# calc level goal
## store temp value for calc
scoreboard players operation @s lvl.fish.goal_calc = @s lvl.fish
## 100n
scoreboard players operation @s lvl.fish.goal_calc *= multiply lvl.goal
## +400
scoreboard players operation @s lvl.fish.goal_calc += addition lvl.goal
## save (final)
scoreboard players operation @s lvl.fish.goal = @s lvl.fish.goal_calc