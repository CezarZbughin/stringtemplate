#
#
#
data modify storage stringtemplate:syntax_tree.scope evaluate.local.for_list set \
    value {failed_to_resolve:{}}

function stringtemplate:syntax_tree/internal/evaluate..for_read with \
    storage stringtemplate:syntax_tree.scope evaluate.stack[0].syntax_tree[0].for

execute if data storage stringtemplate:syntax_tree.scope evaluate.local.for_list.failed_to_resolve run \
    return run function stringtemplate:syntax_tree/internal/evaluate..for_error

data modify storage stringtemplate:syntax_tree.scope evaluate.local.for set value {}
data modify storage stringtemplate:syntax_tree.scope evaluate.local.for merge \
    from storage stringtemplate:syntax_tree.scope evaluate.stack[0].syntax_tree[0].for
data modify storage stringtemplate:syntax_tree.scope evaluate.local.for.original_data set \
    from storage stringtemplate:syntax_tree.scope evaluate.stack[0].data

data remove storage stringtemplate:syntax_tree.scope evaluate.stack[0].syntax_tree[0]

execute if data storage stringtemplate:syntax_tree.scope evaluate.local.for_list[0] run \
    function stringtemplate:syntax_tree/internal/evaluate..for_push_to_stack
