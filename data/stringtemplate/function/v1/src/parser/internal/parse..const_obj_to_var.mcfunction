data modify storage stringtemplate:parser self.tree_stack[0].predicate set value {\
    provider : "VAR",\
    id: {core:"null"},\
    name : {core:"null"},\ 
    nbt : {core:"null"},\
}
$data modify storage stringtemplate:parser self.tree_stack[0].predicate.id set value "$(file)@default"
data modify storage stringtemplate:parser self.tree_stack[0].predicate.name set \
    from storage stringtemplate:parser self.tree_stack[0].predicate.id
data modify storage stringtemplate:parser self.tree_stack[0].predicate.nbt set \
    from storage stringtemplate:parser parse_nbt.out.value
