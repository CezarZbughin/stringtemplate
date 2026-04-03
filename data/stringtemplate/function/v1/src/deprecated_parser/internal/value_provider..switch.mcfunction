#
#
#
data modify storage stringtemplate:parser.scope value_provider.local.char set value ""
data modify storage stringtemplate:parser.scope value_provider.local.char set string \
    storage stringtemplate:parser.scope value_provider.in.expression 0 1

execute if data storage stringtemplate:parser.scope value_provider.local{char:"\""} run \
    return run function stringtemplate:parser/internal/value_provider..const_str \
        with storage stringtemplate:parser.scope value_provider.in
execute if data storage stringtemplate:parser.scope value_provider.local{char:"'"} run \
    return run function stringtemplate:parser/internal/value_provider..const_str \
        with storage stringtemplate:parser.scope value_provider.in
execute if data storage stringtemplate:parser.scope value_provider.local{char:"{"} run \
    return run function stringtemplate:parser/internal/value_provider..const_obj \
        with storage stringtemplate:parser.scope value_provider.in
execute if data storage stringtemplate:parser.scope value_provider.local{char:"["} run \
    return run function stringtemplate:parser/internal/value_provider..const_list \
        with storage stringtemplate:parser.scope value_provider.in
execute if data storage stringtemplate:parser.scope value_provider.local{char:"0"} run \
    return run function stringtemplate:parser/internal/value_provider..const_num \
        with storage stringtemplate:parser.scope value_provider.in
execute if data storage stringtemplate:parser.scope value_provider.local{char:"1"} run \
    return run function stringtemplate:parser/internal/value_provider..const_num \
        with storage stringtemplate:parser.scope value_provider.in
execute if data storage stringtemplate:parser.scope value_provider.local{char:"2"} run \
    return run function stringtemplate:parser/internal/value_provider..const_num \
        with storage stringtemplate:parser.scope value_provider.in
execute if data storage stringtemplate:parser.scope value_provider.local{char:"3"} run \
    return run function stringtemplate:parser/internal/value_provider..const_num \
        with storage stringtemplate:parser.scope value_provider.in
execute if data storage stringtemplate:parser.scope value_provider.local{char:"4"} run \
    return run function stringtemplate:parser/internal/value_provider..const_num \
        with storage stringtemplate:parser.scope value_provider.in
execute if data storage stringtemplate:parser.scope value_provider.local{char:"5"} run \
    return run function stringtemplate:parser/internal/value_provider..const_num \
        with storage stringtemplate:parser.scope value_provider.in
execute if data storage stringtemplate:parser.scope value_provider.local{char:"6"} run \
    return run function stringtemplate:parser/internal/value_provider..const_num \
        with storage stringtemplate:parser.scope value_provider.in
execute if data storage stringtemplate:parser.scope value_provider.local{char:"7"} run \
    return run function stringtemplate:parser/internal/value_provider..const_num \
        with storage stringtemplate:parser.scope value_provider.in
execute if data storage stringtemplate:parser.scope value_provider.local{char:"8"} run \
    return run function stringtemplate:parser/internal/value_provider..const_num \
        with storage stringtemplate:parser.scope value_provider.in
execute if data storage stringtemplate:parser.scope value_provider.local{char:"9"} run \
    return run function stringtemplate:parser/internal/value_provider..const_num \
        with storage stringtemplate:parser.scope value_provider.in
execute if data storage stringtemplate:parser.scope value_provider.local{char:"-"} run \
    return run function stringtemplate:parser/internal/value_provider..const_num \
        with storage stringtemplate:parser.scope value_provider.in
return run function stringtemplate:parser/internal/value_provider..ref