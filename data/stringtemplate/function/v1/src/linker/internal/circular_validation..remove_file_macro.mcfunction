#
#
#
$data remove storage stringtemplate:linker circular_validation.in.lex_list[].dependencies[{file:"$(file)"}]
$return run data remove storage stringtemplate:linker circular_validation.in.lex_list[{file:"$(file)"}]
return fail