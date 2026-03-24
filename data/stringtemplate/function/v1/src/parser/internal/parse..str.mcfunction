#
#
#
data modify storage stringtemplate:parser.scope parse.local.str set value {not_a_string:1b}
data modify storage stringtemplate:parser.scope parse.local.str set string \
    storage stringtemplate:parser.scope parse.in.tokens[0]

execute if data storage stringtemplate:parser.scope parse.local.str.not_a_string run \
    return run function stringtemplate:exception/throw_parse_exception {message:"Parser failure. Unrecognized token, possible lexical analysis failure."}

data modify storage stringtemplate:string self set \
    from storage stringtemplate:parser.scope parse.local.str
function stringtemplate:string/public/escape_sq

data modify storage stringtemplate:parser.scope parse.local.stack[0] append value {}
data modify storage stringtemplate:parser.scope parse.local.stack[0][-1].str set \
    from storage stringtemplate:string self

data remove storage stringtemplate:parser.scope parse.in.tokens[0]