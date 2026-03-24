#
#
#
data modify storage oop:x exception set value {\
    ooptype : {\
        as_string: "LinkerException",\
        Exception:{},\
        CompilerException:{},\
        LinkerException:{},\
    },\
    exception__message : ""\
}
data modify storage stringtemplate:string.scope from_list.in.list set value ['Error in files ']
data modify storage stringtemplate:string.scope to_string.in.data set \
    from storage stringtemplate:compile_exception static.trace.files
function stringtemplate:v1/src/string/public/to_string
data modify storage stringtemplate:string.scope from_list.in.list append \
    from storage stringtemplate:string self
data modify storage stringtemplate:string.scope from_list.in.list append \
    value '. Linker failure, there is a circular dependency. Check the imports and break the circular path.'
function stringtemplate:v1/src/string/public/from_list
data modify storage oop:x exception.exception__message set from storage stringtemplate:string self