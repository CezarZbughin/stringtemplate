#
# @param stringtemplate:syntax_tree self - the syntax tree that will be evaluated
# @param stringtemplate:syntax_tree.scope evaluate.in.data - the data model used for evaluation
#
# @output stringtemplate:syntax_tree.scope evaluate.out.str - the resulting string
#
data modify storage stringtemplate:syntax_tree.scope evaluate.local set value {accumulator:[]}

data modify storage stringtemplate:syntax_tree.scope evaluate.stack set value [{}]
data modify storage stringtemplate:syntax_tree.scope evaluate.stack[0].syntax_tree set \
    from storage stringtemplate:syntax_tree self
data modify storage stringtemplate:syntax_tree.scope evaluate.stack[0].data set \
    from storage stringtemplate:syntax_tree.scope evaluate.in.data

function oop:try
    execute if data storage stringtemplate:syntax_tree.scope evaluate.stack[0].syntax_tree[0] run \
        function stringtemplate:syntax_tree/internal/evaluate..each_node
execute if data storage oop:x exception run return fail

data modify storage stringtemplate:string from_list.in.list set \
    from storage stringtemplate:syntax_tree.scope evaluate.local.accumulator
function stringtemplate:string/public/from_list
data modify storage stringtemplate:syntax_tree.scope evaluate.out.str set \
    from storage stringtemplate:string self 
