# 
# @param test:assert equal.in.expected : unkonwn
# @param test:assert equal.in.actual : unkonwn
# @param test:assert equal.in.&expected : string
# @param test:assert equal.in.&actual : string
#
# @output test:assert equal.out.objects : {actual:unknown, expected:unknown}
#
# @return true assertion passed
#
data modify storage test:assert equal.out set value {objects:{}}
data remove storage test:assert equal.local


data modify storage test:assert equal.out.objects.actual set from storage test:assert equal.in.actual
data modify storage test:assert equal.local.move.src set from storage test:assert equal.in.&actual
data modify storage test:assert equal.local.move.dst set value "test:assert equal.out.objects.actual"
execute if data storage test:assert equal.in.&actual run \
    function stringtemplate:v1/core/test/assert/private/move_ref with storage test:assert equal.local.move

data modify storage test:assert equal.out.objects.expected set from storage test:assert equal.in.expected
data modify storage test:assert equal.local.move.src set from storage test:assert equal.in.&expected
data modify storage test:assert equal.local.move.dst set value "test:assert equal.out.objects.expected"
execute if data storage test:assert equal.in.&expected run \
    function stringtemplate:v1/core/test/assert/private/move_ref with storage test:assert equal.local.move

data modify storage test:assert equal.local.e set from storage test:assert equal.out.objects.expected
data modify storage test:assert equal.local.a set from storage test:assert equal.out.objects.actual

execute store result storage test:assert equal.local.passed byte 1 run \
    data modify storage test:assert equal.local.e set from storage test:assert equal.local.a

execute if data storage test:assert equal.local{passed:0b} run \
    return 1
return 0