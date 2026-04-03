#
#
#
data modify storage stringtemplate:string concatenate_sq.local.macro set value {\
    str0  : "", str1  : "", str2  : "", str3  : "", \
    str4  : "", str5  : "", str6  : "", str7  : "", \
    str8  : "", str9  : "", str10 : "", str11 : "", \
    str12 : "", str13 : "", str14 : "", str15 : "", \
}

data modify storage stringtemplate:string concatenate_sq.local.macro.str0 set from \
    storage stringtemplate:string concatenate_sq.in[0]
data modify storage stringtemplate:string concatenate_sq.local.macro.str1 set from \
    storage stringtemplate:string concatenate_sq.in[1]
data modify storage stringtemplate:string concatenate_sq.local.macro.str2 set from \
    storage stringtemplate:string concatenate_sq.in[2]
data modify storage stringtemplate:string concatenate_sq.local.macro.str3 set from \
    storage stringtemplate:string concatenate_sq.in[3]
data modify storage stringtemplate:string concatenate_sq.local.macro.str4 set from \
    storage stringtemplate:string concatenate_sq.in[4]
data modify storage stringtemplate:string concatenate_sq.local.macro.str5 set from \
    storage stringtemplate:string concatenate_sq.in[5]
data modify storage stringtemplate:string concatenate_sq.local.macro.str6 set from \
    storage stringtemplate:string concatenate_sq.in[6]
data modify storage stringtemplate:string concatenate_sq.local.macro.str7 set from \
    storage stringtemplate:string concatenate_sq.in[7]
data modify storage stringtemplate:string concatenate_sq.local.macro.str8 set from \
    storage stringtemplate:string concatenate_sq.in[8]
data modify storage stringtemplate:string concatenate_sq.local.macro.str9 set from \
    storage stringtemplate:string concatenate_sq.in[9]
data modify storage stringtemplate:string concatenate_sq.local.macro.str10 set from \
    storage stringtemplate:string concatenate_sq.in[10]
data modify storage stringtemplate:string concatenate_sq.local.macro.str11 set from \
    storage stringtemplate:string concatenate_sq.in[11]
data modify storage stringtemplate:string concatenate_sq.local.macro.str12 set from \
    storage stringtemplate:string concatenate_sq.in[12]
data modify storage stringtemplate:string concatenate_sq.local.macro.str13 set from \
    storage stringtemplate:string concatenate_sq.in[13]
data modify storage stringtemplate:string concatenate_sq.local.macro.str14 set from \
    storage stringtemplate:string concatenate_sq.in[14]
data modify storage stringtemplate:string concatenate_sq.local.macro.str15 set from \
    storage stringtemplate:string concatenate_sq.in[15]

function stringtemplate:v1/src/string/internal/concatenate_sq..concat16 with \
    storage stringtemplate:string concatenate_sq.local.macro