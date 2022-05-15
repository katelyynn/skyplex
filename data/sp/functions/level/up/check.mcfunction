# check if player can level up


## mining
execute if score @s lvl.mine.progress >= @s lvl.mine.goal run function sp:level/up/mine
## fishing
execute if score @s lvl.fish.progress >= @s lvl.fish.goal run function sp:level/up/fish