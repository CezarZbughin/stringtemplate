#
#
#
data modify storage stringtemplate:parser parse_nbt.out.value_provider set value { \
    provider : "CONST", \
    value : {core:"null"}, \
    type : "string"\
}
data modify storage stringtemplate:parser parse_nbt.out.value_provider.value set \
    from storage stringtemplate:parser parse_nbt.local.value

