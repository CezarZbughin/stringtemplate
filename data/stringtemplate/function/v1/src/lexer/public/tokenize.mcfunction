#
# @uses stringtemplate:lexer self.file : string
# @param stringtemplate:lexer tokenize.out.template : Token[][]
#
data modify storage stringtemplate:lexer tokenize.out.template set value {core:"null"}
scoreboard players set $lexer.tokenize.templates stringtemplate 0
function stringtemplate:v1/src/lexer/internal/tokenize..call with storage stringtemplate:lexer self
data remove storage stringtemplate:lexer tokenize.out.template{TEXT:""}

