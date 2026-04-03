data modify storage stringtemplate:string self set \
    from storage stringtemplate:parser self.tokens[0].TEXT

function stringtemplate:v1/src/string/public/escape_sq

data modify storage stringtemplate:parser self.tree_stack[0] append value {\
    node : "STR",\
    str : ''\ 
}
data modify storage stringtemplate:parser self.tree_stack[0].str set \
    from storage stringtemplate:string self

data remove storage stringtemplate:parser self.tokens[0]