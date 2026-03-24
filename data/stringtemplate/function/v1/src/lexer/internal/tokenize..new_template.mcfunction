#
#
#
execute if data storage stringtemplate:lexer tokenize.out.templates{core:"null"} run \
    data modify storage stringtemplate:lexer tokenize.out.templates set value []

data modify storage stringtemplate:lexer tokenize.out.templates append value {core:"null"}

return 1