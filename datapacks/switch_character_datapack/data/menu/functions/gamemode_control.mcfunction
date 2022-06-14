execute as @a[tag=!gamemode,team=!lobby] run gamemode survival
execute as @a[tag=!gamemode,team=lobby,tag=!spectate] run gamemode adventure
execute as @a[tag=!gamemode,team=lobby,tag=spectate] run gamemode spectator

execute at @e[tag=spec] as @a[distance=..2,tag=spectate] run tag @s remove spectate

execute unless entity @e[tag=spec] run summon minecraft:armor_stand -7.5 65.5 -7.5 {CustomNameVisible:1b,NoGravity:1b,Invulnerable:1b,ShowArms:0b,Small:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["spec"],CustomName:'{"text":"Go here to leave the spectator mode!","color":"gold","italic":false}'}
setblock -7 63 -7 minecraft:birch_sign[rotation=14]{Text2:'{"text":"Click to enter","color":"gold","bold":false,"italic":false,"clickEvent":{"action":"run_command","value":"/tag @s add spectate"}}',Text3:'{"text":"spectator mode!","color":"gold","bold":false,"italic":false}'} replace

fill -1 62 -1 -1 62 8 minecraft:red_concrete
fill -1 62 -1 8 62 -1 minecraft:red_concrete


execute as @a[team=lobby] unless score @s static.health matches 20 run attribute @s minecraft:generic.max_health base set 20
execute as @a[team=lobby] unless score @s static.health matches 20 run effect give @s instant_health 1 10 true

execute as @e[tag=spec] at @s if entity @a[gamemode=spectator,distance=..12] run data merge entity @s {CustomNameVisible:1b}
execute as @e[tag=spec] at @s unless entity @a[gamemode=spectator,distance=..12] run data merge entity @s {CustomNameVisible:0b}
