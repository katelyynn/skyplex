# SP housing
## claim house
## continue if available house


# copy over UUID to owner
## assigns location on NBT level
## for use in 1.19.4 execute on owner
data modify entity @e[tag=housing.location,tag=housing.temporary_claim,limit=1] Owner set from entity @s UUID

# remove temporary identifier
tag @e[tag=housing.location,tag=housing.temporary_claim] remove housing.temporary_claim