## quest 1
execute if score @s quest_1 matches 1.. run function sp:system/quest/1/end
execute unless score @s quest_1 matches 1.. run advancement revoke @s only sp:quest_1