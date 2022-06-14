execute if entity @s[tag=nomuse] run tellraw @s {"text":"Set music to on.", "color":"#0033ee"}
execute if entity @s[tag=nomuse] run tag @s add muse

execute if entity @s[tag=!nomuse] run tellraw @s {"text":"Set music to off.", "color":"#0033ee"}
execute if entity @s[tag=!nomuse] run tag @s add nomuse


execute if entity @s[tag=muse] run tag @s remove nomuse
execute if entity @s[tag=muse] run tag @s remove muse
