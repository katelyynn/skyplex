## quest 1
# start
tellraw @s ["",{"text":"[","color":"dark_gray"},{"text":"♦","color":"gold"},{"text":"] ","color":"dark_gray"},{"text":"Quest started! ","color":"gold"},{"text":"Cool quest ","color":"yellow"}]
clear @s emerald{QuestID:1} 1
scoreboard players set @s quest_1.seen 1