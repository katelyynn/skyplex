## quest 1
# stats
clear @s emerald{QuestID:1} 1
scoreboard players set @s quest_1.seen 1
# sfx
playsound minecraft:entity.experience_orb.pickup player @s
# display
tellraw @s ["",{"text":"[","color":"dark_gray"},{"text":"♦","color":"gold"},{"text":"] ","color":"dark_gray"},{"text":"Quest started! ","color":"gold"},{"text":"Cool quest","color":"yellow"},{"text":" Criteria:","color":"gold"}]
tellraw @s {"text":"Get some stone","color":"white"}
tellraw @s ""