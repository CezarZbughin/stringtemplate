#
# @param stringtemplate:api load_fragment.in.file : string - the template name
#
data modify storage stringtemplate:api load_fragment.local set value {\
    queue : [], local_lex_register: []\
}

function stringtemplate:v1/src/lexer/public/constructor

function stringtemplate:v1/core/try
    data remove storage stringtemplate:lexer lex
    data modify storage stringtemplate:lexer lex.in.file set from \
        storage stringtemplate:api load_fragment.in.file
    function stringtemplate:v1/src/lexer/public/lex
execute if data storage oop:x exception run return fail

data modify storage stringtemplate:api load_fragment.local.local_lex_register append \
    from storage stringtemplate:lexer lex.out

data modify storage stringtemplate:api load_fragment.local.queue append \
    from storage stringtemplate:lexer lex.out.dependencies[]

function stringtemplate:v1/core/try
    execute if data storage stringtemplate:api load_fragment.local.queue[0] run \
        function stringtemplate:v1/api/internal/load_template..while
execute if data storage oop:x exception run return fail

#
# TODO: make a copy of the local_lex_registry and validate that there are no circular depencencies 
# If all is fine, for each entry in local_lex_regirsty make a parser and add it to parser_jobs
# There would still be some logic, as dependencies to files already fully compiled must be excluded
#
# then a ticker can start parsing the parsing jobs with no dependencies when each is done, add the synstax tree to 
# a registry and remove the dependencies from each remaining parsing job
#
# It's still worth it to explore other solutions as the current one is not super clean
#

tellraw @a {storage:"stringtemplate:api", nbt:"load_fragment.local.local_lex_register", color:"yellow"}
