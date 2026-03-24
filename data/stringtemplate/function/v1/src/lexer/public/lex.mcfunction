#
# @uses stringtemplate:lexer self.file : string
# @output stringtemplate:lexer lex.out : {file: string, dependencies: {file:string}[], templates: Token[][]}
#
# @throws InvalidMacroException - If the template can not be lexed because it contains unexpected macro arguments, or if the file is empty
# @throws LexerException - If the template tokanization failed, for example if the text is not correctly single-quote escaped
#
data modify storage stringtemplate:lexer lex.out set value {}

function stringtemplate:v1/src/lexer/public/validate_macro
execute if data storage stringtemplate:lexer validate_macro.out{valid:0b} run \
    return run function stringtemplate:v1/src/exception/throw_lexer_exception_inv_macro

function stringtemplate:v1/src/lexer/public/get_dependencies

function stringtemplate:v1/src/lexer/public/tokenize

data modify storage stringtemplate:lexer lex.out.file set \
    from storage stringtemplate:lexer self.file

data modify storage stringtemplate:lexer lex.out.dependencies set \
    from storage stringtemplate:lexer get_dependencies.out.dependencies

data modify storage stringtemplate:lexer lex.out.templates set \
    from storage stringtemplate:lexer tokenize.out.templates
return 1