#
#
scoreboard players set $parser.parse_nbt.pos stringtemplate 0
data modify storage stringtemplate:parser parse_nbt.local.pos set value 0

data modify storage stringtemplate:parser parse_nbt.local.varname set value ""

data modify storage stringtemplate:parser parse_nbt.local.subpath set value ""
data modify storage stringtemplate:parser parse_nbt.local.subpath set string \
    storage stringtemplate:parser parse_nbt.in.nbt

function stringtemplate:v1/src/parser/internal/parse_nbt..find_varname

data modify storage stringtemplate:parser parse_nbt.local.scope_var set value {core:"null"}

execute unless data storage stringtemplate:parser parse_nbt.local{varname:""} run \
    function stringtemplate:v1/src/parser/internal/parse_nbt..get_var_from_scope with \
    storage stringtemplate:parser parse_nbt.local

execute if data storage stringtemplate:parser parse_nbt.local.scope_var{core:"null"} run \
    return run function stringtemplate:v1/src/parser/internal/parse_nbt..default_var with \
        storage stringtemplate:parser self

return run function stringtemplate:v1/src/parser/internal/parse_nbt..known_var