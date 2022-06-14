execute as @a[scores={music.timeout=0}] run playsound minecraft:music_disc.stal record @s 24 100 24 200
execute as @a[scores={music.timeout=0}] run scoreboard players set @s music.timeout -3000

execute as @a[scores={music.timeout=..-1}] run scoreboard players add @s music.timeout 1

execute as @a[scores={music.timeout=..0},team=lobby] run scoreboard players set @s music.timeout 1
execute as @a unless score @s music.timeout matches ..0 run stopsound @s record
execute as @a[team=!lobby,tag=!nomuse] unless score @s music.timeout matches ..0 run scoreboard players set @s music.timeout 0

setblock -6 63 3 minecraft:birch_sign[rotation=9]{Text2:'{"text":"Click to toggle","color":"blue","bold":false,"italic":false,"clickEvent":{"action":"run_command","value":"function music:toggle"}}',Text3:'{"text":"music","color":"blue","bold":false,"italic":false}',Text4:'[{"text":"on","color":"dark_aqua","bold":true,"italic":false},{"text":" and ","color":"blue","bold":false,"italic":false},{"text":"off!","color":"dark_aqua","bold":true,"italic":false}]'} replace
