#
#
#
execute unless data storage stringtemplate:parser.scope parse.local.stack[1][-1].for run \
    return run function stringtemplate:exception/throw_parse_exception {message:"Parser failure. Unexpected $(endfor). $(endfor) must close a $(for) block previously opened."}

data modify storage stringtemplate:parser.scope parse.local.stack[1][-1].for.content set \
    from storage stringtemplate:parser.scope parse.local.stack[0]
data remove storage stringtemplate:parser.scope parse.local.stack[0]

data remove storage stringtemplate:parser.scope parse.in.tokens[0]