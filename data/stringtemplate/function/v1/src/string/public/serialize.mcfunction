#
# @param stringtemplate:string serialize.in : unknown
#
# @output stringtemplate:string self : string
#
data modify storage stringtemplate:string self set value ""

execute in minecraft:overworld positioned 0 116 29999984 run \
    data modify block ~ ~ ~ front_text.messages[0] set value \
        {storage:"stringtemplate:string", nbt:"serialize.in", plain:true}

data modify storage stringtemplate:string concatenate.in set value []

execute in minecraft:overworld positioned 0 116 29999984 run \
    data modify storage stringtemplate:string concatenate.in set \
    from block ~ ~ ~ front_text.messages[0].extra

function stringtemplate:v1/src/string/public/concatenate