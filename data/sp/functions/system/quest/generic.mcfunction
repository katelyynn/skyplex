# SP quests


# check if holding
execute unless data entity @s SelectedItem.tag.QuestID run scoreboard players set @s quest.holding 0
execute if data entity @s SelectedItem.tag.QuestID run scoreboard players set @s quest.holding 1

# detect quest id
execute store result score @s quest.holding_id run data get entity @s SelectedItem.tag.QuestID


# start quests
## quest 1
execute if score @s quest.holding matches 1.. if score @s quest.holding_id matches 1 run scoreboard players set @s quest_1 1
execute if score @s quest.holding matches 1.. if score @s quest.holding_id matches 1 unless score @s quest_1.seen matches 1.. run function sp:system/quest/1/start
execute if score @s quest.holding matches 1.. if score @s quest.holding_id matches 1 run scoreboard players set @s quest_1.seen 1
execute if score @s quest.holding matches 1.. if score @s quest.holding_id matches 1 run clear @s emerald{tag:{QuestID:1}} 1

## generated via quests.html