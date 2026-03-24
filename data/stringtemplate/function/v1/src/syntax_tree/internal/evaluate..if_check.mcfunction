#
#
#
$execute if data storage stringtemplate:syntax_tree.scope evaluate.stack[0].data$(predicate_separator)$(predicate) run \
    data modify storage stringtemplate:syntax_tree.scope evaluate.local.predicate_result set value 1b
$execute unless data storage stringtemplate:syntax_tree.scope evaluate.stack[0].data$(predicate_separator)$(predicate) run \
    data modify storage stringtemplate:syntax_tree.scope evaluate.local.predicate_result set value 0b