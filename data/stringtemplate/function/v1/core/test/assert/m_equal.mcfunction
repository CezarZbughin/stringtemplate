#
# @param MACRO in.expected : unkonwn
# @param MACRO in.actual : unkonwn
# @param MACRO in."&expected" : string
# @param MACRO in."&actual" : string
#
data remove storage test:assert equal.in
$data modify storage test:assert equal.in set value $(in)
return run function stringtemplate:v1/core/test/assert/equal