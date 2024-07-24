
execute store result score @s drop_move_x run data get entity @n[tag=player] Pos[0] 1000
execute store result score @s drop_move_z run data get entity @n[tag=player] Pos[2] 1000
scoreboard players operation @s drop_move_x_prev -= @s drop_move_x
scoreboard players operation @s drop_move_z_prev -= @s drop_move_z
scoreboard players operation @s drop_move_x_prev *= #-1 data
scoreboard players operation @s drop_move_z_prev *= #-1 data
tp @s ~ ~2 ~
execute store result entity @s Motion[0] double 0.0015 run scoreboard players get @s drop_move_x_prev
data modify entity @s Motion[1] set value 0.5
execute store result entity @s Motion[2] double 0.0015 run scoreboard players get @s drop_move_z_prev
