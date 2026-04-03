#
# @param stringtemplate:lexer constructor.in.file : string
#
data modify storage stringtemplate:lexer self set value {\
    version: "v1", \
    file : {core:"null"},\
    macro_validate_macro : {\
        import : "execute if function stringtemplate:v1/src/lexer/internal/validate_macro..set_valid run say ",\
        endimport: "",\
        template : "execute if function stringtemplate:v1/src/lexer/internal/validate_macro..set_valid run say ",\
        is : "", endtemplate : "",\
        x:"",\
        for:"", in:"", do:"", from:"", to:"", endfor:"",\
        each:"", endeach:"",\
        if:"",then:"", else:"", endif:"",\
        func:"", arg:"", endfunc:"",\
        invoke:"", with:"", endinvoke:""\
    },\
    macro_get_dependencies : {\
        import : "data modify storage stringtemplate:lexer get_dependencies.out.dependencies append value {file:'",\
        endimport: "'}",\
        template : "execute if function stringtemplate:v1/core/functional/false run say ",\
        is : "", endtemplate : "",\
        x:"",\
        for:"", in:"", do:"", from:"", to:"", endfor:"",\
        each:"", endeach:"",\
        if:"",then:"", else:"", endif:"",\
        func:"", arg:"", endfunc:"",\
        invoke:"", with:"", endinvoke:""\
    },\
    macro_tokenize : {\
        import : "execute if function stringtemplate:v1/core/functional/false run say ",\
        endimport: "",\
        template :    "execute if function stringtemplate:v1/src/lexer/internal/tokenize..new_template run data modify storage stringtemplate:lexer tokenize.out.template set value [{TEMPLATE:1b}, {TEXT:'",\
        is :          "'},{IS:1b},{TEXT:'",\
        endtemplate : "'},{ENDTEMPLATE:1b}]",\
        x:            "'},{X:1b},{TEXT:'",\
        for:          "'},{FOR:1b},{TEXT:'",\
        in:           "'},{IN:1b},{TEXT:'",\
        do:           "'},{DO:1b},{TEXT:'",\
        from:         "'},{FROM:1b},{TEXT:'",\
        to:           "'},{TO:1b},{TEXT:'",\
        endfor:       "'},{ENDFOR:1b},{TEXT:'",\
        each:         "'},{EACH:1b},{TEXT:'",\
        endeach:      "'},{ENDEACH:1b},{TEXT:'",\
        if:           "'},{IF:1b},{TEXT:'",\
        then:         "'},{THEN:1b},{TEXT:'",\
        else:         "'},{ELSE:1b},{TEXT:'",\
        endif:        "'},{ENDIF:1b},{TEXT:'",\
        func:         "'},{FUNC:1b},{TEXT:'",\
        arg:          "'},{ARG:1b},{TEXT:'",\
        endfunc:      "'},{ENDFUNC:1b},{TEXT:'",\
        invoke:       "'},{INVOKE:1b},{TEXT:'",\
        with:         "'},{WITH:1b},{TEXT:'",\
        endinvoke:    "'},{ENDINVOKE:1b},{TEXT:'" \
    }\
}
data modify storage stringtemplate:lexer self.file set string \
    storage stringtemplate:lexer constructor.in.file