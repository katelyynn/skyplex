# level up player
## Mining


# reset progress
scoreboard players set @s lvl.mine.progress 0

# increase level
scoreboard players operation @s lvl.mine += 1 internal

# announce
tellraw @s ["",{"text":"[","color":"dark_gray"},{"text":"↑","color":"green","bold":true},{"text":"] ","color":"dark_gray"},{"text":"You leveled up to ","color":"yellow"},{"text":"Mining ","color":"gold","bold":true},{"score":{"name":"@s","objective":"lvl.mine"},"color":"gold","bold":true}]
# sfx
playsound minecraft:entity.player.levelup player @s
# particle
particle minecraft:totem_of_undying ~ ~1 ~ 0.2 0.5 0.2 0.15 30