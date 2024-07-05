execute as @e[tag=mk2,tag=counter] at @s run tp @s @n[tag=mk2,tag=route,scores={pos=0},distance=..30]
execute as @e[tag=mk2,tag=counter] at @s run scoreboard players add @s pos 1
execute as @e[tag=mk2,tag=counter] at @s run scoreboard players operation @n[tag=mk2,tag=route] pos = @s pos