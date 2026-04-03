data modify storage stringtemplate:parser parse_nbt.out.value_provider set value {\
    provider : "VAR",\
    id: {core:"null"},\
    name : {core:"null"},\ 
    nbt : {core:"null"},\
}
$data modify storage stringtemplate:parser parse_nbt.out.value_provider.id set value "$(file)@default"
data modify storage stringtemplate:parser parse_nbt.out.value_provider.name set \
    from storage stringtemplate:parser parse_nbt.out.value_provider.id
data modify storage stringtemplate:parser parse_nbt.out.value_provider.nbt set \
    from storage stringtemplate:parser parse_nbt.in.nbt

return 204