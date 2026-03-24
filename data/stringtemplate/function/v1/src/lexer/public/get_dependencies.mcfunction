#
# @uses stringtemplate:lexer self.file : string
# @param stringtemplate:lexer get_dependencies.out.dependencies : string[]
#
data modify storage stringtemplate:lexer get_dependencies.out.dependencies set value []
function stringtemplate:v1/src/lexer/internal/get_dependencies..call with storage stringtemplate:lexer self