#
# @param stringtemplate:parser self.tokens
# @output stringtemplate:parser.scope self.syntax_tree
#
                   #stringtemplate:parser self.tokens is set before the call
data modify storage stringtemplate:parser self.syntax_tree set value []
data modify storage stringtemplate:parser self.scopes set value [{root:{}}]
data modify storage stringtemplate:parser self.variables set value []
data modify storage stringtemplate:parser self.TOS set value 0
data modify storage stringtemplate:parser self.rnode set value "null"
#variables : {name:string, index:int}[]

execute if data storage stringtemplate:parser self.tokens[0] run \
    function stringtemplate:parser/internal/parse..each_token

#execute if data storage stringtemplate:parser.scope parse.local.stack[1] run \
    return run function stringtemplate:exception/throw_parse_exception {message:"Parser failure. Block opened, but never closed."}

#data modify storage stringtemplate:parser.scope parse.out.syntax_tree set \
    from storage stringtemplate:parser.scope parse.local.stack[0]