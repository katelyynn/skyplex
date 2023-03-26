# SP leveling
## level booster
## fishing end


# announce
tellraw @s ["",{"text":"[","color":"dark_gray"},{"text":"♦","color":"#B8E45A"},{"text":"] ","color":"dark_gray"},{"text":"Your x","color":"#B8E45A"},{"score":{"name":"@s","objective":"lvl.fish.booster"},"color":"#B8E45A"},{"text":" Fishing XP booster has expired.","color":"#B8E45A"}]
# extras
function sp:system/level/booster/generic/end

# disable booster
scoreboard players reset @s lvl.fish.booster
scoreboard players reset @s lvl.fish.booster_time