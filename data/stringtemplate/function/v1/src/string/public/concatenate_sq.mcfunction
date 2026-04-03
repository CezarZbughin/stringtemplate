#
# Concatenates a list of strings that are already single-quates-escaped
#
# @param stringtemplate:string concatenate_sq.in : string[]
#
# @output stringtemplate:string self
#
data modify storage stringtemplate:string self set value ""

scoreboard players set $concatenate.length stringtemplate 0

execute store result score $concatenate.length stringtemplate run \
    data get storage stringtemplate:string concatenate_sq.in

execute if score $concatenate.length stringtemplate matches ..4 run \
    return run function stringtemplate:v1/src/string/internal/concatenate_sq..do4

execute if score $concatenate.length stringtemplate matches ..8 run \
    return run function stringtemplate:v1/src/string/internal/concatenate_sq..do8

execute if score $concatenate.length stringtemplate matches ..16 run \
    return run function stringtemplate:v1/src/string/internal/concatenate_sq..do16

return run function stringtemplate:v1/src/string/internal/concatenate_sq..do32