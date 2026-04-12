#
# type IfNode = {
#    node : "IF";
#    predicate : ValueProvider;
#    then : SyntaxTree;
#    else : SyntaxTree | CoreNull;
# }
#
data modify storage stringtemplate:parser parse.local.parent_node set value {core:"null"}
data modify storage stringtemplate:parser parse.local.parent_node set \
    from storage stringtemplate:parser self.tree_stack[1][-1]

execute unless data storage stringtemplate:parser parse.local.parent_node{node:"IF"} run \ 
    return run function stringtemplate:v1/src/exception/throw_parser_exception_unexp_endif

execute if data storage stringtemplate:parser parse.local.parent_node.then{core:"null"} run \
    data modify storage stringtemplate:parser self.tree_stack[1][-1].then set \
    from storage stringtemplate:parser self.tree_stack[0]

execute unless data storage stringtemplate:parser parse.local.parent_node.then{core:"null"} run \
    data modify storage stringtemplate:parser self.tree_stack[1][-1].else set \
    from storage stringtemplate:parser self.tree_stack[0]

data remove storage stringtemplate:parser self.tree_stack[0]
data remove storage stringtemplate:parser self.scopes[-1]

data remove storage stringtemplate:parser self.tokens[0]