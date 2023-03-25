# SP leveling
## level booster
## combat end


# announce
tellraw @s ["",{"text":"[","color":"dark_gray"},{"text":"♦","color":"#B8E45A"},{"text":"] ","color":"dark_gray"},{"text":"Your x","color":"#B8E45A"},{"score":{"name":"@s","objective":"lvl.combat.booster"}},{"text":" Combat XP booster has expired.","color":"#B8E45A"}]
# extras
function sp:system/level/booster/generic/end

# disable booster
scoreboard players set @s lvl.combat.booster 0