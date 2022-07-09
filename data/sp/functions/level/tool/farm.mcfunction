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

# announce
title @s actionbar ["",{"text":"Farming ","color":"gold","bold":true},{"score":{"name":"@s","objective":"lvl.farm"},"color":"gold","bold":true},{"text":"    "},{"score":{"name":"@s","objective":"lvl.farm.progress"}},{"text":"/"},{"score":{"name":"@s","objective":"lvl.farm.goal"}}]