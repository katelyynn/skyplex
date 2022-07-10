## quest 5 (Help the Baker)
tellraw @s ["",{"text":"[","color":"dark_gray"},{"text":"♦","color":"gold"},{"text":"] ","color":"dark_gray"},{"text":"Quest finished! ","color":"gold"},{"text":"Help the Baker","color":"yellow"},{"text":"\n\nRewards:","color":"gold"}]
give @s minecraft:bread 32
tellraw @s {"text":"32x Bread","color":"yellow"}
give @s minecraft:gold_nugget 10
tellraw @s {"text":"10x Gold Nugget","color":"yellow"}
give @s minecraft:emerald 1
tellraw @s {"text":"1x Emerald","color":"yellow"}
playsound minecraft:entity.player.levelup player @s
tellraw @s ""