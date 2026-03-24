#
#
#
data modify storage stringtemplate:syntax_tree.scope evaluate.local.predicate_result set \
    value {failed_to_resolve:{}}

function stringtemplate:syntax_tree/internal/evaluate..if_check with \
    storage stringtemplate:syntax_tree.scope evaluate.stack[0].syntax_tree[0].if

execute if data storage stringtemplate:syntax_tree.scope evaluate.local.predicate_result.failed_to_resolve run \
    return run function stringtemplate:syntax_tree/internal/evaluate..if_error

data modify storage stringtemplate:syntax_tree.scope evaluate.local.next_tree set value []
execute if data storage stringtemplate:syntax_tree.scope evaluate.local{predicate_result:1b} run \
    data modify storage stringtemplate:syntax_tree.scope evaluate.local.next_tree set \
        from storage stringtemplate:syntax_tree.scope evaluate.stack[0].syntax_tree[0].if.then

execute if data storage stringtemplate:syntax_tree.scope evaluate.local{predicate_result:0b} run \
    data modify storage stringtemplate:syntax_tree.scope evaluate.local.next_tree set \
        from storage stringtemplate:syntax_tree.scope evaluate.stack[0].syntax_tree[0].if.else

data modify storage stringtemplate:syntax_tree.scope evaluate.stack prepend value {}
data modify storage stringtemplate:syntax_tree.scope evaluate.stack[0].syntax_tree set \
    from storage stringtemplate:syntax_tree.scope evaluate.local.next_tree
    
data modify storage stringtemplate:syntax_tree.scope evaluate.stack[0].data set \
    from storage stringtemplate:syntax_tree.scope evaluate.stack[1].data

data remove storage stringtemplate:syntax_tree.scope evaluate.stack[1].syntax_tree[0]