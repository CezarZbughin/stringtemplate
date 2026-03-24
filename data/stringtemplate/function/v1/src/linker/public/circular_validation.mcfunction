#
# @param stringtemplate:linker circular_validation.in.lex_list : Lex[]
# @output stringtemplate:linker circular_validation.out.valid : boolean
#
data modify storage stringtemplate:linker circular_validation.out set value {valid:0b}
data remove storage stringtemplate:linker circular_validation.local

function stringtemplate:v1/src/linker/internal/circular_validation..while

execute if data storage stringtemplate:linker circular_validation.in.lex_list[0] run \
    return fail

return run data modify storage stringtemplate:linker circular_validation.out.valid set value 1b