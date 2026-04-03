#
#
#
data modify storage oop:x exception set value {\
    ooptype : {\
        Exception:{},\
        CompilerException:{},\
        LinkerException:{},\
    },\
    title : "LinkerException", \
    message : ""\
}
data modify storage stringtemplate:string serialize.in set value "UNKNOWN"
data modify storage stringtemplate:string serialize.in set \
    from storage stringtemplate:compile_exception static.linker.files
function stringtemplate:v1/src/string/public/serialize
function stringtemplate:v1/src/string/public/escape_sq

data modify storage stringtemplate:string concatenate_sq.in set value ['Linking error in files ', 'FILES', '. There is a circular dependency. Check the imports and break the circular path.']
data modify storage stringtemplate:string concatenate_sq.in[1] set \
    from storage stringtemplate:string self

function stringtemplate:v1/src/string/public/concatenate_sq

data modify storage oop:x exception.message set from storage stringtemplate:string self

return fail