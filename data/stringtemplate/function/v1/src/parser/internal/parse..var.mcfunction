#
#
# 
data modify storage stringtemplate:parser.scope parse.local.varname set value ""
data modify storage stringtemplate:parser.scope parse.local.varname set string \
    storage stringtemplate:parser.scope parse.in.tokens[1]

execute if data storage stringtemplate:parser.scope parse.local{varname:""} run \
    return run function stringtemplate:exception/throw_parse_exception {message:"Parser failure. Expected a variable name[nbt] between $(_) and $(_)."}

execute unless data storage stringtemplate:parser.scope parse.in.tokens[2].VAR run \
    return run function stringtemplate:exception/throw_parse_exception {message:"Parser failure. Expected a variable name[nbt] between $(_) and $(_), found other keywords."}

data modify storage stringtemplate:parser.scope parse.local.stack[0] append value {}
data modify storage stringtemplate:parser.scope parse.local.stack[0][-1].var set \
    from storage stringtemplate:parser.scope parse.local.varname

data remove storage stringtemplate:parser.scope parse.in.tokens[0]
data remove storage stringtemplate:parser.scope parse.in.tokens[0]
data remove storage stringtemplate:parser.scope parse.in.tokens[0]