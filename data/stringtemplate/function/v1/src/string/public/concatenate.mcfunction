#
# Concatenates a list strings
#
# @param stringtemplate:string concatenate.in : string[]
#
# @output stringtemplate:string self
#
data modify storage stringtemplate:string self set value ""
data modify storage stringtemplate:string concatenate_sq.in set value []

execute if data storage stringtemplate:string concatenate.in[0] run \
    function stringtemplate:v1/src/string/internal/concatenate..loop

function stringtemplate:v1/src/string/public/concatenate_sq