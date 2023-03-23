# SP housing
## claim house
## continue if available house


# mark self as owner
scoreboard players add @s housing.owner 0
scoreboard players add @s housing.owner 1

# assign housing index
## next_index defines the latest entry point to match with a location
scoreboard players add next_index housing.index 0
scoreboard players operation @e[tag=housing.location,tag=housing.temporary_claim,limit=1] housing.index = next_index housing.index
## set owner's index
scoreboard players operation @s housing.index = next_index housing.index
## advance index
scoreboard players add next_index housing.index 1

# remove temporary identifier
tag @e[tag=housing.location,tag=housing.temporary_claim] remove housing.temporary_claim