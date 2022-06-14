#min players
scoreboard players set #const_min_pl var 2

execute if score #start_time var matches 0.. run scoreboard players remove #start_time var 1

replaceitem entity @a[team=lobby,tag=!queue,tag=!mod] hotbar.0 minecraft:lime_stained_glass_pane{display:{Name:'[{"text":"Drop to join the ","color":"green","bold":false,"italic":false},{"text":"queue!","color":"green","bold":true,"italic":false}]'}} 1
replaceitem entity @a[team=lobby,tag=queue,tag=!mod] hotbar.0 minecraft:red_stained_glass_pane{display:{Name:'[{"text":"Drop to leave the ","color":"red","bold":false,"italic":false},{"text":"queue!","color":"red","bold":true,"italic":false}]'}} 1

execute as @a[scores={static.joinqu=1..}] if score @s crtA.type matches 0.. if score @s crtB.type matches 0.. unless score @s crtA.type = @s crtB.type run tag @s add queue
execute as @a[scores={static.joinqu=1..}] unless score @s crtA.type matches 0.. run tellraw @s {"text":"Please choose a kit for character one.","color":"red"}
execute as @a[scores={static.joinqu=1..}] unless score @s crtB.type matches 0.. run tellraw @s {"text":"Please choose a kit for character two.","color":"red"}
execute as @a[scores={static.joinqu=1..}] if score @s crtA.type = @s crtB.type run tellraw @s {"text":"Please choose two different kits.", "color": "red"}
execute as @a[scores={static.joinqu=1..}] run scoreboard players set @s static.joinqu 0

execute as @a[scores={static.leavequ=1..}] run tag @s remove queue
execute as @a[scores={static.leavequ=1..}] run scoreboard players set @s static.leavequ 0

execute store result score #in_qu var run execute if entity @a[tag=queue]


execute unless entity @a[tag=!queue] run scoreboard players set #start_time var 0

execute if score #in_qu var >= #const_min_pl var if score #start_time var matches -1 unless entity @a[team=!lobby] run scoreboard players set #start_time var 300

execute if score #in_qu var < #const_min_pl var if score #start_time var matches 0.. run scoreboard players set #start_time var -1

execute if score #start_time var matches 0 run function menu:start

execute store result score #start_in var run scoreboard players get #start_time var
scoreboard players operation #start_in var /= #20 var
scoreboard players add #start_in var 1

execute if score #start_time var matches 0.. run title @a times 0 2 1
execute if score #start_time var matches 0.. run title @a[tag=queue] title {"text":"Get ready!","color":"#DE0053"}
execute if score #start_time var matches 0.. run title @a[tag=!queue] title {"text":"Join now!","color":"#DE0053"}
execute if score #start_time var matches 0.. run title @a subtitle ["",{"text":"The game starts in ","color":"#D4117C"},{"score":{"name":"#start_in","objective":"var"},"color":"#FEB95C"},{"text":"s!","color":"#D4117C"}]
