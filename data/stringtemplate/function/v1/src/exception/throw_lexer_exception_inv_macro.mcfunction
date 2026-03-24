#
#
#
data modify storage oop:x exception set value {\
    ooptype : {\
        as_string: "LexerException",\
        Exception:{},\
        CompilerException:{},\
        LexerException:{},\
    },\
    exception__message : ""\
}
data modify storage stringtemplate:string.scope from_list.in.list set value ['Error in file "', 'FILE', '": Lexer failure, unexpected macro arguments (or file is empty). Check that that all macro keywords are supported.']
data modify storage stringtemplate:string.scope from_list.in.list[1] set \
    from storage stringtemplate:compile_exception static.trace.files[-1]
function stringtemplate:v1/src/string/public/from_list
data modify storage oop:x exception.exception__message set from storage stringtemplate:string self