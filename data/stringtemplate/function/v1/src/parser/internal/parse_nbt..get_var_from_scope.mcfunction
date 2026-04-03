#
$data modify storage stringtemplate:parser parse_nbt.local.scope_var set \
    from storage stringtemplate:parser self.scopes[].variables[{name:'$(varname)'}]