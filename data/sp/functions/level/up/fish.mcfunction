# level up player
## Fishing


# reset progress
scoreboard players set @s lvl.fish.progress 0

# increase level
scoreboard players operation @s lvl.fish += 1 internal

# announce
tellraw @s ["",{"text":"[","color":"dark_gray"},{"text":"↑","color":"green","bold":true},{"text":"] ","color":"dark_gray"},{"text":"You leveled up to ","color":"yellow"},{"text":"Fishing ","color":"gold","bold":true},{"score":{"name":"@s","objective":"lvl.fish"},"color":"gold","bold":true}]
# sfx
playsound minecraft:entity.player.levelup player @s