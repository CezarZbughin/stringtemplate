#
#
#
execute unless data storage stringtemplate:parser.scope parse.local.stack[1][-1].if run \
    return run function stringtemplate:exception/throw_parse_exception {message:"Parser failure. Unexpected $(endif). $(endif) must close the $(then) or $(else) block of an $(if) statement."}

data modify storage stringtemplate:parser.scope parse.local.then_opened set value 0b
execute if data storage stringtemplate:parser.scope parse.local.stack[1][-1].if{then:"null"} run \
    data modify storage stringtemplate:parser.scope parse.local.then_opened set value 1b

execute if data storage stringtemplate:parser.scope parse.local{then_opened:1b} run \
    data modify storage stringtemplate:parser.scope parse.local.stack[1][-1].if.then set \
        from storage stringtemplate:parser.scope parse.local.stack[0]
execute if data storage stringtemplate:parser.scope parse.local{then_opened:1b} run \
    data modify storage stringtemplate:parser.scope parse.local.stack[1][-1].if.else set \
        value []

execute if data storage stringtemplate:parser.scope parse.local{then_opened:0b} run \
    data modify storage stringtemplate:parser.scope parse.local.stack[1][-1].if.else set \
        from storage stringtemplate:parser.scope parse.local.stack[0]

data remove storage stringtemplate:parser.scope parse.local.stack[0]

data remove storage stringtemplate:parser.scope parse.in.tokens[0]