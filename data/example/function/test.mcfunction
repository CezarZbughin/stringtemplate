#
#
#
tellraw @a {text:"Test start:", color: "gray"}

data modify storage stringtemplate:linker constructor.in.file set value "example:basic_template"
function stringtemplate:v1/src/linker/public/constructor

function stringtemplate:v1/core/try
    function stringtemplate:v1/src/linker/public/compile
execute if function stringtemplate:v1/core/catch_and_print run \
    return fail

tellraw @a {text:"All good.", color: "green"}
