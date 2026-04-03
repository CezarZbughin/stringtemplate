#
#
#
data modify storage oop:x exception set value {\
    ooptype : {\
        Exception:{},\
        CompilerException:{},\
        LexerException:{},\
    },\
    title : "LexerException", \
    message : ""\
}
data modify storage stringtemplate:string concatenate_sq.in set value ['Lexing error in file "', 'FILE', '": Template redefinition. Only one template is permitted per file. Separate templates into individual files.']
data modify storage stringtemplate:string self set value "UNKNOWN"
data modify storage stringtemplate:string self set \
    from storage stringtemplate:compile_exception static.lexer.file
function stringtemplate:v1/src/string/public/escape_sq
data modify storage stringtemplate:string concatenate_sq.in[1] set \
    from storage stringtemplate:string self
function stringtemplate:v1/src/string/public/concatenate_sq

data modify storage oop:x exception.message set \
    from storage stringtemplate:string self