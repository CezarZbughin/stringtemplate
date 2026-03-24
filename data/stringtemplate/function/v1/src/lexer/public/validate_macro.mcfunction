#
# @uses stringtemplate:lexer self.file : string
#
# @output stringtemplate:lexer validate_macro.out.valid : string
#
data modify storage stringtemplate:lexer validate_macro.out.valid set value 0b
function stringtemplate:v1/src/lexer/internal/validate_macro..call with storage stringtemplate:lexer self