# 
# @param test:assert not_equal.in.expected : unkonwn
# @param test:assert not_equal.in.actual : unkonwn
# @param test:assert not_equal.in.&expected : string
# @param test:assert not_equal.in.&actual : string
#
# @output test:assert not_equal.out.objects : {actual:unknown, expected:unknown}
#
# @return true assertion passed
#
data modify storage test:assert not_equal.out set value {passed:0b, objects:{}}
data remove storage test:assert not_equal.local

data modify storage test:assert not_equal.out.objects.actual set from storage test:assert not_equal.in.actual
data modify storage test:assert not_equal.local.move.src set from storage test:assert not_equal.in.&actual
data modify storage test:assert not_equal.local.move.dst set value "test:assert not_equal.out.objects.actual"
execute if data storage test:assert not_equal.in.&actual run \
    function stringtemplate:v1/core/test/assert/private/move_ref with storage test:assert not_equal.local.move

data modify storage test:assert not_equal.out.objects.expected set from storage test:assert not_equal.in.expected
data modify storage test:assert not_equal.local.move.src set from storage test:assert not_equal.in.&expected
data modify storage test:assert not_equal.local.move.dst set value "test:assert not_equal.out.objects.expected"
execute if data storage test:assert not_equal.in.&expected run \
    function stringtemplate:v1/core/test/assert/private/move_ref with storage test:assert not_equal.local.move

data modify storage test:assert not_equal.local.e set from storage test:assert not_equal.out.objects.expected
data modify storage test:assert not_equal.local.a set from storage test:assert not_equal.out.objects.actual

execute store result storage test:assert not_equal.local.passed byte 1 run \
    data modify storage test:assert not_equal.local.e set from storage test:assert not_equal.local.a

execute if data storage test:assert not_equal.local{passed:1b} run \
    return 1

return 0