data modify storage stringtemplate:parser parse_nbt.out.value_provider set value {\
    provider : "VAR",\
    id: {core:"null"},\
    name : {core:"null"},\ 
    nbt : {core:"null"},\
}
data modify storage stringtemplate:parser parse_nbt.out.value_provider.id set \
    from storage stringtemplate:parser parse_nbt.local.scope_var.id
data modify storage stringtemplate:parser parse_nbt.out.value_provider.name set \
    from storage stringtemplate:parser parse_nbt.local.scope_var.name
data modify storage stringtemplate:parser parse_nbt.out.value_provider.nbt set \
    from storage stringtemplate:parser parse_nbt.local.subpath

return 205