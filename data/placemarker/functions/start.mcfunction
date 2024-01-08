
execute as @e[type=minecraft:marker,tag=selector1] store result score @s marker.x run data get entity @s Pos[0]
execute as @e[type=minecraft:marker,tag=selector1] store result score @s marker.y run data get entity @s Pos[1]
execute as @e[type=minecraft:marker,tag=selector1] store result score @s marker.z run data get entity @s Pos[2]

execute as @e[type=minecraft:marker,tag=selector2] store result score @s marker.x run data get entity @s Pos[0]
execute as @e[type=minecraft:marker,tag=selector2] store result score @s marker.y run data get entity @s Pos[1]
execute as @e[type=minecraft:marker,tag=selector2] store result score @s marker.z run data get entity @s Pos[2]

