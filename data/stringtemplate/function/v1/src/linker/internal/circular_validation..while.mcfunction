#
#
#
data modify storage stringtemplate:linker circular_validation.local.no_dependency set value {core:"null"}
data modify storage stringtemplate:linker circular_validation.local.no_dependency set from \
    storage stringtemplate:linker circular_validation.in.lex_list[{dependencies:[]}]

execute if data storage stringtemplate:linker circular_validation.local.no_dependency{core:"null"} run \
    return 1

execute unless function stringtemplate:v1/src/linker/internal/circular_validation..remove_file run \
    return fail

function stringtemplate:v1/src/linker/internal/circular_validation..while