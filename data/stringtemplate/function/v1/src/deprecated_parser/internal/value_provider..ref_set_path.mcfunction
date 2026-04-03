#
# 
#
execute if data storage stringtemplate:parser.scope value_provider.out.result{index:0} run \
    return run data modify storage stringtemplate:parser.scope value_provider.out.result.path set from \
        storage stringtemplate:parser.scope value_provider.in.expression
                                   
data modify storage stringtemplate:parser.scope value_provider.out.result.path set from \
    storage stringtemplate:parser.scope value_provider.local.subpath