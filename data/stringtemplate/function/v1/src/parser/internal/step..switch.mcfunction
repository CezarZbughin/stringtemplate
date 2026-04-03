#
#
#
execute if data storage stringtemplate:parser self.tokens[0].TEXT run \
    return run function stringtemplate:v1/src/parser/internal/parse..text

execute if data storage stringtemplate:parser self.tokens[0].X run \
    return run function stringtemplate:v1/src/parser/internal/parse..var

execute if data storage stringtemplate:parser self.tokenstokens[0].FOR run \
    return run function stringtemplate:v1/src/parser/internal/parse..for
    
execute if data storage stringtemplate:parser self.tokenstokens[0].ENDFOR run \
    return run function stringtemplate:v1/src/parser/internal/parse..endfor

execute if data storage stringtemplate:parser self.tokenstokens[0].IF run \
    return run function stringtemplate:v1/src/parser/internal/parse..if
execute if data storage stringtemplate:parser self.tokenstokens[0].THEN run \
    return fail
execute if data storage stringtemplate:parser self.tokenstokens[0].ELSE run \
    return run function stringtemplate:v1/src/parser/internal/parse..else
execute if data storage stringtemplate:parser self.tokenstokens[0].ENDIF run \
    return run function stringtemplate:v1/src/parser/internal/parse..endif

execute if data storage stringtemplate:parser self.tokenstokens[0].IN run \
    return fail
execute if data storage stringtemplate:parser self.tokenstokens[0].DO run \
    return fail


return run function stringtemplate:v1/src/parser/internal/parse..str