
execute as @e[tag=mk2,tag=kart] at @s run data merge entity @s {NoGravity:true}
execute as @e[tag=mk2,tag=kart] at @s run tp @s ~ ~0.1 ~
execute as @e[tag=mk2,tag=kart] at @s run setblock ~ ~-0.1 ~ stone

function minekart:npc/summon_com

scoreboard players add @a speed 0
scoreboard players add @e[tag=com_player,tag=mk2] pos 0
scoreboard players add @e[tag=com_player,tag=mk2] rounds 0
scoreboard players add @e[tag=com_player,tag=mk2] item.collected 0
scoreboard players add @e[tag=com_player,tag=mk2] item.used 0
scoreboard players set started data 1