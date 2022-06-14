kill @e[type=armor_stand,tag=saveB]

scoreboard players set @a[tag=queue] crtB.health 20
execute as @a[tag=queue] run function switcher:switch

kill @e[type=armor_stand,tag=saveB]

fill 0 110 0 47 110 47 air
execute positioned 24.0 0 24.0 run spreadplayers ~ ~ 23 23 false @a[tag=queue]
fill 0 110 0 47 110 47 barrier

scoreboard players set @a[tag=queue] crtB.health 20
execute as @a[tag=queue] run function switcher:switch

scoreboard players set @a[tag=queue] switch.timeout 0


tag @a[tag=queue] remove queue
