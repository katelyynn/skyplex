# SP generic farm loop


# range check
execute unless score @s farm.state matches 1..3 run scoreboard players set @s farm.state 1

# ore present (state 1 -> 2)
execute if block ~ ~ ~ air if score @s farm.state matches 1 run function sp:system/farm/state_1


# timer finished
execute if entity @s[tag=farm.wheat] if score @s farm.timer >= farm.wheat internal run function sp:system/farm/finish