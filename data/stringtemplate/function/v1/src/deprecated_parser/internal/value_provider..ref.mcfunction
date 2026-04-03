#
#
#
data modify storage stringtemplate:parser.scope value_provider.local.subpath set \
    from storage stringtemplate:parser.scope value_provider.in.expression
scoreboard players set $pos stringtemplate 0
execute store result storage stringtemplate:parser.scope value_provider.local.dot_pos int 1 run \
    function stringtemplate:parser/internal/value_provider..find_dot

data modify storage stringtemplate:parser.scope value_provider.local.varname set value ""
function stringtemplate:parser/internal/value_provider..split with \
    storage stringtemplate:parser.scope value_provider.local

data modify storage stringtemplate:parser.scope value_provider.out.result set value {index:0, path:""}
function stringtemplate:parser/internal/value_provider..get_var_index with \
    storage stringtemplate:parser.scope value_provider.local

function stringtemplate:parser/internal/value_provider..ref_set_path
data modify storage stringtemplate:parser.scope value_provider.local.is_nbt_valid set value 0b
function stringtemplate:parser/internal/value_provider..check_nbt
data modify storage stringtemplate:parser.scope value_provider.local.error set value {message:"Can not parse nbt", nbt:""}
data modify storage stringtemplate:parser.scope value_provider.local.error.nbt set from storage stringtemplate:parser.scope value_provider.in.expression
execute if data storage stringtemplate:parser.scope value_provider.local{is_nbt_valid:0b} run \
    return run function stringtemplate:exception/throw_nbt_parse_exception with \
        storage stringtemplate:parser.scope value_provider.local.error