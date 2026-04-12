#
#
#
data modify storage stringtemplate:parser parse.local.pattern_valid set value 0b

execute if data storage stringtemplate:parser self.tokens[0].X \
    if data storage stringtemplate:parser self.tokens[1].TEXT \
    if data storage stringtemplate:parser self.tokens[2].X run \
    data modify storage stringtemplate:parser parse.local.pattern_valid set value 1b

execute if data storage stringtemplate:parser parse.local{pattern_valid:0b} run \
    return run function stringtemplate:v1/src/exception/throw_parser_exception_var
    
data modify storage stringtemplate:string self set value ''
data modify storage stringtemplate:string self set \ 
    from storage stringtemplate:parser self.tokens[1].TEXT
function stringtemplate:v1/src/string/public/trim

function stringtemplate:v1/core/try
    data remove storage stringtemplate:parser parse_nbt
    data modify storage stringtemplate:parser parse_nbt.in.nbt set \
        from storage stringtemplate:string self
    function stringtemplate:v1/src/parser/public/parse_nbt
execute if data storage oop:x exception run return fail

data modify storage stringtemplate:parser self.tree_stack[0] append value { \
    node : "VALUE", \
    value_provider : {core:"null"} \
}
data modify storage stringtemplate:parser self.tree_stack[0][-1].value_provider set \
    from storage stringtemplate:parser parse_nbt.out.value_provider

data remove storage stringtemplate:parser self.tokens[0]
data remove storage stringtemplate:parser self.tokens[0]
data remove storage stringtemplate:parser self.tokens[0]