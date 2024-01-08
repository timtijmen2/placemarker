
execute as @e[type=minecraft:marker,tag=selector1] store result score @s marker.x run data get entity @s Pos[0]
execute as @e[type=minecraft:marker,tag=selectorx] store result score @s marker.y run data get entity @s Pos[1]
execute as @e[type=minecraft:marker,tag=selectory] store result score @s marker.z run data get entity @s Pos[2]

execute as @e[type=minecraft:marker,tag=selector2] store result score @s marker.x run data get entity @s Pos[0]
execute as @e[type=minecraft:marker,tag=selector2] store result score @s marker.y run data get entity @s Pos[1]
execute as @e[type=minecraft:marker,tag=selector2] store result score @s marker.z run data get entity @s Pos[2]


execute as @e[tag=selector1] at @s run function placemarker:select/selectx
execute as @e[tag=selectorx] at @s run function placemarker:select/selecty
execute as @e[tag=selectory] at @s run function placemarker:select/selectz


execute as @e[tag=selector2] unless entity @e[tag=selector1] unless entity @e[tag=selectorx] unless entity @e[tag=selectory] unless entity @e[tag=selectory] run kill @s