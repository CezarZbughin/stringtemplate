data modify storage oop:x exception set value {\
    ooptype : {\
        Exception:{},\
        CompilerException:{},\
        ParserException:{},\
    },\
    title : "ParserException", \
    message : ""\
}
data modify storage stringtemplate:string concatenate_sq.in set value ['Parsing error in file "', 'UNKNOWN', '": Expected `$(if) NBT_PATH $(then) TEMPLATE [$(else) TEMPLATE] $(endif)`']

data modify storage stringtemplate:string self set value "UNKNOWN"
data modify storage stringtemplate:string self set \
    from storage stringtemplate:compile_exception static.parser.file
function stringtemplate:v1/src/string/public/escape_sq
data modify storage stringtemplate:string concatenate_sq.in[1] set \
    from storage stringtemplate:string self

function stringtemplate:v1/src/string/public/concatenate_sq

data modify storage oop:x exception.message set \
    from storage stringtemplate:string self