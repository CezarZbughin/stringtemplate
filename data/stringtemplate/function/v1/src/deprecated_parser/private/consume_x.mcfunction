#
#
#
data modify storage stringtemplate:parser self.rnode set value {x:{null:{}}}

data modify storage stringtemplate:parser.scope consume_x.local.expression set value ""
data modify storage stringtemplate:parser.scope consume_x.local.expression set string \
    storage stringtemplate:parser self.tokens[1]

execute if data storage stringtemplate:parser.scope consume_x.local{expression:""} run \
    return run function stringtemplate:exception/throw_parse_exception {message:"Parser failure. Expected [nbt path] or [nbt value] between $(x) and $(x)."}

execute unless data storage stringtemplate:parser self.tokens[2].X run \
    return run function stringtemplate:exception/throw_parse_exception {message:"Parser failure. Unexpected keywords between $(x) and $(x)."}

data remove storage stringtemplate:parser.scope parse.in.tokens[0]
data remove storage stringtemplate:parser.scope parse.in.tokens[0]
data remove storage stringtemplate:parser.scope parse.in.tokens[0]