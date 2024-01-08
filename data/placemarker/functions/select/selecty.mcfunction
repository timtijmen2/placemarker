##Place Y
execute unless entity @e[tag=selectory,distance=..0.1] run summon marker ~ ~ ~ {Tags:["selectory"]}

execute if score @s marker.y < @e[tag=selector2,limit=1] marker.y run tp @s ~ ~1 ~
execute if score @s marker.y > @e[tag=selector2,limit=1] marker.y run tp @s ~ ~-1 ~

execute if score @s marker.y = @e[tag=selector2,limit=1] marker.y run kill @s