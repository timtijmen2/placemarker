##Place Z
execute unless entity @e[tag=blockmarker,distance=..0.1] run summon marker ~ ~ ~ {Tags:["blockmarker"]}

execute if score @s marker.z < @e[tag=selector2,limit=1] marker.z run tp @s ~ ~ ~1
execute if score @s marker.z > @e[tag=selector2,limit=1] marker.z run tp @s ~ ~ ~-1




execute if score @s marker.z = @e[tag=selector2,limit=1] marker.z run kill @s

execute unless entity @e[tag=selectory] run tellraw @a {"text":"Markers have been placed with the tag \"blockmarker\"","color":"green"}