#
# @param stringtemplate:string.scope to_string.in.data
# : unknown
# @output stringtemplate:string self
# : string
#
data modify storage stringtemplate:string self set value ""
data modify storage stringtemplate:string.scope to_string.local set value {str:{not_a_string:{}}}
data modify storage stringtemplate:string.scope to_string.local.str set \
    string storage stringtemplate:string.scope to_string.in.data

execute unless data storage stringtemplate:string.scope to_string.local.str.not_a_string run \
    return run data modify storage stringtemplate:string self set \
        from storage stringtemplate:string.scope to_string.local.str

execute in minecraft:overworld positioned 0 116 29999984 run \
    data modify block ~ ~ ~ front_text.messages[0] set value \
        {storage:"stringtemplate:string.scope",nbt:"to_string.in.data"}

execute in minecraft:overworld positioned 0 116 29999984 run \
    data modify storage stringtemplate:string self set \
        from block ~ ~ ~ front_text.messages[0]