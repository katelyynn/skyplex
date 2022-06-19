## quest 4
tellraw @s ["",{"text":"[","color":"dark_gray"},{"text":"♦","color":"gold"},{"text":"] ","color":"dark_gray"},{"text":"Quest finished! ","color":"gold"},{"text":"Oscar's adventure","color":"yellow"},{"text":"\n\nRewards:","color":"gold"}]
give @s minecraft:gold_nugget 10
tellraw @s {"text":"10x Gold Nugget","color":"yellow"}
give @s minecraft:emerald 1
tellraw @s {"text":"1x Emerald","color":"yellow"}
playsound minecraft:entity.player.levelup player @s
tellraw @s ""