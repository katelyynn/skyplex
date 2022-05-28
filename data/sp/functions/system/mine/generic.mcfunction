# SP generic ore loop


# range check
execute unless score @s ore.state >= 1 internal unless score @s ore.state <= 3 internal run scoreboard players set @s ore.state 1

# ore present (state 1 - 2)
execute if block ~ ~ ~ air if score @s ore.state matches 1 run function sp:system/mine/state_1

# cobblestone present (state 2 - 3)
execute if block ~ ~ ~ air if score @s ore.state matches 2 run function sp:system/mine/state_2


# timer finished
execute if score @s ore.timer >= ore.respawn internal