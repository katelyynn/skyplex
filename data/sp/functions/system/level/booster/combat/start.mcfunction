# SP leveling
## level booster
## combat start


# enable booster
scoreboard players operation @s lvl.combat.booster = @s temp_store.player_item_booster_multiplier
scoreboard players operation @s lvl.combat.booster_time = @s temp_store.player_item_booster_length

# announce
tellraw @s ["",{"text":"[","color":"dark_gray"},{"text":"♦","color":"#B8E45A"},{"text":"] ","color":"dark_gray"},{"text":"You have activated a x","color":"#B8E45A"},{"score":{"name":"@s","objective":"lvl.combat.booster"}},{"text":" Combat XP booster!","color":"#B8E45A"}]
# extras
function sp:system/level/booster/generic/start