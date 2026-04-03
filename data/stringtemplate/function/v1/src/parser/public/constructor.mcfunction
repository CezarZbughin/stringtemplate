#
# @param stringtemplate:parser constructor.in.lex : Lex
#
data modify storage stringtemplate:parser self set value {\
    version : "v1", \
    file : {core:"null"},\
    dependencies : {core:"null"},\
    tokens : {core:"null"}, \
    scopes : [], \
    tree_stack : [[]]\
}
data modify storage stringtemplate:parser self.file set \
    from storage stringtemplate:parser constructor.in.lex.file
data modify storage stringtemplate:parser self.dependencies set \
    from storage stringtemplate:parser constructor.in.lex.dependencies
data modify storage stringtemplate:parser self.tokens set \
    from storage stringtemplate:parser constructor.in.lex.template
