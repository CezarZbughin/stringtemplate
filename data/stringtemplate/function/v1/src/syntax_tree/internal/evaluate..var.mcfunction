#
#
#
data modify storage stringtemplate:syntax_tree.scope evaluate.local.resolved set \
    value {failed_to_resolve:{}}

function stringtemplate:syntax_tree/internal/evaluate..var_read with \
    storage stringtemplate:syntax_tree.scope evaluate.stack[0].syntax_tree[0]

execute if data storage stringtemplate:syntax_tree.scope evaluate.local.resolved.failed_to_resolve run \
    return run function stringtemplate:syntax_tree/internal/evaluate..var_error

data modify storage stringtemplate:string to_string.in.data set from \
    storage stringtemplate:syntax_tree.scope evaluate.local.resolved
function stringtemplate:string/public/to_string
function stringtemplate:string/public/escape_sq

data modify storage stringtemplate:syntax_tree.scope evaluate.local.accumulator append \
    from storage stringtemplate:string self

data remove storage stringtemplate:syntax_tree.scope evaluate.stack[0].syntax_tree[0]