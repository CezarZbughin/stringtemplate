#
# @param stringtemplate:linker deep_lex.in.file : string
# @output stringtemplate:linker deep_lex.out.lex_record : Record<string, Lex> - a Record mapping file names to Lexes
# @output stringtemplate:linker deep_lex.out.lex_list : Lex[]
#
# @throws InvalidMacroException - If the template can not be lexed because it contains unexpected macro arguments, or if the file is empty
# @throws linkerException - If the template tokanization failed, for example if the text is not correctly single-quote escaped
#
data modify storage stringtemplate:compile_exception static.linker.files set value []

data modify storage stringtemplate:linker deep_lex.out set value {lex_record:{}, lex_list:[]}
data modify storage stringtemplate:linker deep_lex.local set value {\
    queue : [{file:{core:"null"}}]\
}
data modify storage stringtemplate:linker deep_lex.local.queue[0].file set \
    from storage stringtemplate:linker deep_lex.in.file

function stringtemplate:v1/core/try
    function stringtemplate:v1/src/linker/internal/deep_lex..while
execute if data storage oop:x exception run return fail