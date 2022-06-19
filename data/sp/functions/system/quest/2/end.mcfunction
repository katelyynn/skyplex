## quest 2
tellraw @s ["",{"text":"[","color":"dark_gray"},{"text":"♦","color":"gold"},{"text":"] ","color":"dark_gray"},{"text":"Quest finished! ","color":"gold"},{"text":"mfw bread","color":"yellow"},{"text":" Rewards:","color":"gold"}]
give @s minecraft:bread 128
tellraw @s {"text":"128x Bread","color":"yellow"}
playsound minecraft:entity.player.levelup player @s
tellraw @s ""