# SP housing
## player timeout
## main loop


scoreboard players add @s temp_store.housing_player_timeout 1
execute if score @s temp_store.housing_player_timeout >= housing_player_timeout internal run tag @s remove housing.player_timeout
execute if score @s temp_store.housing_player_timeout >= housing_player_timeout internal run scoreboard players reset @s temp_store.housing_player_timeout