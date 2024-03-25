execute as @a store result bossbar minecraft:mk2.rounds value run scoreboard players get @s rounds
execute as @a if score @s rounds matches 4 run bossbar set minecraft:mk2.rounds color green