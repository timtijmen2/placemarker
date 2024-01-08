##Place marker X

execute unless entity @e[tag=selectorx,distance=..0.1] run summon marker ~ ~ ~ {Tags:["selectorx"]}


execute if score @s marker.x > @e[tag=selector2,limit=1] marker.x run tp @s ~-1 ~ ~
execute if score @s marker.x < @e[tag=selector2,limit=1] marker.x run tp @s ~1 ~ ~
execute if score @s marker.x = @e[tag=selector2,limit=1] marker.x run kill @s

