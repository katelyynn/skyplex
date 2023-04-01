# check if player can level up


## mining
execute if score @s lvl.mine.progress >= @s lvl.mine.goal at @s run function sp:system/level/up/mine
## fishing
execute if score @s lvl.fish.progress >= @s lvl.fish.goal at @s run function sp:system/level/up/fish
## farming
execute if score @s lvl.farm.progress >= @s lvl.farm.goal at @s run function sp:system/level/up/farm
## foraging
execute if score @s lvl.wood.progress >= @s lvl.wood.goal at @s run function sp:system/level/up/wood
## combat
execute if score @s lvl.combat.progress >= @s lvl.combat.goal at @s run function sp:system/level/up/combat