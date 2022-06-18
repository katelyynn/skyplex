# SP quests


# check if holding
execute unless data entity @s SelectedItem.tag.QuestID run scoreboard players set @s quest.holding 0
execute if data entity @s SelectedItem.tag.QuestID run scoreboard players set @s quest.holding 1

# detect quest id
execute store result score @s quest.holding_id run data get entity @s SelectedItem.tag.QuestID


## quest 1
# start
execute if score @s quest.holding matches 1.. if score @s quest.holding_id matches 1 unless score @s quest_1.seen matches 1.. run scoreboard players set @s quest_1 1
execute if score @s quest.holding matches 1.. if score @s quest.holding_id matches 1 unless score @s quest_1.seen matches 1.. run function sp:system/quest/1/start
## quest 2
# start
execute if score @s quest.holding matches 1.. if score @s quest.holding_id matches 2 unless score @s quest_2.seen matches 1.. run scoreboard players set @s quest_2 1
execute if score @s quest.holding matches 1.. if score @s quest.holding_id matches 2 unless score @s quest_2.seen matches 1.. run function sp:system/quest/2/start
## quest 3
# start
execute if score @s quest.holding matches 1.. if score @s quest.holding_id matches 3 unless score @s quest_3.seen matches 1.. run scoreboard players set @s quest_3 1
execute if score @s quest.holding matches 1.. if score @s quest.holding_id matches 3 unless score @s quest_3.seen matches 1.. run function sp:system/quest/3/start

## generated via quests.html