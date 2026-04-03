#
#
#
data modify storage stringtemplate:string trim_front.local.char4 set value ""
data modify storage stringtemplate:string trim_front.local.char4 set string \
    storage stringtemplate:string self 0 4
execute unless data storage stringtemplate:string trim_front.local{char4:"    "} run \
    return 1

data modify storage stringtemplate:string self set string \
    storage stringtemplate:string self 4

function stringtemplate:v1/src/string/internal/trim_front..trim4