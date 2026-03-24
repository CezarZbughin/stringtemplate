#
# Escapes the string for double quotes
#
# @in-out stringtemplate:string self
#
#
data modify storage stringtemplate:string.scope escape_dq.local set value {list:[]}
data modify storage stringtemplate:string.scope escape_dq.local.list prepend \
    from storage stringtemplate:string self

#write list to sign
execute in minecraft:overworld positioned 0 116 29999984 run \
    data modify block ~ ~ ~ front_text.messages[0] set value \
        {storage:"stringtemplate:string.scope",nbt:"escape_dq.local.list"}
execute in minecraft:overworld positioned 0 116 29999984 run \
    data modify storage stringtemplate:string.scope escape_dq.local.liststr set \
        from block ~ ~ ~ front_text.messages[0]

#get quotes type 
data modify storage stringtemplate:string.scope escape_dq.local.quotes set \
    string storage stringtemplate:string.scope escape_dq.local.liststr 1 2

execute if data storage stringtemplate:string.scope escape_dq.local{quotes:"\""} run \
    return run data modify storage stringtemplate:string self set \
        string storage stringtemplate:string.scope escape_dq.local.liststr 2 -2

#now force quote
data modify storage stringtemplate:string.scope escape_dq.local.sq_ready set \
    string storage stringtemplate:string.scope escape_dq.local.liststr 2 -2

function stringtemplate:string/internal/escape_dq..force_dq with \
    storage stringtemplate:string.scope escape_dq.local

#again write list to sign

execute in minecraft:overworld positioned 0 116 29999984 run \
    data modify block ~ ~ ~ front_text.messages[0] set value \
        {storage:"stringtemplate:string.scope",nbt:"escape_dq.local.list"}

execute in minecraft:overworld positioned 0 116 29999984 run \
    data modify storage stringtemplate:string.scope escape_dq.local.liststr set \
        from block ~ ~ ~ front_text.messages[0]

data modify storage stringtemplate:string self set string \
    storage stringtemplate:string.scope escape_dq.local.liststr 3 -2