execute as @a[scores={switch.timeout=..-1}] run scoreboard players add @s switch.timeout 1

execute as @a[scores={static.deaths=2..,crt.deads=1}] run function switcher:killed2
execute as @a[scores={static.deaths=2..}] unless score @s crt.deads matches 1.. run function switcher:killed1
execute as @a[scores={static.deaths=2..,crt.deads=2}] run scoreboard players reset @s crt.deads
execute as @a[scores={static.deaths=1}] run scoreboard players set @s static.deaths 2

execute as @a[scores={static.switch=1..}] if entity @s[nbt={OnGround:1b},scores={switch.timeout=0}] run tag @s add switcher
execute as @a[scores={static.switch=1..}] unless entity @s[nbt={OnGround:1b},scores={switch.timeout=0}] run replaceitem entity @s container.8 minecraft:snowball{display:{Name:'{"text":"Switch Character","color":"gold","bold":true,"italic":false}',Lore:['[{"text":"Right-Click","color":"yellow","bold":false,"italic":true},{"text":" to switch your caracter.","color":"white","bold":false,"italic":false}]']},switcher:1b,Enchantments:[{id:"glow",lvl:1s}]} 1
execute as @a[scores={static.switch=1..}] run scoreboard players reset @s static.switch
execute as @a[tag=switcher] run function switcher:switch

execute as @a[scores={static.lost_ball=1..}] run replaceitem entity @s container.8 minecraft:snowball{display:{Name:'{"text":"Switch Character","color":"gold","bold":true,"italic":false}',Lore:['[{"text":"Right-Click","color":"yellow","bold":false,"italic":true},{"text":" to switch your caracter.","color":"white","bold":false,"italic":false}]']},switcher:1b,Enchantments:[{id:"glow",lvl:1s}]} 1
execute as @a[scores={static.lost_ball=1..}] run scoreboard players set @s static.lost_ball 0
