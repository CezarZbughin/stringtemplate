#
#
#
data modify storage stringtemplate:syntax_tree.scope evaluate.local.accumulator append \
    from storage stringtemplate:syntax_tree.scope evaluate.stack[0].syntax_tree[0].str

data remove storage stringtemplate:syntax_tree.scope evaluate.stack[0].syntax_tree[0]