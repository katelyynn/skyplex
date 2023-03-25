# skyplex main loop


# display version number
## ver.year = 2022
## ver.month = 5
## ver.day = 15
bossbar set sp:ver name ["",{"text":"Skyplex ","color":"gold"},{"score":{"name":"ver.year","objective":"internal"},"color":"yellow"},{"text":".","color":"yellow"},{"score":{"name":"ver.month","objective":"internal"},"color":"yellow"},{"score":{"name":"ver.day","objective":"internal"},"color":"yellow"}]
# display @a
bossbar set sp:ver players @a[tag=!ignore_ver]
# set fill
execute store result bossbar sp:ver value run scoreboard players get ver.month internal
# colour
## Q1
execute if score ver.month internal matches 1..3 run bossbar set sp:ver color yellow
## Q2
execute if score ver.month internal matches 4..6 run bossbar set sp:ver color green
## Q3
execute if score ver.month internal matches 7..9 run bossbar set sp:ver color red
## Q4
execute if score ver.month internal matches 10..12 run bossbar set sp:ver color white


# passive systems
## mine
scoreboard players add @e[tag=ore.timer] ore.timer 1
execute as @e[tag=ore.generic] at @s run function sp:system/mine/generic
## farm
scoreboard players add @e[tag=farm.timer] farm.timer 1
execute as @e[tag=farm.generic] at @s run function sp:system/farm/generic
## wood
scoreboard players add @e[tag=wood.timer] wood.timer 1
execute as @e[tag=wood.generic] at @s run function sp:system/wood/generic
# quests
execute as @a at @s run function sp:system/quest/generic


# track player level requirements
execute as @a run function sp:level/main

# check level is >= 1
execute as @a run function sp:level/check

# player tools
execute as @a at @s run function sp:system/tool/main

# display player's level
execute as @a run function sp:level/show

# check level up
execute as @a run function sp:level/up/check

# call player's level in trigger
scoreboard players enable @a[tag=!ignore_call] stats
execute as @a if score @s stats matches 1.. run function sp:level/call

# housing
function sp:system/housing/main


# effect villagers
effect give @e[type=villager] resistance 2 255 true
effect give @e[type=villager] regeneration 2 255 true
effect give @e[type=villager] fire_resistance 2 255 true
effect give @e[type=villager] water_breathing 2 255 true
# face players
execute as @e[type=villager] at @s facing entity @p[distance=..6] feet run tp ~ ~ ~