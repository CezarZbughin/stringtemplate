#
#
#
execute if data storage stringtemplate:syntax_tree.scope evaluate.stack[0].syntax_tree[0].str run \
    return run function stringtemplate:syntax_tree/internal/evaluate..str
execute if data storage stringtemplate:syntax_tree.scope evaluate.stack[0].syntax_tree[0].var run \
    return run function stringtemplate:syntax_tree/internal/evaluate..var
execute if data storage stringtemplate:syntax_tree.scope evaluate.stack[0].syntax_tree[0].if run \
    return run function stringtemplate:syntax_tree/internal/evaluate..if
execute if data storage stringtemplate:syntax_tree.scope evaluate.stack[0].syntax_tree[0].for run \
    return run function stringtemplate:syntax_tree/internal/evaluate..for

