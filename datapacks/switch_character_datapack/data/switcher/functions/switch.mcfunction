#particle
execute at @s run particle minecraft:explosion ~ ~ ~ 1 0.2 1 1 3

#position
execute unless score @s crt.deads matches 1.. run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,ShowArms:0b,Marker:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["saveA"]}
execute unless score @s crt.deads matches 1.. run execute at @s store result score @e[type=armor_stand,tag=saveA,limit=1,sort=nearest] id run scoreboard players get @s id
execute unless score @s crt.deads matches 1.. run tp @e[type=armor_stand,tag=saveA,limit=1,sort=nearest] @s
execute at @s as @e[type=armor_stand,tag=saveB] if score @s id = @p[sort=nearest] id run tp @p[sort=nearest] @s
execute as @e[type=armor_stand,tag=saveB] if score @s id = @a[limit=1,tag=switcher] id run kill @s
execute unless score @s crt.deads matches 1.. run tag @e[tag=saveA] add saveB
execute unless score @s crt.deads matches 1.. run tag @e[tag=saveA] remove saveA

#effect clear
effect clear @s

#fire clear
gamemode spectator @s

#inventory
clear @s
replaceitem entity @s container.8 minecraft:snowball{display:{Name:'{"text":"Switch Character","color":"gold","bold":true,"italic":false}',Lore:['[{"text":"Right-Click","color":"yellow","bold":false,"italic":true},{"text":" to switch your caracter.","color":"white","bold":false,"italic":false}]']},switcher:1b,Enchantments:[{id:"glow",lvl:1s}]} 1

#character items
execute store result score #temp var run scoreboard players get @s crtA.type
execute store result score @s crtA.type run scoreboard players get @s crtB.type
execute store result score @s crtB.type run scoreboard players get #temp var

execute as @s run function switcher:casetype

#health
execute store result score @s crtA.health run scoreboard players get @s crtB.health
execute store result score @s crtB.health run scoreboard players get @s static.health

execute as @s run function switcher:casehealth

effect give @s instant_health 1 100 true
effect give @s saturation 1000000 100 true

#end
scoreboard players set @s switch.timeout -100
tag @s remove switcher
