#
#
#
data modify storage stringtemplate:string trim_front.local.char2 set value ""
data modify storage stringtemplate:string trim_front.local.char2 set string \
    storage stringtemplate:string self 0 2
execute if data storage stringtemplate:string trim_front.local{char2:"  "} run \
    data modify storage stringtemplate:string self set string \
    storage stringtemplate:string self 2

