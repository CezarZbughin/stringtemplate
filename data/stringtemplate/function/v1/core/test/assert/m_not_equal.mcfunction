#
# @param MACRO in.expected : unkonwn
# @param MACRO in.actual : unkonwn
# @param MACRO in."&expected" : string
# @param MACRO in."&actual" : string
#
data remove storage test:assert not_equal.in
$data modify storage test:assert not_equal.in set value $(in)
return run function stringtemplate:v1/core/test/assert/not_equal