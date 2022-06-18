## quest 3
# start
tellraw @s ["",{"text":"[","color":"dark_gray"},{"text":"♦","color":"gold"},{"text":"] ","color":"dark_gray"},{"text":"Quest started! ","color":"gold"},{"text":"Ben's Lucky Sword ","color":"yellow"}]
clear @s emerald{QuestID:3} 1
scoreboard players set @s quest_3.seen 1