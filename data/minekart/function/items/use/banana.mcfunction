
execute store result score @s drop_move_x_prev run data get entity @n[tag=player] Pos[0] 1000
execute store result score @s drop_move_z_prev run data get entity @n[tag=player] Pos[2] 1000
scoreboard players set @s data 0