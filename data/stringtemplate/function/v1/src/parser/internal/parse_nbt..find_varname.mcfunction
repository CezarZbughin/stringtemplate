#
#
#
data modify storage stringtemplate:parser parse_nbt.local.nbt_0 set value ""
data modify storage stringtemplate:parser parse_nbt.local.nbt_0 set string \
    storage stringtemplate:parser parse_nbt.local.subpath 0 1

execute if data storage stringtemplate:parser parse_nbt.local{nbt_0:"."} run \
    return run function stringtemplate:v1/src/parser/internal/parse_nbt..varname_split \
        with storage stringtemplate:parser parse_nbt.local

execute if data storage stringtemplate:parser parse_nbt.local{nbt_0:"["} run \
    return run function stringtemplate:v1/src/parser/internal/parse_nbt..varname_split \
        with storage stringtemplate:parser parse_nbt.local

execute if data storage stringtemplate:parser parse_nbt.local{nbt_0:"{"} run \
    return run function stringtemplate:v1/src/parser/internal/parse_nbt..varname_split \
        with storage stringtemplate:parser parse_nbt.local

data modify storage stringtemplate:parser parse_nbt.local.subpath set string \
    storage stringtemplate:parser parse_nbt.local.subpath 1

scoreboard players add $parser.parse_nbt.pos stringtemplate 1
execute store result storage stringtemplate:parser parse_nbt.local.pos int 1 run \
    scoreboard players get $parser.parse_nbt.pos stringtemplate 

execute unless data storage stringtemplate:parser parse_nbt.local{subpath:""} run \
    return run function stringtemplate:v1/src/parser/internal/parse_nbt..find_varname

data modify storage stringtemplate:parser parse_nbt.local.varname set \
    from storage stringtemplate:parser parse_nbt.in.nbt

return 203

