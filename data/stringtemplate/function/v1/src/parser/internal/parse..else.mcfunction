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
    return run function stringtemplate:v1/src/exception/throw_parser_exception_unexp_else

data modify storage stringtemplate:parser self.tree_stack[1][-1].then set \
    from storage stringtemplate:parser self.tree_stack[0]

data remove storage stringtemplate:parser self.tree_stack[0]
data remove storage stringtemplate:parser self.scopes[-1]

data modify storage stringtemplate:parser self.tree_stack prepend value []
data modify storage stringtemplate:parser self.scopes append value {variables:[]}

data remove storage stringtemplate:parser self.tokens[0]



