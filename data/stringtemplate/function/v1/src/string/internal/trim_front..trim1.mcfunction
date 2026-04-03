#
#
#
data modify storage stringtemplate:string trim_front.local.char1 set value ""
data modify storage stringtemplate:string trim_front.local.char1 set string \
    storage stringtemplate:string self 0 1
execute if data storage stringtemplate:string trim_front.local{char1:" "} run \
    return run data modify storage stringtemplate:string self set string \
    storage stringtemplate:string self 1
return fail
