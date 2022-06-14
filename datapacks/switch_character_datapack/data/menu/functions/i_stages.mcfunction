
#nubers of stages +1
scoreboard players set #random_index var 10
function menu:random
execute store result score #random_res var run scoreboard players get @e[sort=random,tag=random,limit=1] var
kill @e[tag=random,type=armor_stand]
#tellraw @a ["",{"text":"Stage no."},{"score":{"name":"#random_res","objective":"var"}},{"text":" is selected for the next round."}]

execute if score #random_res var matches 1 as @e[tag=stage_logo] run data merge entity @s {Item: {id:"minecraft:filled_map", Count: 1b, tag:{map:1}}}
execute if score #random_res var matches 2 as @e[tag=stage_logo] run data merge entity @s {Item: {id:"minecraft:filled_map", Count: 1b, tag:{map:2}}}
execute if score #random_res var matches 3 as @e[tag=stage_logo] run data merge entity @s {Item: {id:"minecraft:filled_map", Count: 1b, tag:{map:3}}}
execute if score #random_res var matches 4 as @e[tag=stage_logo] run data merge entity @s {Item: {id:"minecraft:filled_map", Count: 1b, tag:{map:4}}}
execute if score #random_res var matches 5 as @e[tag=stage_logo] run data merge entity @s {Item: {id:"minecraft:filled_map", Count: 1b, tag:{map:5}}}
execute if score #random_res var matches 6 as @e[tag=stage_logo] run data merge entity @s {Item: {id:"minecraft:filled_map", Count: 1b, tag:{map:6}}}
execute if score #random_res var matches 7 as @e[tag=stage_logo] run data merge entity @s {Item: {id:"minecraft:filled_map", Count: 1b, tag:{map:7}}}
execute if score #random_res var matches 8 as @e[tag=stage_logo] run data merge entity @s {Item: {id:"minecraft:filled_map", Count: 1b, tag:{map:8}}}
execute if score #random_res var matches 9 as @e[tag=stage_logo] run data merge entity @s {Item: {id:"minecraft:filled_map", Count: 1b, tag:{map:9}}}

execute if score #random_res var matches 1 run setblock 0 60 0 minecraft:structure_block[mode=load]{name:"level_01",posY:2,rotation:"NONE",mirror:"NONE",mode:"LOAD"} replace
execute if score #random_res var matches 2 run setblock 0 60 0 minecraft:structure_block[mode=load]{name:"level_02",posY:2,rotation:"NONE",mirror:"NONE",mode:"LOAD"} replace
execute if score #random_res var matches 3 run setblock 0 60 0 minecraft:structure_block[mode=load]{name:"level_03",posY:2,rotation:"NONE",mirror:"NONE",mode:"LOAD"} replace
execute if score #random_res var matches 4 run setblock 0 60 0 minecraft:structure_block[mode=load]{name:"level_04",posY:2,rotation:"NONE",mirror:"NONE",mode:"LOAD"} replace
execute if score #random_res var matches 5 run setblock 0 60 0 minecraft:structure_block[mode=load]{name:"level_05",posY:2,rotation:"NONE",mirror:"NONE",mode:"LOAD"} replace
execute if score #random_res var matches 6 run setblock 0 60 0 minecraft:structure_block[mode=load]{name:"level_06",posY:2,rotation:"NONE",mirror:"NONE",mode:"LOAD"} replace
execute if score #random_res var matches 7 run setblock 0 60 0 minecraft:structure_block[mode=load]{name:"level_07",posY:2,rotation:"NONE",mirror:"NONE",mode:"LOAD"} replace
execute if score #random_res var matches 8 run setblock 0 60 0 minecraft:structure_block[mode=load]{name:"level_08",posY:2,rotation:"NONE",mirror:"NONE",mode:"LOAD"} replace
execute if score #random_res var matches 9 run setblock 0 60 0 minecraft:structure_block[mode=load]{name:"level_09",posY:2,rotation:"NONE",mirror:"NONE",mode:"LOAD"} replace
