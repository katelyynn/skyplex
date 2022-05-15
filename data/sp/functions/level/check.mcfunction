# range check for player level


execute unless score @s lvl.mine >= 0 run scoreboard player set @s lvl.mine 0
execute unless score @s lvl.wood >= 0 run scoreboard player set @s lvl.wood 0
execute unless score @s lvl.fish >= 0 run scoreboard player set @s lvl.fish 0
execute unless score @s lvl.food >= 0 run scoreboard player set @s lvl.food 0