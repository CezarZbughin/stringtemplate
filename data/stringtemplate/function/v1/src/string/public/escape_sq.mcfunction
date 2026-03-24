#
# Escapes the string for single quotes
#
# @in-out stringtemplate:string self
#
#
data modify storage stringtemplate:string.scope escape_sq.local set value {list:[]}
data modify storage stringtemplate:string.scope escape_sq.local.list prepend \
    from storage stringtemplate:string self

#write list to sign
execute in minecraft:overworld positioned 0 116 29999984 run \
    data modify block ~ ~ ~ front_text.messages[0] set value \
        {storage:"stringtemplate:string.scope",nbt:"escape_sq.local.list"}
execute in minecraft:overworld positioned 0 116 29999984 run \
    data modify storage stringtemplate:string.scope escape_sq.local.liststr set \
        from block ~ ~ ~ front_text.messages[0]

#get quotes type 
data modify storage stringtemplate:string.scope escape_sq.local.quotes set \
    string storage stringtemplate:string.scope escape_sq.local.liststr 1 2

execute if data storage stringtemplate:string.scope escape_sq.local{quotes:"'"} run \
    return run data modify storage stringtemplate:string self set \
        string storage stringtemplate:string.scope escape_sq.local.liststr 2 -2

#now force quote
data modify storage stringtemplate:string.scope escape_sq.local.dq_ready set \
    string storage stringtemplate:string.scope escape_sq.local.liststr 2 -2

function stringtemplate:string/internal/escape_sq..force_sq with \
    storage stringtemplate:string.scope escape_sq.local

#again write list to sign

execute in minecraft:overworld positioned 0 116 29999984 run \
    data modify block ~ ~ ~ front_text.messages[0] set value \
        {storage:"stringtemplate:string.scope",nbt:"escape_sq.local.list"}

execute in minecraft:overworld positioned 0 116 29999984 run \
    data modify storage stringtemplate:string.scope escape_sq.local.liststr set \
        from block ~ ~ ~ front_text.messages[0]

data modify storage stringtemplate:string self set string \
    storage stringtemplate:string.scope escape_sq.local.liststr 3 -2