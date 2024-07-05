function minekart:unload_reload
function minekart:load_items

scoreboard objectives add speed dummy
scoreboard objectives add max_speed dummy
scoreboard objectives add pos dummy ["Position on Road"]
scoreboard objectives add rounds dummy ["Round of Race"]
scoreboard objectives add time_ago.item_collect dummy
scoreboard objectives add time_ago.sound_played dummy
scoreboard objectives add free.hand dummy
scoreboard objectives add free.hotbar8 dummy
scoreboard objectives add item.used minecraft.used:minecraft.warped_fungus_on_a_stick
scoreboard objectives add item.collected dummy
scoreboard objectives add data dummy

scoreboard players add @a pos 0
scoreboard players add @a rounds 0
scoreboard players add @a time_ago.item_collect 0
scoreboard players add @a time_ago.sound_played 0
scoreboard players add @a free.hand 0
scoreboard players add @a free.hotbar8 0
scoreboard players add @a item.collected 0
scoreboard players add started data 0

bossbar add mk2:rounds ["Runden"]
bossbar set mk2:rounds players @a
bossbar set mk2:rounds max 3
bossbar set mk2:rounds style notched_6
bossbar set mk2:rounds color yellow

scoreboard objectives setdisplay below_name rounds
execute as @e[tag=mk2, tag=minekart2, tag=kart] at @s run tp @s ~ ~ ~ 0 0
function minekart:main/count_marker
function minekart:main/summon_karts

tellraw @a  ["","[Server] ",{"text":"Reload","color":"dark_green","clickEvent":{"action":"suggest_command","value":"/reload"}},{"text":" erfolgreich","color":"dark_green"},"\n",{"text":" > Rennen starten","color":"gold","clickEvent":{"action":"suggest_command","value":"/function minekart:start"}}]