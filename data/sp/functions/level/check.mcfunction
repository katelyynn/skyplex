# range check for player level


execute unless score @s lvl.mine matches 1.. run scoreboard players set @s lvl.mine 1
execute unless score @s lvl.fish matches 1.. run scoreboard players set @s lvl.fish 1
execute unless score @s lvl.wood matches 1.. run scoreboard players set @s lvl.wood 1
execute unless score @s lvl.farm matches 1.. run scoreboard players set @s lvl.farm 1
execute unless score @s lvl.food matches 1.. run scoreboard players set @s lvl.food 1

execute unless score @s lvl.mine.progress matches 1.. run scoreboard players set @s lvl.mine.progress 0
execute unless score @s lvl.fish.progress matches 1.. run scoreboard players set @s lvl.fish.progress 0
execute unless score @s lvl.wood.progress matches 1.. run scoreboard players set @s lvl.wood.progress 0
execute unless score @s lvl.farm.progress matches 1.. run scoreboard players set @s lvl.farm.progress 0
execute unless score @s lvl.food.progress matches 1.. run scoreboard players set @s lvl.food.progress 0