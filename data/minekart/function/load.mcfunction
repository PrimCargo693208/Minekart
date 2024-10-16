function minekart:unload_reload
function minekart:items

scoreboard objectives add speed dummy
scoreboard objectives add max_speed dummy
scoreboard objectives add pos dummy ["Position on Road"]
scoreboard objectives add rounds dummy ["Round of Race"]
scoreboard objectives add gm dummy ["Gamemode"]
scoreboard objectives add time_ago.item_collect dummy
scoreboard objectives add time_ago.sound_played dummy
scoreboard objectives add free.hand dummy
scoreboard objectives add free.hotbar8 dummy
scoreboard objectives add item.used minecraft.used:minecraft.warped_fungus_on_a_stick
scoreboard objectives add item.collected dummy
scoreboard objectives add data dummy
scoreboard objectives add dev trigger
scoreboard objectives add drop_move_x dummy
scoreboard objectives add drop_move_z dummy
scoreboard objectives add drop_move_x_prev dummy
scoreboard objectives add drop_move_z_prev dummy

scoreboard players add @a pos 0
scoreboard players add @a rounds 0
scoreboard players add @a time_ago.item_collect 0
scoreboard players add @a time_ago.sound_played 0
scoreboard players add @a free.hand 0
scoreboard players add @a free.hotbar8 0
scoreboard players add @a item.collected 0
scoreboard players add started data 0
scoreboard players set @a dev 0
scoreboard players enable @a dev
scoreboard players set #-1 data -1

execute as @e[tag=mk2, tag=minekart2, tag=kart] at @s run tp @s ~ ~ ~ 0 0
function minekart:main/count_marker
function minekart:main/summon_karts

tellraw @a [{"text":"\n"},{"bold":true,"color":"aqua","hoverEvent":{"action":"show_text","value":[{"text":"(version 0.3.0)","italic":true}]},"text":"Minekart v2"},{"text":"\n"},{"clickEvent":{"action":"suggest_command","value":"/reload"},"color":"dark_green","text":"Reload"},{"color":"dark_green","text":" erfolgreich"},{"text":"\n"},{"clickEvent":{"action":"suggest_command","value":"/function minekart:start"},"color":"gold","text":" > Rennen starten"},"\n",{"clickEvent":{"action":"suggest_command","value":"/tp @s @n[tag=mk2,tag=goal]"},"color":"gold","text":" > Zur Ziellinie"},{"clickEvent":{"action":"open_url","value":"https://github.com/PrimCargo693208/Minekart_Resourcepack"},"color":"gold","hoverEvent":{"action":"show_text","value":[{"text":"Download on \n","color":"gray"},{"text":"\uEff2GitHub","color":"white","bold":true}]},"text":"\n > Download Resourcepack"}]

function id:load
execute unless function id:load run scoreboard players set loaded_id data 1
execute unless score loaded_id data matches 1 run tellraw @a [{"text":"\nThe data pack \"","color":"red"},{"text":"ID", "clickEvent": {"action": "suggest_command", "value": "/datapack enable \"file/ID.zip\""}, "hoverEvent": {"action": "show_text", "value": "/datapack enable \"file/ID.zip\"\n(suggest command)"}},{"text":"\" could not be loaded. Please check if it has been installed and activated in this world!","color":"red"}, "\n", {"text":"Minekart v2","color":"dark_aqua","italic": true}]
