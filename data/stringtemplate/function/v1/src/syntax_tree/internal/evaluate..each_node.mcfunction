#
#
#

function oop:try
    execute if data storage stringtemplate:syntax_tree.scope evaluate.stack[0].syntax_tree[0] run \
        function stringtemplate:syntax_tree/internal/evaluate..switch
execute if data storage oop:x exception run return fail

execute unless data storage stringtemplate:syntax_tree.scope evaluate.stack[0].syntax_tree[0] run \
    data remove storage stringtemplate:syntax_tree.scope evaluate.stack[0]

function oop:try
    execute if data storage stringtemplate:syntax_tree.scope evaluate.stack[0] run \
        return run function stringtemplate:syntax_tree/internal/evaluate..each_node
execute if data storage oop:x exception run return fail
