# show player's level
## combat


# calc level goal
## store temp value for calc
scoreboard players operation @s lvl.combat.goal_calc = @s lvl.combat
## 100n
scoreboard players operation @s lvl.combat.goal_calc *= multiply lvl.goal
## +400
scoreboard players operation @s lvl.combat.goal_calc += addition lvl.goal
## save (final)
scoreboard players operation @s lvl.combat.goal = @s lvl.combat.goal_calc