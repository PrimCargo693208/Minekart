function minekart:bossbar/unload

scoreboard objectives remove speed
scoreboard objectives remove pos
scoreboard objectives remove rounds
scoreboard objectives remove time_ago.item_collect
scoreboard objectives remove time_ago.sound_played
scoreboard objectives remove free.hand 
scoreboard objectives remove free.hotbar8
scoreboard objectives remove item.used
scoreboard objectives remove item.collected
scoreboard objectives remove data
scoreboard objectives remove id

function minekart:kill_everything
function minekart:unload_id
scoreboard objectives setdisplay below_name

clear @a #minekart:spawn_eggs[minecraft:custom_data={"namespace":"minekart"}]
clear @a #minekart:hotbar[minecraft:custom_data={"namespace":"minekart"}]

tag @e remove finished
tag @e remove player
tag @e remove minekart_player