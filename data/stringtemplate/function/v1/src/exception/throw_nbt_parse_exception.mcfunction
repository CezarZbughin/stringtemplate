#
#
#
$data modify storage oop:x exception set value {\
    ooptype : {\
        as_string: "LexerException",\
        Exception:{},\
        CompilerException:{},\
        ParseException:{}\
    },\
    exception__message : "$(message)",\
    malformed_nbt : "$(nbt)"\
}