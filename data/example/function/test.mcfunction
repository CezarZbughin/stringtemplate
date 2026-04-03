#
#
#
tellraw @a {text:"Test start:", color: "gray"}

function stringtemplate:v1/core/try
data modify storage stringtemplate:parser parse_nbt.in.nbt set value "\"hello\".foo"
function stringtemplate:v1/src/parser/public/parse_nbt
execute if function stringtemplate:v1/core/catch_and_print run \
    return fail

tellraw @a {storage:"stringtemplate:parser", nbt:"parse_nbt.out.value_provider"}

tellraw @a {text:"All good.", color: "green"}

return fail

data modify storage stringtemplate:linker constructor.in.file set value "example:basic_template"
function stringtemplate:v1/src/linker/public/constructor

function stringtemplate:v1/core/try
function stringtemplate:v1/src/linker/public/compile
execute if function stringtemplate:v1/core/catch_and_print run \
return fail