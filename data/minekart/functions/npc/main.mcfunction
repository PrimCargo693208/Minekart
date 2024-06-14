execute as @e[tag=mk2,tag=com_kart] at @s run function minekart:npc/movement

execute as @e[tag=mk2,tag=com_kart] at @s run tp @s ~ ~ ~ facing entity @e[tag=route,tag=mk2,limit=1,sort=nearest]