#
# @output stringtemplate:parser self.rnode
#
data remove storage stringtemplate:parser self.rnode

execute if data storage stringtemplate:parser self.tokens[0].VAR run \
    return run function stringtemplate:parser/internal/parse..var
execute if data storage stringtemplate:parser self.tokens[0].FOR run \
    return run function stringtemplate:parser/internal/parse..for
execute if data storage stringtemplate:parser self.tokens[0].IN run \
    return run function stringtemplate:exception/throw_parse_exception {message:"Parser failure. Unexpected $(in). $(in) must only be used in $(for) header."}
execute if data storage stringtemplate:parser self.tokens[0].DO run \
    return run function stringtemplate:exception/throw_parse_exception {message:"Parser failure. Unexpected $(do). $(do) must only be used in $(for) header."}
execute if data storage stringtemplate:parser self.tokens[0].ENDFOR run \
    return run function stringtemplate:parser/internal/parse..endfor

execute if data storage stringtemplate:parser self.tokens[0].IF run \
    return run function stringtemplate:parser/internal/parse..if
execute if data storage stringtemplate:parser self.tokens[0].THEN run \
    return run function stringtemplate:exception/throw_parse_exception {message:"Parser failure. Unexpected $(then). $(then) must only be used in $(if) statement."}
execute if data storage stringtemplate:parser self.tokens[0].ELSE run \
    return run function stringtemplate:parser/internal/parse..else
execute if data storage stringtemplate:parser self.tokens[0].ENDIF run \
    return run function stringtemplate:parser/internal/parse..endif

return run function stringtemplate:parser/private/consume_str
