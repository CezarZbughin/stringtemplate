#
#
#
execute unless data storage stringtemplate:parser.scope parse.local.stack[1][-1].if run \
    return run function stringtemplate:exception/throw_parse_exception {message:"Parser failure. Unexpected $(else). $(else) must close the $(then) block of an $(if) statement."}

data modify storage stringtemplate:parser.scope parse.local.stack[1][-1].if.then set \
    from storage stringtemplate:parser.scope parse.local.stack[0]
data remove storage stringtemplate:parser.scope parse.local.stack[0]
data modify storage stringtemplate:parser.scope parse.local.stack prepend value []

data remove storage stringtemplate:parser.scope parse.in.tokens[0]