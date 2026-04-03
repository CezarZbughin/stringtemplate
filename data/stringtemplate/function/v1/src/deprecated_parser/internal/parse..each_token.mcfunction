#
#
#
function oop:try
    function stringtemplate:parser/internal/parse..switch
execute if data storage oop:x exception.ooptype.Exception run return fail

function oop:try
    execute if data storage stringtemplate:parser.scope parse.in.tokens[0] run \
        function stringtemplate:parser/internal/parse..each_token
execute if data storage oop:x exception.ooptype.Exception run return fail
