
execute if entity @e[tag=mk2,tag=minekart2,tag=goal] run kill @e[tag=minekart2,tag=com]
execute if entity @e[tag=mk2,tag=minekart2,tag=goal] run kill @e[tag=minekart2,tag=kart]

execute as @e[tag=mk2,tag=minekart2,tag=goal] at @s positioned ~-2 ~ ~1 unless entity @e[tag=mk2,tag=kart,distance=...7] run summon minecraft:minecart ~ ~ ~ {id:"minecraft:minecart",NoGravity:true,Silent:true,Invulnerable:true,Tags:["minekart2","mk2","kart"]}
execute as @e[tag=mk2,tag=minekart2,tag=goal] at @s positioned ~ ~ ~1 unless entity @e[tag=mk2,tag=kart,distance=...7] run summon minecraft:minecart ~ ~ ~ {id:"minecraft:minecart",NoGravity:true,Silent:true,Invulnerable:true,Tags:["minekart2","mk2","kart"]}
execute as @e[tag=mk2,tag=minekart2,tag=goal] at @s positioned ~2 ~ ~1 unless entity @e[tag=mk2,tag=kart,distance=...7] run summon minecraft:minecart ~ ~ ~ {id:"minecraft:minecart",NoGravity:true,Silent:true,Invulnerable:true,Tags:["minekart2","mk2","kart"]}
execute as @e[tag=mk2,tag=minekart2,tag=goal] at @s positioned ~-1 ~ ~2 unless entity @e[tag=mk2,tag=kart,distance=...7] run summon minecraft:minecart ~ ~ ~ {id:"minecraft:minecart",NoGravity:true,Silent:true,Invulnerable:true,Tags:["minekart2","mk2","kart"]}
execute as @e[tag=mk2,tag=minekart2,tag=goal] at @s positioned ~1 ~ ~2 unless entity @e[tag=mk2,tag=kart,distance=...7] run summon minecraft:minecart ~ ~ ~ {id:"minecraft:minecart",NoGravity:true,Silent:true,Invulnerable:true,Tags:["minekart2","mk2","kart"]}
execute as @e[tag=mk2,tag=minekart2,tag=goal] at @s positioned ~ ~ ~3 unless entity @e[tag=mk2,tag=kart,distance=...7] run summon minecraft:minecart ~ ~ ~ {id:"minecraft:minecart",NoGravity:true,Silent:true,Invulnerable:true,Tags:["minekart2","mk2","kart"]}
