# range check for player level


execute unless score @s lvl.mine >= 0 internal run scoreboard players set @s lvl.mine 0
execute unless score @s lvl.wood >= 0 internal run scoreboard players set @s lvl.wood 0
execute unless score @s lvl.fish >= 0 internal run scoreboard players set @s lvl.fish 0
execute unless score @s lvl.food >= 0 internal run scoreboard players set @s lvl.food 0