execute as @e[tag=catalog] at @s if entity @a[distance=..0] as @e[tag=rotate] at @s run tp @s ~ ~ ~ ~3 ~

execute as @a[scores={menu.catalog=0..13}] run tag @s add spectate
execute as @a[scores={menu.catalog=0..13}] run gamemode spectator
execute if entity @a[scores={menu.catalog=0..13}] as @e[tag=catalog] at @s as @a[scores={menu.catalog=0..13}] if score @s menu.catalog = @e[limit=1,sort=nearest] menu.catalog run spectate @e[limit=1,sort=nearest]

execute as @a[scores={menu.catalog=0..13}] run tellraw @s ["",{"text":"Hold ","color":"gold"},{"keybind":"key.sneak","color":"gold"},{"text":" to go back to the lobby!","color":"gold"}]

#execute as @a[scores={menu.catalog=0..13}] store result score @s var run scoreboard players get @s crtA.type
#execute as @a[scores={menu.catalog=0..13}] store result score @s crtA.type run scoreboard players get @s menu.catalog
#execute as @a[scores={menu.catalog=0..13}] run function switcher:casetype
#execute as @a[scores={menu.catalog=0..13}] store result score @s crtA.type run scoreboard players get @s var
#execute as @a[scores={menu.catalog=0..13}] run scoreboard players reset @s var

execute as @a[scores={menu.catalog=0..13}] at @s if entity @e[tag=catalog,distance=..0] run scoreboard players reset @s menu.catalog

execute as @e[tag=catalog] at @s as @a[distance=1..3] run scoreboard players set @s menu.catalog -1

execute as @a[scores={menu.catalog=-1}] run tag @s remove spectate
execute as @a[scores={menu.catalog=-1}] run tp @s -4 64 -4
execute as @a[scores={menu.catalog=-1}] run clear @s
execute as @a[scores={menu.catalog=-1}] run effect clear @s
execute as @a[scores={menu.catalog=-1}] run effect give @s saturation 1000000 10 true
execute as @a[scores={menu.catalog=-1}] run scoreboard players reset @s menu.catalog

execute as @a[team=lobby,tag=!mod] run replaceitem entity @s hotbar.5 minecraft:blue_stained_glass_pane{display:{Name:'{"text":"Click on a sign to view the kit.","color":"aqua","bold":false,"italic":false}',Lore:['{"text":"The kit of the character.","color":"gold","bold":false,"italic":true}']}} 1

execute as @a[team=lobby,tag=!mod] run replaceitem entity @s hotbar.8 written_book{display:{Name:'{"text":"How to play","color":"dark_purple","italic":"false"}'},pages:['["",{"text":" \\u0020 \\u0020 \\u0020 Live Twice","color":"dark_red"},{"text":"\\n","color":"reset"},{"text":"===================","color":"gold"},{"text":"\\nLive Twice is a battle game everyone versus everyone. The goal is to be the last one left.\\n\\nIn Live Twice, each of you plays two characters, between which you can switch back and forth at will during the game.","color":"reset"}]','["",{"text":"Choose a kit for each of your characters at the beginning. But choose well, because each kit has its own strengths (and weaknesses).","color":"#222222"},{"text":"\\n\\n","color":"reset"},{"text":"To change characters during the fight, throw the snowball. ","color":"#222222"}]','["",{"text":"You will leave your first character and slip into the second one immediately. The first one stays where it is, safe and invisible, until you slip back into it.","color":"#222222"},{"text":"\\n\\n","color":"reset"},{"text":"Every character has its own health. You cannot regenerate.","color":"#222222"}]','{"text":"If you are in danger, quickly change characters to protect the first one and surprise your enemies with the second one. If one of your characters dies, you can continue fighting with the other one. But remember: You only live twice. When both characters die, you have lost.","color":"#222222"}'],title:"How to play",author:hexadezimal6E_3B} 1
