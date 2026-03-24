#
# @uses stringtemplate:lexer self.file : string
# @param stringtemplate:lexer tokenize.out.templates : Token[][]
#
data modify storage stringtemplate:lexer tokenize.out.templates set value {core:"null"}
function stringtemplate:v1/src/lexer/internal/tokenize..call with storage stringtemplate:lexer self
data remove storage stringtemplate:lexer tokenize.out.templates[][{TEXT:""}]

