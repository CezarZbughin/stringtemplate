#
#
#
$data modify storage stringtemplate:parser.scope value_provider.out.result.index set from \
    storage stringtemplate:parser.scope value_provider.in.variables[{name:"$(varname)"}].index
