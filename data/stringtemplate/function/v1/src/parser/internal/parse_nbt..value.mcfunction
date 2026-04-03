#
#
#
data modify storage stringtemplate:parser parse_nbt.local.nbt_0 set string \
    storage stringtemplate:parser parse_nbt.in.nbt 0 1

execute if data storage stringtemplate:parser parse_nbt.local{nbt_0:"\""} run \
    return run function stringtemplate:v1/src/parser/internal/parse_nbt..const_str

execute if data storage stringtemplate:parser parse_nbt.local{nbt_0:"'"} run \
    return run function stringtemplate:v1/src/parser/internal/parse_nbt..const_str

execute if data storage stringtemplate:parser parse_nbt.local{nbt_0:"{"} run \
    return run function stringtemplate:v1/src/parser/internal/parse_nbt..const_obj

execute if data storage stringtemplate:parser parse_nbt.local{nbt_0:"["} run \
    return run function stringtemplate:v1/src/parser/internal/parse_nbt..const_list

function stringtemplate:v1/src/parser/internal/parse_nbt..is_number
execute if data storage stringtemplate:parser parse_nbt.local.is_number run \
    return run function stringtemplate:v1/src/parser/internal/parse_nbt..const_number

return 201
