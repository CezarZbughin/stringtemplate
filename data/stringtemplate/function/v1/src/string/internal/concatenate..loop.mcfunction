data modify storage stringtemplate:string self set \
    from storage stringtemplate:string concatenate.in[0]

function stringtemplate:v1/src/string/public/escape_sq

data modify storage stringtemplate:string concatenate_sq.in append \
    from storage stringtemplate:string self

data remove storage stringtemplate:string concatenate.in[0]

execute if data storage stringtemplate:string concatenate.in[0] run \
    function stringtemplate:v1/src/string/internal/concatenate..loop