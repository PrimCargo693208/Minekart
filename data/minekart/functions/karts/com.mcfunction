execute as @e[tag=mk2,tag=com_kart] at @s if score @e[tag=mk2,tag=tour.respawn,sort=nearest,limit=1,distance=1..] pos = @s pos run tag @s add tp_to_marker
execute as @e[tag=tp_to_marker,tag=mk2,tag=com_kart] at @s run tp @s ^ ^ ^.55 facing entity @e[tag=mk2,tag=tour.respawn,sort=nearest,limit=1]
execute as @e[tag=!tp_to_marker,tag=mk2,tag=com_kart] at @s run scoreboard players add @s pos 1



tag @e remove off_road
execute as @e[tag=mk2, tag=minekart2, tag=kart] at @s if entity @p[distance=...5] if block ~ ~-.5 ~ minecraft:red_wool run tag @s add off_road
execute as @e[tag=mk2, tag=minekart2, tag=kart] at @s if entity @p[distance=...5] if block ~ ~-.5 ~ minecraft:air if block ~ ~-1.5 ~ minecraft:air run tag @s add off_road

execute as @e[tag=off_road] at @s run scoreboard players set @p speed 0
execute as @e[tag=off_road] at @s run say @p calls for Lakitu
execute as @e[tag=off_road] at @s run tp @s @e[tag=mk2, tag=tour.respawn, sort=nearest, limit=1]