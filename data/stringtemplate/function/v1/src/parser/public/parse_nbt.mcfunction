#
# Evaluates the given nbt and outputs a corresponding value provider 
#
# @param stringtemplate:parser parse_nbt.in.nbt : string
# @param stringtemplate:parser self.scopes : {name: string, id:string}[] - This is used to detect if the given nbt 
#
# @output stringtemplate:parser parse_nbt.out.value_provider : VarValueProvider | ConstValueProvider
#
# @throws ParserException - if the nbt is malformed
#
# cases: ps this was way harder then it initially looked
# "foo bar" -> path & value -> string
# "foo bar".foo.bar -> path & !value -> path
#
# {foo:10} -> path & value -> object
# {foo:10}.bar -> path & !value -> path
#
# 1.20 -> path & value -> number
# 1.foo.bar -> path & !value -> path
#
# foo.bar -> path & value
#
data remove storage stringtemplate:compile_exception static.parser.nbt
data modify storage stringtemplate:compile_exception static.parser.nbt set \
    from storage stringtemplate:parser parse_nbt.in.nbt

data remove storage stringtemplate:parser parse_nbt.local
data modify storage stringtemplate:parser parse_nbt.out.value_provider set value {core:"null"}

function stringtemplate:v1/src/parser/internal/parse_nbt..is_path \
    with storage stringtemplate:parser parse_nbt.in

function stringtemplate:v1/src/parser/internal/parse_nbt..as_value \
    with storage stringtemplate:parser parse_nbt.in

execute \
    unless data storage stringtemplate:parser parse_nbt.local.is_path \
    unless data storage stringtemplate:parser parse_nbt.local.value run \
    return run function stringtemplate:v1/src/exception/throw_parser_exception_inv_nbt

execute \
    if data storage stringtemplate:parser parse_nbt.local.is_path \
    unless data storage stringtemplate:parser parse_nbt.local.value run \
    return run function stringtemplate:v1/src/parser/internal/parse_nbt..path

execute \
    unless data storage stringtemplate:parser parse_nbt.local.is_path \
    if data storage stringtemplate:parser parse_nbt.local.value run \
    return run function stringtemplate:v1/src/parser/internal/parse_nbt..value

# case: both path and value
# examples 
# "foo bar" -> value
# {foo: bar} -> value
# [{foo:bar}] -> value
# path.bar -> path
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

function stringtemplate:v1/src/parser/internal/parse_nbt..is_number with \
    storage stringtemplate:parser parse_nbt.in

execute if data storage stringtemplate:parser parse_nbt.local.is_number run \
    return run function stringtemplate:v1/src/parser/internal/parse_nbt..const_number

return run function stringtemplate:v1/src/parser/internal/parse_nbt..path