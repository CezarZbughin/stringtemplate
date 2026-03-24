#
#
#
$execute if data storage stringtemplate:tmp foo $(path)
data modify storage stringtemplate:parser.scope value_provider.local.is_nbt_valid set value 1b