execute as @e[tag=mk2,tag=tour.respawn] at @s at @e[tag=mk2,tag=com_kart,limit=1,sort=nearest] if score @s pos = @e[limit=1,sort=nearest,tag=mk2,tag=com_kart] pos run tp @e[tag=mk2,tag=com_kart,limit=1,sort=nearest] ^ ^ ^.5 facing entity @s
execute as @e[tag=mk2,tag=com_kart] at @s if score @e[tag=mk2,tag=tour.respawn,distance=..1,limit=1,sort=nearest] pos = @s pos run scoreboard players add @s pos 1
scoreboard players add @e[tag=mk2,tag=com_kart] pos 2
execute as @e[tag=mk2,tag=com_kart] at @s if score @e[tag=mk2,tag=counter,limit=1] pos = @s pos run scoreboard players add @s rounds 1
execute as @e[tag=mk2,tag=com_kart] at @s if score @e[tag=mk2,tag=counter,limit=1] pos = @s pos run scoreboard players set @s pos 3
scoreboard players remove @e[tag=mk2,tag=com_kart] pos 2

execute as @e[tag=mk2, tag=minekart2, tag=com_kart] at @s if block ~ ~-1 ~ minecraft:purpur_stairs run tp ~ ~.1 ~
execute as @e[tag=mk2, tag=minekart2, tag=com_kart] at @s if block ~ ~-2 ~ minecraft:prismarine_brick_stairs run tp ~ ~-.1 ~
execute as @e[tag=mk2, tag=minekart2, tag=com_kart] at @s if block ~ ~-1 ~ minecraft:purpur_stairs run tp ~ ~.1 ~
execute as @e[tag=mk2, tag=minekart2, tag=com_kart] at @s if block ~ ~-2 ~ minecraft:prismarine_brick_stairs run tp ~ ~-.1 ~
execute as @e[tag=mk2, tag=minekart2, tag=com_kart] at @s if block ~ ~-1 ~ minecraft:purpur_stairs run tp ~ ~.1 ~
execute as @e[tag=mk2, tag=minekart2, tag=com_kart] at @s if block ~ ~-2 ~ minecraft:prismarine_brick_stairs run tp ~ ~-.1 ~
execute as @e[tag=mk2, tag=minekart2, tag=com_kart] at @s if block ~ ~-1 ~ minecraft:purpur_stairs run tp ~ ~.1 ~
execute as @e[tag=mk2, tag=minekart2, tag=com_kart] at @s if block ~ ~-2 ~ minecraft:prismarine_brick_stairs run tp ~ ~-.1 ~
execute as @e[tag=mk2, tag=minekart2, tag=com_kart] at @s if block ~ ~-1 ~ minecraft:purpur_stairs run tp ~ ~.1 ~
execute as @e[tag=mk2, tag=minekart2, tag=com_kart] at @s if block ~ ~-2 ~ minecraft:prismarine_brick_stairs run tp ~ ~-.1 ~
execute as @e[tag=mk2, tag=minekart2, tag=com_kart] at @s if block ~ ~-1 ~ minecraft:purpur_stairs run tp ~ ~.05 ~
execute as @e[tag=mk2, tag=minekart2, tag=com_kart] at @s if block ~ ~-2 ~ minecraft:prismarine_brick_stairs run tp ~ ~-.05 ~

tag @e remove off_road
execute as @e[tag=mk2, tag=minekart2, tag=com_kart] at @s if block ~ ~-.5 ~ minecraft:red_wool run tag @s add off_road
execute as @e[tag=mk2, tag=minekart2, tag=com_kart] at @s if block ~ ~-.5 ~ minecraft:air if block ~ ~-1.5 ~ minecraft:air run tag @s add off_road

execute as @e[tag=off_road] at @s run scoreboard players set @s speed 0
execute as @e[tag=off_road] at @s run say @s calls for Lakitu
execute as @e[tag=off_road] at @s run tp @s @e[tag=mk2, tag=tour.respawn, sort=nearest, limit=1]