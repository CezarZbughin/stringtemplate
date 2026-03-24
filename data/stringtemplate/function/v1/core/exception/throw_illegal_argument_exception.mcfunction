#
# @param oop:throw in.message
#
data modify storage oop:x exception set value {\
    ooptype : {Exception:{}, IllegalArgumentException:{}},\
    message : "",\
}
data modify storage oop:x exception.message set string \
    storage oop:throw in.message