# SP quests


# check if holding
execute unless data entity @s SelectedItem.tag.QuestID run scoreboard players set @s quest.holding 0
execute if data entity @s SelectedItem.tag.QuestID run scoreboard players set @s quest.holding 1

# detect quest id
execute store result score @s quest.holding_id run data get entity @s SelectedItem.tag.QuestID