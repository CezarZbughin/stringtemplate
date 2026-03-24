#
#
#
$data modify storage oop:x exception set value {\
    ooptype : {\
        as_string: "ParseException",\
        Exception:{},\
        CompilerException:{},\
        ParserException:{}\
    },\
    exception__message : "$(message)"\
}