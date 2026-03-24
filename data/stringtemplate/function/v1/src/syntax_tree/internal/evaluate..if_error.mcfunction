#
#
#
data modify storage stringtemplate:syntax_tree.scope evaluate.local_throw_macro set value {}
data modify storage stringtemplate:syntax_tree.scope evaluate.local_throw_macro.nbt set \
    from storage stringtemplate:syntax_tree.scope evaluate.stack[0].syntax_tree[0].if.predicate
return run function stringtemplate:exception/throw_template_evaluation_exception with \
    storage stringtemplate:syntax_tree.scope evaluate.local_throw_macro