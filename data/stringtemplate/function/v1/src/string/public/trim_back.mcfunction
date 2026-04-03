#
# Removes tailing spaces in stringtemplate:string self
#
data remove storage stringtemplate:string trim_back.local
execute unless function stringtemplate:v1/src/string/internal/trim_back..trim1 run \
    return 1
execute unless function stringtemplate:v1/src/string/internal/trim_back..trim1 run \
    return 2
function stringtemplate:v1/src/string/internal/trim_back..trim4
function stringtemplate:v1/src/string/internal/trim_back..trim2
function stringtemplate:v1/src/string/internal/trim_back..trim1
return 3