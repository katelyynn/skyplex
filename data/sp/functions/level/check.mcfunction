# range check for player level


execute unless score @s lvl.mine >= 1 internal run scoreboard players set @s lvl.mine 1
execute unless score @s lvl.fish >= 1 internal run scoreboard players set @s lvl.fish 1
execute unless score @s lvl.wood >= 1 internal run scoreboard players set @s lvl.wood 1
execute unless score @s lvl.farm >= 1 internal run scoreboard players set @s lvl.farm 1
execute unless score @s lvl.food >= 1 internal run scoreboard players set @s lvl.food 1

# sfx
execute unless score @s lvl.mine >= 1 internal run playsound minecraft:entity.player.levelup player @s
execute unless score @s lvl.fish >= 1 internal run playsound minecraft:entity.player.levelup player @s
execute unless score @s lvl.wood >= 1 internal run playsound minecraft:entity.player.levelup player @s
execute unless score @s lvl.farm >= 1 internal run playsound minecraft:entity.player.levelup player @s
execute unless score @s lvl.food >= 1 internal run playsound minecraft:entity.player.levelup player @s

execute unless score @s lvl.mine.progress >= 1 internal run scoreboard players set @s lvl.mine.progress 0
execute unless score @s lvl.fish.progress >= 1 internal run scoreboard players set @s lvl.fish.progress 0
execute unless score @s lvl.wood.progress >= 1 internal run scoreboard players set @s lvl.wood.progress 0
execute unless score @s lvl.farm.progress >= 1 internal run scoreboard players set @s lvl.farm.progress 0
execute unless score @s lvl.food.progress >= 1 internal run scoreboard players set @s lvl.food.progress 0