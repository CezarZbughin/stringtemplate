#
# type ForNode = {
#    node : "FOR";
#    iterator : Variable;
#    list_provider : ValueProvider;
#    list_value : unknown[] | CoreNull;
#    body : SyntaxTree;
# }
data modify storage stringtemplate:parser parse.local.pattern_valid set value 0b

execute if data storage stringtemplate:parser self.tokens[0].FOR \
    if data storage stringtemplate:parser self.tokens[1].TEXT \
    if data storage stringtemplate:parser self.tokens[2].IN \
    if data storage stringtemplate:parser self.tokens[3].TEXT \
    if data storage stringtemplate:parser self.tokens[4].DO run \
    data modify storage stringtemplate:parser parse.local.pattern_valid set value 1b

execute if data storage stringtemplate:parser parse.local{pattern_valid:0b} run \
    return run function stringtemplate:v1/src/exception/throw_parser_exception_for

data modify storage stringtemplate:parser self.tree_stack[0] append value { \
    node : "FOR", \
    iterator : {core:"null"},\
    list_provider : {core:"null"}, \
    list_value : {core:"null"}, \
    body : {core:"null"}, \
}

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
    node : "IF", \
    predicate : {core:"null"}, \
    then : {core:"null"}, \
    else : {core:"null"}, \
}
data modify storage stringtemplate:parser self.tree_stack[0].predicate set \
    from storage stringtemplate:parser parse_nbt.out.value_provider

# Intended: $(if){role:"ADMIN"}$(then) should evaluate the 'role' field in the data model.
# Issue: ambiguous syntax causes it to be parsed as a constant object instead of a query.
execute if data storage stringtemplate:parser parse_nbt.out.value_provider{provider : "CONST", type : "object"} run \
    function stringtemplate:v1/src/parser/internal/parse..const_obj_to_var with storage stringtemplate:parser self

# add new scope to the stack
data modify storage stringtemplate:parser self.tree_stack prepend value []
data modify storage stringtemplate:parser self.scopes append value {variables:[]}

data remove storage stringtemplate:parser self.tokens[0]
data remove storage stringtemplate:parser self.tokens[0]
data remove storage stringtemplate:parser self.tokens[0]