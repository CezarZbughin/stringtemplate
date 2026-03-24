#
# @param stringtemplate:string.scope from_list.in.list
#
data modify storage stringtemplate:string self set value ""
execute if data storage stringtemplate:string.scope from_list.in.list[0] run \
    function stringtemplate:v1/src/string/internal/from_list..do32