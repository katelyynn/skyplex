# SP leveling
## level booster
## foraging end


# announce
tellraw @s ["",{"text":"[","color":"dark_gray"},{"text":"♦","color":"#B8E45A"},{"text":"] ","color":"dark_gray"},{"text":"Your x","color":"#B8E45A"},{"score":{"name":"@s","objective":"lvl.wood.booster"}},{"text":" Foraging XP booster has expired.","color":"#B8E45A"}]
# extras
function sp:system/level/booster/generic/end

# disable booster
scoreboard players set @s lvl.wood.booster 0