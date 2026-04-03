#
# Removes leading spaces in stringtemplate:string self
#
data remove storage stringtemplate:string trim_front.local
execute unless function stringtemplate:v1/src/string/internal/trim_front..trim1 run \
    return 1
execute unless function stringtemplate:v1/src/string/internal/trim_front..trim1 run \
    return 2
function stringtemplate:v1/src/string/internal/trim_front..trim4
function stringtemplate:v1/src/string/internal/trim_front..trim2
function stringtemplate:v1/src/string/internal/trim_front..trim1
return 3