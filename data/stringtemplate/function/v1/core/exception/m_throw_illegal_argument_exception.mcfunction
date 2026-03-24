#
# @param MACRO message : string - must be single quotes escaped
#
data modify storage oop:throw in set value {message:""}
$data modify storage oop:throw in.message set value '$(message)'
function stringtemplate:v1/core/exception/throw_illegal_argument_exception