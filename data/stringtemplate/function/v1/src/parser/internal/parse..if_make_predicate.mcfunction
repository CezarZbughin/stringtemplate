#
#
#
data modify storage stringtemplate:parser.scope parse.local.predicate set value ""
data modify storage stringtemplate:parser.scope parse.local.predicate set string \
    storage stringtemplate:parser.scope parse.in.tokens[1]

execute if data storage stringtemplate:parser.scope parse.local{predicate:""} run \
    return run function stringtemplate:exception/throw_parse_exception {message:"Parser failure. Expected predicate[nbt] before $(then)."}

execute unless data storage stringtemplate:parser.scope parse.in.tokens[2].THEN run \
    return run function stringtemplate:exception/throw_parse_exception {message:"Parser failure. Expected $(then) after predicate."}

data modify storage stringtemplate:parser.scope parse.local.stack[0] append value {}
data modify storage stringtemplate:parser.scope parse.local.stack[0][-1].if.predicate set \
    from storage stringtemplate:parser.scope parse.local.predicate
data modify storage stringtemplate:parser.scope parse.local.stack[0][-1].if.then set \
    value "null"
data modify storage stringtemplate:parser.scope parse.local.stack[0][-1].if.else set \
    value "null"

data modify storage stringtemplate:parser.scope parse.local.stack prepend value []

data remove storage stringtemplate:parser.scope parse.in.tokens[0]
data remove storage stringtemplate:parser.scope parse.in.tokens[0]
data remove storage stringtemplate:parser.scope parse.in.tokens[0]