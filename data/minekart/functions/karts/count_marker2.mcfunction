execute as @e[tag=mk2,tag=counter] at @s run tp @s @e[tag=mk2,tag=tour.respawn,limit=1,sort=nearest,scores={pos=0},distance=..30]
execute as @e[tag=mk2,tag=counter] at @s run scoreboard players add @s pos 1
execute as @e[tag=mk2,tag=counter] at @s run scoreboard players operation @e[tag=mk2,tag=tour.respawn,limit=1,sort=nearest] pos = @s pos