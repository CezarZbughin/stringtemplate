#
# Escapes self for single quotes
#
# @changes stringtemplate:string self
#
data modify storage stringtemplate:string escape_sq.local set value { \
    serialized:{core:"null"},\
    quotes : {core:"null"} \
}

execute in minecraft:overworld positioned 0 116 29999984 run \
    data modify block ~ ~ ~ front_text.messages[0] set value \
    {storage:"stringtemplate:string", nbt:"self", plain:true}

execute in minecraft:overworld positioned 0 116 29999984 run \
    data modify storage stringtemplate:string escape_sq.local.serialized set \
    from block ~ ~ ~ front_text.messages[0].extra

data modify storage stringtemplate:string escape_sq.local.quotes set \
    from storage stringtemplate:string escape_sq.local.serialized[0]

data modify storage stringtemplate:string self set \
    from storage stringtemplate:string escape_sq.local.serialized[1]

execute if data storage stringtemplate:string escape_sq.local{quotes:'\''} run \
    return 1

function stringtemplate:v1/src/string/internal/escape_sq..force_sq with storage stringtemplate:string

execute in minecraft:overworld positioned 0 116 29999984 run \
    data modify block ~ ~ ~ front_text.messages[0] set value \
    {storage:"stringtemplate:string", nbt:"self", plain:true}

execute in minecraft:overworld positioned 0 116 29999984 run \
    data modify storage stringtemplate:string self set string \ 
    block ~ ~ ~ front_text.messages[0].extra[1] 1

return 0