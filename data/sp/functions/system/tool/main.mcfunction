# SP tools
## main loop


# profession lookup table
## 0: mine
## 1: fish
## 2: wood
## 3: farm
## 4: food
## 5: combat

# item eligible lookup table
## 0: invalid
## 1: valid
## 2: valid (no level-lock)

# level-locked
scoreboard players set @s temp_store.player_tool_eligible 0
scoreboard players set @s temp_store.player_tool_profession -1
scoreboard players set @s temp_store.player_tool_level -1
## store current item's profession
## TODO: use some data storage lookup table smart thing?
execute store result score @s temp_store.player_tool_profession run data get entity @s SelectedItem.tag.lockedProfession
## store current item's level
execute store result score @s temp_store.player_tool_level run data get entity @s SelectedItem.tag.lockedProfessionLevel

# item eligible?
## invalid (no level-lock)
execute if score @s temp_store.player_tool_profession matches -1 run scoreboard players set @s temp_store.player_tool_eligible 2
## professions
execute if score @s temp_store.player_tool_profession matches 0 if score @s lvl.mine >= @s temp_store.player_tool_level run scoreboard players set @s temp_store.player_tool_eligible 1
execute if score @s temp_store.player_tool_profession matches 1 if score @s lvl.fish >= @s temp_store.player_tool_level run scoreboard players set @s temp_store.player_tool_eligible 1
execute if score @s temp_store.player_tool_profession matches 2 if score @s lvl.wood >= @s temp_store.player_tool_level run scoreboard players set @s temp_store.player_tool_eligible 1
execute if score @s temp_store.player_tool_profession matches 3 if score @s lvl.farm >= @s temp_store.player_tool_level run scoreboard players set @s temp_store.player_tool_eligible 1
execute if score @s temp_store.player_tool_profession matches 4 if score @s lvl.food >= @s temp_store.player_tool_level run scoreboard players set @s temp_store.player_tool_eligible 1
execute if score @s temp_store.player_tool_profession matches 5 if score @s lvl.combat >= @s temp_store.player_tool_level run scoreboard players set @s temp_store.player_tool_eligible 1

# display ineligible
execute if score @s temp_store.player_tool_profession matches 0 unless score @s temp_store.player_tool_eligible matches 1.. run title @s actionbar [{"text":"This tool requires Mining ","color":"red"},{"score":{"name":"@s","objective":"temp_store.player_tool_level"}},{"text":" to use."}]
execute if score @s temp_store.player_tool_profession matches 1 unless score @s temp_store.player_tool_eligible matches 1.. run title @s actionbar [{"text":"This tool requires Fishing ","color":"red"},{"score":{"name":"@s","objective":"temp_store.player_tool_level"}},{"text":" to use."}]
execute if score @s temp_store.player_tool_profession matches 2 unless score @s temp_store.player_tool_eligible matches 1.. run title @s actionbar [{"text":"This tool requires Foraging ","color":"red"},{"score":{"name":"@s","objective":"temp_store.player_tool_level"}},{"text":" to use."}]
execute if score @s temp_store.player_tool_profession matches 3 unless score @s temp_store.player_tool_eligible matches 1.. run title @s actionbar [{"text":"This tool requires Farming ","color":"red"},{"score":{"name":"@s","objective":"temp_store.player_tool_level"}},{"text":" to use."}]
execute if score @s temp_store.player_tool_profession matches 4 unless score @s temp_store.player_tool_eligible matches 1.. run title @s actionbar [{"text":"This tool requires food (placeholder) ","color":"red"},{"score":{"name":"@s","objective":"temp_store.player_tool_level"}},{"text":" to use."}]
execute if score @s temp_store.player_tool_profession matches 5 unless score @s temp_store.player_tool_eligible matches 1.. run title @s actionbar [{"text":"This tool requires Combat ","color":"red"},{"score":{"name":"@s","objective":"temp_store.player_tool_level"}},{"text":" to use."}]