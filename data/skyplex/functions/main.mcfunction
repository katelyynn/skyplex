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