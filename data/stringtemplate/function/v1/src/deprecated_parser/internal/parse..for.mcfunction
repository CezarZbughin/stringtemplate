#
#
#
data modify storage stringtemplate:parser.scope parse.local.iterator set value ""
data modify storage stringtemplate:parser.scope parse.local.iterator set string \
    storage stringtemplate:parser.scope parse.in.tokens[1]
execute if data storage stringtemplate:parser.scope parse.local{iterator:""} run \
    return run function stringtemplate:exception/throw_parse_exception {message:"Parser failure. Expected a variable name[nbt] before $(in) (in $(for) header)."}

execute unless data storage stringtemplate:parser.scope parse.in.tokens[2].IN run \
    return run function stringtemplate:exception/throw_parse_exception {message:"Parser failure. Expected $(in) before list name[nbt] $(in) (in $(for) header)."}

data modify storage stringtemplate:parser.scope parse.local.listname set value ""
data modify storage stringtemplate:parser.scope parse.local.listname set string \
    storage stringtemplate:parser.scope parse.in.tokens[3]
execute if data storage stringtemplate:parser.scope parse.local{listname:""} run \
    return run function stringtemplate:exception/throw_parse_exception {message:"Parser failure. Expected a list name[nbt] before $(do) (in $(for) header)."}

execute unless data storage stringtemplate:parser.scope parse.in.tokens[4].DO run \
    return run function stringtemplate:exception/throw_parse_exception {message:"Parser failure. Expected $(do) after list name (in $(for) header)."}

data modify storage stringtemplate:parser.scope parse.local.stack[0] append value {}
data modify storage stringtemplate:parser.scope parse.local.stack[0][-1].for.iterator set \
    from storage stringtemplate:parser.scope parse.local.iterator
data modify storage stringtemplate:parser.scope parse.local.stack[0][-1].for.listname set \
    from storage stringtemplate:parser.scope parse.local.listname
data modify storage stringtemplate:parser.scope parse.local.stack[0][-1].for.content set \
    value "null"

data modify storage stringtemplate:parser.scope parse.local.stack prepend value []

data remove storage stringtemplate:parser.scope parse.in.tokens[0]
data remove storage stringtemplate:parser.scope parse.in.tokens[0]
data remove storage stringtemplate:parser.scope parse.in.tokens[0]
data remove storage stringtemplate:parser.scope parse.in.tokens[0]
data remove storage stringtemplate:parser.scope parse.in.tokens[0]