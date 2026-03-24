#
#
#
data remove storage stringtemplate:lexer static
function frogr.ui:example with storage stringtemplate:language keywords

function oop:try
    data remove storage stringtemplate:parser.scope parse
    data modify storage stringtemplate:parser.scope parse.in.tokens set from storage stringtemplate:lexer static.result.tokens
    function stringtemplate:parser/public/parse
execute if function oop:catch_and_print run return fail

function oop:try
    data modify storage stringtemplate:syntax_tree self set \
        from storage stringtemplate:parser.scope parse.out.syntax_tree
    data modify storage stringtemplate:syntax_tree.scope evaluate.in.data set value \
    {events:[\
        {id:1, status:"IN_PROGRESS"}, \
        {id:2, status:"IN_PROGRESS"}, \
        {id:3, status:"NEW"}, \
        {id:4, status:"IN_PROGRESS"}, \
        {id:5, status:"NEW"}, \
        {id:6, status:"IN_PROGRESS"}, \
        {id:7, status:"NEW"}, \
    ]}
    function stringtemplate:syntax_tree/public/evaluate
execute if function oop:catch_and_print run return fail

function stringtemplate:test..open with storage stringtemplate:syntax_tree.scope evaluate.out
tellraw @a {storage:"stringtemplate:syntax_tree.scope", nbt:"evaluate.out.str", color:"dark_purple"}
#TEST
