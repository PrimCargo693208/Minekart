
execute as @e[tag=mk2,tag=com_player] at @s if block ^1 ^ ^ #minekart:air if block ^ ^ ^1 #minekart:border run tp @s ^ ^ ^ ~-10 ~
execute as @e[tag=mk2,tag=com_player] at @s if block ^-1 ^ ^ #minekart:air if block ^ ^ ^1 #minekart:border run tp @s ^ ^ ^ ~10 ~
execute as @e[tag=mk2,tag=com_player] at @s if block ^1 ^ ^ #minekart:border run tp @s ~ ~ ~ ~10 ~
execute as @e[tag=mk2,tag=com_player] at @s if block ^-1 ^ ^ #minekart:border run tp @s ~ ~ ~ ~-10 ~
execute as @e[tag=mk2,tag=com_player] at @s if block ^2 ^ ^ #minekart:air if block ^ ^ ^2 #minekart:border run tp @s ^ ^ ^ ~-5 ~
execute as @e[tag=mk2,tag=com_player] at @s if block ^-2 ^ ^ #minekart:air if block ^ ^ ^2 #minekart:border run tp @s ^ ^ ^ ~5 ~
execute as @e[tag=mk2,tag=com_player] at @s if block ^2 ^ ^ #minekart:border run tp @s ~ ~ ~ ~5 ~
execute as @e[tag=mk2,tag=com_player] at @s if block ^-2 ^ ^ #minekart:border run tp @s ~ ~ ~ ~-5 ~



tag @e remove off_road_com
execute as @e[tag=mk2,tag=com_player] at @s if block ~ ~-.5 ~ minecraft:red_wool run tag @s add off_road_com
execute as @e[tag=mk2,tag=com_player] at @s if block ~ ~-.5 ~ minecraft:air if block ~ ~-1.5 ~ minecraft:air run tag @s add off_road_com

execute as @e[tag=off_road_com] at @s run scoreboard players set @s speed -100
execute as @e[tag=off_road_com] at @s run tp @n[tag=mk2,tag=com_kart] @n[tag=mk2, tag=route]
execute as @e[tag=off_road_com] at @s run tp @s @n[tag=mk2, tag=route]



scoreboard players add @e[tag=mk2,tag=com_player] speed 0
scoreboard players add @e[tag=mk2,tag=com_player,scores={speed=..59}] speed 1
function minekart:npc/movement
