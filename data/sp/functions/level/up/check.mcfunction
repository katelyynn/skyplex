# check if player can level up


## mining
execute if score @s lvl.mine.progress >= @s lvl.mine.goal at @s run function sp:level/up/mine
## fishing
execute if score @s lvl.fish.progress >= @s lvl.fish.goal at @s run function sp:level/up/fish
## farming
execute if score @s lvl.farm.progress >= @s lvl.farm.goal at @s run function sp:level/up/farm