#
#
#
data modify storage stringtemplate:syntax_tree.scope evaluate.stack prepend value {}
data modify storage stringtemplate:syntax_tree.scope evaluate.stack[0].syntax_tree set \
    from storage stringtemplate:syntax_tree.scope evaluate.local.for.content
data modify storage stringtemplate:syntax_tree.scope evaluate.stack[0].data set \
    from storage stringtemplate:syntax_tree.scope evaluate.local.for.original_data

function stringtemplate:syntax_tree/internal/evaluate..for_add_iterator with \
    storage stringtemplate:syntax_tree.scope evaluate.local.for

data remove storage stringtemplate:syntax_tree.scope evaluate.local.for_list[-1]

execute if data storage stringtemplate:syntax_tree.scope evaluate.local.for_list[0] run \
    function stringtemplate:syntax_tree/internal/evaluate..for_push_to_stack