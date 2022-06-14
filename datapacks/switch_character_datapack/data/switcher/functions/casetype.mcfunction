#join team
execute if score @s crtA.type matches 0 run team join fly_bow
execute if score @s crtA.type matches 1 run team join knight
execute if score @s crtA.type matches 2 run team join turtle
execute if score @s crtA.type matches 3 run team join elf
execute if score @s crtA.type matches 4 run team join assassin
execute if score @s crtA.type matches 5 run team join squire
execute if score @s crtA.type matches 6 run team join tank
execute if score @s crtA.type matches 7 run team join ghost
execute if score @s crtA.type matches 8 run team join giant
execute if score @s crtA.type matches 9 run team join dwarf
execute if score @s crtA.type matches 10 run team join healer
execute if score @s crtA.type matches 11 run team join smart
execute if score @s crtA.type matches 12 run team join builder
execute if score @s crtA.type matches 13 run team join prince

#get items
execute as @s if entity @s[team=fly_bow] run function crt:fly_bow
execute as @s if entity @s[team=knight] run function crt:knight
execute as @s if entity @s[team=turtle] run function crt:turtle
execute as @s if entity @s[team=elf] run function crt:elf
execute as @s if entity @s[team=assassin] run function crt:assassin
execute as @s if entity @s[team=squire] run function crt:squire
execute as @s if entity @s[team=tank] run function crt:tank
execute as @s if entity @s[team=ghost] run function crt:ghost
execute as @s if entity @s[team=giant] run function crt:giant
execute as @s if entity @s[team=dwarf] run function crt:dwarf
execute as @s if entity @s[team=healer] run function crt:healer
execute as @s if entity @s[team=smart] run function crt:smart
execute as @s if entity @s[team=builder] run function crt:builder
execute as @s if entity @s[team=prince] run function crt:prince
