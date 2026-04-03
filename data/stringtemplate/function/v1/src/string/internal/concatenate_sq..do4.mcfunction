#
#
#
data modify storage stringtemplate:string concatenate_sq.local.macro set value {\
    str0  : "", str1  : "", str2  : "", str3  : "", \
}

data modify storage stringtemplate:string concatenate_sq.local.macro.str0 set from \
    storage stringtemplate:string concatenate_sq.in[0]
data modify storage stringtemplate:string concatenate_sq.local.macro.str1 set from \
    storage stringtemplate:string concatenate_sq.in[1]
data modify storage stringtemplate:string concatenate_sq.local.macro.str2 set from \
    storage stringtemplate:string concatenate_sq.in[2]
data modify storage stringtemplate:string concatenate_sq.local.macro.str3 set from \
    storage stringtemplate:string concatenate_sq.in[3]

function stringtemplate:v1/src/string/internal/concatenate_sq..concat4 with \
    storage stringtemplate:string concatenate_sq.local.macro