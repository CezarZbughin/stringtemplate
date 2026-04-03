# event.path
# 0
# 
#
#
execute if data storage stringtemplate:parser.scope value_provider.local{char:"."} run \
    return run scoreboard players get $pos stringtemplate
execute if data storage stringtemplate:parser.scope value_provider.local{char:"{"} run \
    return run scoreboard players get $pos stringtemplate
execute if data storage stringtemplate:parser.scope value_provider.local{char:"["} run \
    return run scoreboard players get $pos stringtemplate
scoreboard players add $pos stringtemplate 1
data modify storage stringtemplate:parser.scope value_provider.local.subpath set string \
    storage stringtemplate:parser.scope value_provider.local.subpath 1
data modify storage stringtemplate:parser.scope value_provider.local.char set value ""
data modify storage stringtemplate:parser.scope value_provider.local.char set string \
    storage stringtemplate:parser.scope value_provider.local.subpath 0 1
execute unless data storage stringtemplate:parser.scope value_provider.local{char:""} run \
    return run function stringtemplate:parser/internal/value_provider..find_dot
return run scoreboard players get $pos stringtemplate
