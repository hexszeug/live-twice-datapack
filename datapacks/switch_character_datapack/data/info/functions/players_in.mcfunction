execute store result score #players_in var run execute if entity @a[team=!lobby]
execute if score #players_in var matches 2.. run title @a actionbar ["",{"text":"There are ","color":"#aaaa00"},{"score":{"name":"#players_in","objective":"var"},"color":"#aaaa00"},{"text":" players left in the game.","color":"#aaaa00"}]
execute if score #players_in var matches 1 run title @a actionbar ["",{"text":"There is ","color":"#aaaa00"},{"score":{"name":"#players_in","objective":"var"},"color":"#aaaa00"},{"text":" player left in the game.","color":"#aaaa00"}]
#execute if score #players_in var matches 0 run title @a[tag=!queue,tag=!mod] actionbar [{"text":"Drop the ","color":"#aaaa00"},{"text":"green","color":"#00dd00"},{"text":" glas pane to start a new round!","color":"#aaaa00"}]
