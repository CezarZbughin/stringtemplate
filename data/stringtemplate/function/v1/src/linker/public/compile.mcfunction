#
# @param stringtemplate:linker self
# @output stringtemplate:linker compile.out.lex_list
#
function stringtemplate:v1/core/try
data modify storage stringtemplate:linker deep_lex.in.file set from \
    storage stringtemplate:linker self.file
function stringtemplate:v1/src/linker/public/deep_lex
execute if data storage oop:x exception run return fail

data modify storage stringtemplate:linker circular_validation.in.lex_list set from \
    storage stringtemplate:linker deep_lex.out.lex_list
function stringtemplate:v1/src/linker/public/circular_validation

execute if data storage stringtemplate:linker circular_validation.out{valid:0b} run \
    return run function stringtemplate:v1/src/exception/throw_linker_exception_circ_deps