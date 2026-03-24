#
#
#
$data modify storage stringtemplate:syntax_tree.scope evaluate.stack[0].data."$(iterator)" set \
    from storage stringtemplate:syntax_tree.scope evaluate.local.for_list[-1]