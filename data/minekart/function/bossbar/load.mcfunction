data remove storage minekart:id minekart
execute store result storage minekart:id minekart.player_counter int 1 run scoreboard players get @s id
execute store result storage minekart:id minekart.len int 1 run scoreboard players get @n[tag=mk2,tag=counter] pos
function minekart:bossbar/makro_load with storage minekart:id minekart