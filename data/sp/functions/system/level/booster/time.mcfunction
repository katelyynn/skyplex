# SP leveling
## level booster
## time loop


# professions
## mining
execute if score @s lvl.mine.booster_time matches 1.. run scoreboard players remove @s lvl.mine.booster_time 1
execute if score @s lvl.mine.booster_time matches 0 run function sp:system/level/booster/mine/end
## fishing
execute if score @s lvl.fish.booster_time matches 1.. run scoreboard players remove @s lvl.fish.booster_time 1
execute if score @s lvl.fish.booster_time matches 0 run function sp:system/level/booster/fish/end
## farming
execute if score @s lvl.farm.booster_time matches 1.. run scoreboard players remove @s lvl.farm.booster_time 1
execute if score @s lvl.farm.booster_time matches 0 run function sp:system/level/booster/farm/end
## foraging
execute if score @s lvl.wood.booster_time matches 1.. run scoreboard players remove @s lvl.wood.booster_time 1
execute if score @s lvl.wood.booster_time matches 0 run function sp:system/level/booster/wood/end
## combat
execute if score @s lvl.combat.booster_time matches 1.. run scoreboard players remove @s lvl.combat.booster_time 1
execute if score @s lvl.combat.booster_time matches 0 run function sp:system/level/booster/combat/end