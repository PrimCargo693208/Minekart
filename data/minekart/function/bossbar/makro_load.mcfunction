
$bossbar add mk2:rounds_$(player_counter) ["Runden von ", {"selector":"@s"}]
$bossbar set mk2:rounds_$(player_counter) players @s
$bossbar set mk2:rounds_$(player_counter) style notched_12
$bossbar set mk2:rounds_$(player_counter) max 4
$bossbar set mk2:rounds_$(player_counter) color blue

$bossbar add mk2:speed_$(player_counter) ["Geschwindigkeit von ", {"selector":"@s"}]
$bossbar set mk2:speed_$(player_counter) players @s
$bossbar set mk2:speed_$(player_counter) style notched_10
$bossbar set mk2:speed_$(player_counter) max 100
$bossbar set mk2:speed_$(player_counter) color green