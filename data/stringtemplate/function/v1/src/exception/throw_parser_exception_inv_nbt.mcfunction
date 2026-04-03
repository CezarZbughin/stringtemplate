data modify storage oop:x exception set value {\
    ooptype : {\
        Exception:{},\
        CompilerException:{},\
        ParserException:{},\
    },\
    title : "ParserException", \
    message : ""\
}
data modify storage stringtemplate:string concatenate_sq.in set value ['Parsing error in file "', 'UNKNOWN', '": Expected an nbt, "', 'UNKNOWN','" is not a well-formed nbt path.']

data modify storage stringtemplate:string self set value "UNKNOWN"
data modify storage stringtemplate:string self set \
    from storage stringtemplate:compile_exception static.parser.file
function stringtemplate:v1/src/string/public/escape_sq
data modify storage stringtemplate:string concatenate_sq.in[1] set \
    from storage stringtemplate:string self

data modify storage stringtemplate:string self set value "UNKNOWN"
data modify storage stringtemplate:string self set \
    from storage stringtemplate:compile_exception static.parser.nbt
function stringtemplate:v1/src/string/public/escape_sq
data modify storage stringtemplate:string concatenate_sq.in[3] set \
    from storage stringtemplate:string self

function stringtemplate:v1/src/string/public/concatenate_sq

data modify storage oop:x exception.message set \
    from storage stringtemplate:string self