#
# This is used in try-catch blocks. It clears exception register by moving it into oop:caught.
#
# HOW TO USE:
#
# function oop:try
#   function ns:exception_throwing_method
# execute if data oop:x exception.ooptype.EXTYPE_A if function oop:catch run \
#   function ns:handle_EXTYPE_A
# execute if data oop:x exception.ooptype.EXTYPE_B if function oop:catch run \
#   function ns:handle_EXTYPE_B
# (...) 
# execute if data oop:x exception run return fail
#
#
#
# HOW IT WORKS:
#
# There is a register that represents thrown exceptions - oop:x exception
# When a function fails it will populate this register and then return fail
# So immediatly after calling a dagerous method you must check this register
# The format of the thrown object is defined by the method that is throwing it,
# but my prefered approch is to have a field called ooptype.
# An exception can have multiple runtime types eg.
# ooptype : {Exception:{},IllegalArgumentException:{}, WrongDateFormatExcepttion:{}}
# The caller can handle each possible type individaully, or can just handle the base type
#
# To catch you do:
#    execute if data oop:x exception.ooptype.EXTYPE_A if function oop:catch run ...
#
# oop:catch will return true if oop:x exception is populated, and it move it in oop:caught exception.
# So all following catch blocks will fail as the exception was technically already caught
#
# At the end: execute if data oop:x exception run return fail
# This will return fail if the dangerous method thrown an exception that was actually never caught
# The meaning is: 
# "I can't handle this type of exception just yet, but I return out to let who called me handle it" 
#
# 
# 
# THINK OF IT THIS WAY:
#
# try {
#      function ns:exception_throwing_method
# } catch( EXTYPE_A oop:caught exception ) {
#      function ns:handle_EXTYPE_A
# } catch( EXTYPE_B oop:caught exception ) {
#      function ns:handle_EXTYPE_B
# }
#
data modify storage oop:caught exception set from storage oop:x exception
return run data remove storage oop:x exception