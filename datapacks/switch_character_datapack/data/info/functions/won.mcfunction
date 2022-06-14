playsound minecraft:music_disc.pigstep master @a 0 64 0 100
scoreboard players set #win_sound var -241
team leave @s
title @a times 0 230 11
title @a title {"selector":"@s", "color":"#dd1010"}
title @a subtitle {"text":"wins!", "color": "yellow"}
execute as @s run function switcher:killed2

kill @e[tag=saveB]

team empty fly_bow
team empty knight
team empty turtle
team empty elf
team empty assassin
team empty squire
team empty tank
team empty ghost
team empty giant
team empty dwarf
team empty healer
team empty smart
team empty builder
team empty prince

scoreboard players set @a crt.deads 0

function menu:load_stage
