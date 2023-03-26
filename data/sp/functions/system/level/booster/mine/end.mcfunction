# SP leveling
## level booster
## mining end


# announce
tellraw @s ["",{"text":"[","color":"dark_gray"},{"text":"♦","color":"#B8E45A"},{"text":"] ","color":"dark_gray"},{"text":"Your x","color":"#B8E45A"},{"score":{"name":"@s","objective":"lvl.mine.booster"}},{"text":" Mining XP booster has expired.","color":"#B8E45A"}]
# extras
function sp:system/level/booster/generic/end

# disable booster
scoreboard players reset @s lvl.mine.booster
scoreboard players reset @s lvl.mine.booster_time