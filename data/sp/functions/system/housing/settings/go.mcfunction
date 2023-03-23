# SP housing
## settings menu
## /trigger housing


# sfx
playsound minecraft:entity.item_frame.place player @s

# tellraw
## header
tellraw @s ["",{"text":"[","color":"dark_gray"},{"text":"⌂","color":"#EF9139"},{"text":"] ","color":"dark_gray"},{"text":"Your house","color":"#EF9139"}]

## footer
tellraw @s ""


scoreboard players reset @a housing