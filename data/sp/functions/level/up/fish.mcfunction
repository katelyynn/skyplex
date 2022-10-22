# level up player
## Fishing


function sp:level/up/generic

# reset progress
## accounts for extra XP after level-up
scoreboard players operation @s lvl.fish.progress -= @s lvl.fish

# increase level
scoreboard players operation @s lvl.fish += 1 internal

# announce
tellraw @s ["",{"text":"[","color":"dark_gray"},{"text":"↑","color":"green","bold":true},{"text":"] ","color":"dark_gray"},{"text":"You leveled up to ","color":"yellow"},{"text":"Fishing ","color":"gold","bold":true},{"score":{"name":"@s","objective":"lvl.fish"},"color":"gold","bold":true}]
# sfx
playsound minecraft:entity.player.levelup player @s
# particle
particle minecraft:totem_of_undying ~ ~1 ~ 0.2 0.5 0.2 0.15 30