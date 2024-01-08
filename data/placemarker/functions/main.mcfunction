scoreboard players display name @e[tag=selector1] marker.x "Selector 1"
scoreboard players display name @e[tag=selector2] marker.x "Selector 2"
scoreboard players display name @e[tag=selectorx] marker.y "Selector X"


execute as @e[tag=selector1,tag=!foundsel] at @s if entity @e[tag=selector1,tag=foundsel] run tellraw @p ["",{"text":"Selector has already been placed.","color":"red"},{"text":" "},{"text":"[","bold":true,"color":"dark_red","clickEvent":{"action":"run_command","value":"/kill @e[tag=selector1]"}},{"text":"Click to remove","bold":true,"color":"red","clickEvent":{"action":"run_command","value":"/kill @e[tag=selector1]"}},{"text":"]","bold":true,"color":"dark_red","clickEvent":{"action":"run_command","value":"/kill @e[tag=selector1]"}}]
execute as @e[tag=selector1,tag=!foundsel] at @s if entity @e[tag=selector1,tag=foundsel] run kill @s
execute as @e[tag=selector1,tag=!foundsel] at @s run tag @s add foundsel

execute as @e[tag=selectory] at @s run particle minecraft:dust 0 1 0 2 ~ ~ ~ 0 0 0 1 1
execute as @e[tag=selector1] at @s run particle minecraft:dust 0 1 1 1 ~ ~ ~ 0 0 0 1 1
execute as @e[tag=selector2] at @s run particle minecraft:dust 0 1 1 1 ~ ~ ~ 0 0 0 1 1

execute if entity @e[tag=selector2] run function placemarker:select