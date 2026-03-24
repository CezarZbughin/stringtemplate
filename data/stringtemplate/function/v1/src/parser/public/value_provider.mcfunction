#
# Evaluates the given expression and outputs a corresponding value provider 
#
# @param stringtemplate:parser.scope value_provider.in.expression
# @param stringtemplate:parser.scope value_provider.in.variables {name:"",index:int}[] 
#
# @output stringtemplate:parser.scope value_provider.out.result : ValueProvider
#
# type RefValueProvider = {index:int, path:string}
# type ConstValueProvider = {const: unknown}
# type ValueProvider = RefValueProvider | ConstValueProvider
#
# @uses 
#
data modify storage stringtemplate:parser.scope value_provider.out.result set value {_stringtemplate_error:{}}
data modify storage stringtemplate:parser.scope value_provider.local set value {}

#TODO: remove white space

function stringtemplate:parser/internal/value_provider..switch
execute if data storage oop:x exception run return run function oop:catch_and_print

tellraw @a {storage:"stringtemplate:parser.scope", nbt:"value_provider.out.result"}