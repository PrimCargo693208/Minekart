
kill @e[tag=mk2,tag=counter]
execute at @e[tag=goal,tag=mk2] run summon minecraft:marker ~ ~ ~ {Tags:["mk2","counter","minekart2"]}
scoreboard players set @e[tag=mk2,tag=tour.respawn] pos 0
scoreboard players set @e[tag=mk2,tag=counter] pos 0
execute as @e[tag=tour.respawn,tag=mk2,sort=nearest] run function minekart:road/count_marker2