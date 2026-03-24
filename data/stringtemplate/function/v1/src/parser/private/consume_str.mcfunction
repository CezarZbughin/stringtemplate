#
# @pre stringtemplate:parser self.tokens[0] instanceof string 
#
data modify storage stringtemplate:parser self.rnode set value {str:{null:{}}}
data remove storage stringtemplate:parser.scope consume_str.local

data modify storage stringtemplate:string self set value {null:{}}
data modify storage stringtemplate:string self set string \
    storage stringtemplate:parser self.tokens[0]

execute if data storage stringtemplate:string self.null run \
    return run function stringtemplate:exception/throw_parse_exception {message:"Parser failure. Unrecognized token, possible lexical analysis failure."}

function stringtemplate:string/public/escape_sq

data modify storage stringtemplate:parser self.rnode.str set \
    from storage stringtemplate:string self

data remove storage stringtemplate:parser self.tokens[0]