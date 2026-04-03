#
#
#
data modify storage stringtemplate:string concatenate_sq.local.macro set value {\
    str0  : "", str1  : "", str2  : "", str3  : "", \
    str4  : "", str5  : "", str6  : "", str7  : "", \
    str8  : "", str9  : "", str10 : "", str11 : "", \
    str12 : "", str13 : "", str14 : "", str15 : "", \
    str16 : "", str17 : "", str18 : "", str19 : "", \
    str20 : "", str21 : "", str22 : "", str23 : "", \
    str24 : "", str25 : "", str26 : "", str27 : "", \
    str28 : "", str29 : "", str30 : "", str31 : ""  \
}

execute unless data storage stringtemplate:string {self:""}
    function stringtemplate:v1/src/string/public/escape_sq

data modify storage stringtemplate:string concatenate_sq.local.macro.str0 set from \
    storage stringtemplate:string self
data modify storage stringtemplate:string concatenate_sq.local.macro.str1 set from \
    storage stringtemplate:string concatenate_sq.in[0]
data modify storage stringtemplate:string concatenate_sq.local.macro.str2 set from \
    storage stringtemplate:string concatenate_sq.in[1]
data modify storage stringtemplate:string concatenate_sq.local.macro.str3 set from \
    storage stringtemplate:string concatenate_sq.in[2]
data modify storage stringtemplate:string concatenate_sq.local.macro.str4 set from \
    storage stringtemplate:string concatenate_sq.in[3]
data modify storage stringtemplate:string concatenate_sq.local.macro.str5 set from \
    storage stringtemplate:string concatenate_sq.in[4]
data modify storage stringtemplate:string concatenate_sq.local.macro.str6 set from \
    storage stringtemplate:string concatenate_sq.in[5]
data modify storage stringtemplate:string concatenate_sq.local.macro.str7 set from \
    storage stringtemplate:string concatenate_sq.in[6]
data modify storage stringtemplate:string concatenate_sq.local.macro.str8 set from \
    storage stringtemplate:string concatenate_sq.in[7]
data modify storage stringtemplate:string concatenate_sq.local.macro.str9 set from \
    storage stringtemplate:string concatenate_sq.in[8]
data modify storage stringtemplate:string concatenate_sq.local.macro.str10 set from \
    storage stringtemplate:string concatenate_sq.in[9]
data modify storage stringtemplate:string concatenate_sq.local.macro.str11 set from \
    storage stringtemplate:string concatenate_sq.in[10]
data modify storage stringtemplate:string concatenate_sq.local.macro.str12 set from \
    storage stringtemplate:string concatenate_sq.in[11]
data modify storage stringtemplate:string concatenate_sq.local.macro.str13 set from \
    storage stringtemplate:string concatenate_sq.in[12]
data modify storage stringtemplate:string concatenate_sq.local.macro.str14 set from \
    storage stringtemplate:string concatenate_sq.in[13]
data modify storage stringtemplate:string concatenate_sq.local.macro.str15 set from \
    storage stringtemplate:string concatenate_sq.in[14]
data modify storage stringtemplate:string concatenate_sq.local.macro.str16 set from \
    storage stringtemplate:string concatenate_sq.in[15]
data modify storage stringtemplate:string concatenate_sq.local.macro.str17 set from \
    storage stringtemplate:string concatenate_sq.in[16]
data modify storage stringtemplate:string concatenate_sq.local.macro.str18 set from \
    storage stringtemplate:string concatenate_sq.in[17]
data modify storage stringtemplate:string concatenate_sq.local.macro.str19 set from \
    storage stringtemplate:string concatenate_sq.in[18]
data modify storage stringtemplate:string concatenate_sq.local.macro.str20 set from \
    storage stringtemplate:string concatenate_sq.in[19]
data modify storage stringtemplate:string concatenate_sq.local.macro.str21 set from \
    storage stringtemplate:string concatenate_sq.in[20]
data modify storage stringtemplate:string concatenate_sq.local.macro.str22 set from \
    storage stringtemplate:string concatenate_sq.in[21]
data modify storage stringtemplate:string concatenate_sq.local.macro.str23 set from \
    storage stringtemplate:string concatenate_sq.in[22]
data modify storage stringtemplate:string concatenate_sq.local.macro.str24 set from \
    storage stringtemplate:string concatenate_sq.in[23]
data modify storage stringtemplate:string concatenate_sq.local.macro.str25 set from \
    storage stringtemplate:string concatenate_sq.in[24]
data modify storage stringtemplate:string concatenate_sq.local.macro.str26 set from \
    storage stringtemplate:string concatenate_sq.in[25]
data modify storage stringtemplate:string concatenate_sq.local.macro.str27 set from \
    storage stringtemplate:string concatenate_sq.in[26]
data modify storage stringtemplate:string concatenate_sq.local.macro.str28 set from \
    storage stringtemplate:string concatenate_sq.in[27]
data modify storage stringtemplate:string concatenate_sq.local.macro.str29 set from \
    storage stringtemplate:string concatenate_sq.in[28]
data modify storage stringtemplate:string concatenate_sq.local.macro.str30 set from \
    storage stringtemplate:string concatenate_sq.in[29]
data modify storage stringtemplate:string concatenate_sq.local.macro.str31 set from \
    storage stringtemplate:string concatenate_sq.in[30]

data remove storage stringtemplate:string concatenate_sq.in[0]
data remove storage stringtemplate:string concatenate_sq.in[0]
data remove storage stringtemplate:string concatenate_sq.in[0]
data remove storage stringtemplate:string concatenate_sq.in[0]
data remove storage stringtemplate:string concatenate_sq.in[0]
data remove storage stringtemplate:string concatenate_sq.in[0]
data remove storage stringtemplate:string concatenate_sq.in[0]
data remove storage stringtemplate:string concatenate_sq.in[0]
data remove storage stringtemplate:string concatenate_sq.in[0]
data remove storage stringtemplate:string concatenate_sq.in[0]
data remove storage stringtemplate:string concatenate_sq.in[0]
data remove storage stringtemplate:string concatenate_sq.in[0]
data remove storage stringtemplate:string concatenate_sq.in[0]
data remove storage stringtemplate:string concatenate_sq.in[0]
data remove storage stringtemplate:string concatenate_sq.in[0]
data remove storage stringtemplate:string concatenate_sq.in[0]
data remove storage stringtemplate:string concatenate_sq.in[0]
data remove storage stringtemplate:string concatenate_sq.in[0]
data remove storage stringtemplate:string concatenate_sq.in[0]
data remove storage stringtemplate:string concatenate_sq.in[0]
data remove storage stringtemplate:string concatenate_sq.in[0]
data remove storage stringtemplate:string concatenate_sq.in[0]
data remove storage stringtemplate:string concatenate_sq.in[0]
data remove storage stringtemplate:string concatenate_sq.in[0]
data remove storage stringtemplate:string concatenate_sq.in[0]
data remove storage stringtemplate:string concatenate_sq.in[0]
data remove storage stringtemplate:string concatenate_sq.in[0]
data remove storage stringtemplate:string concatenate_sq.in[0]
data remove storage stringtemplate:string concatenate_sq.in[0]
data remove storage stringtemplate:string concatenate_sq.in[0]
data remove storage stringtemplate:string concatenate_sq.in[0]

function stringtemplate:v1/src/string/internal/concatenate_sq..concat32 with \
    storage stringtemplate:string concatenate_sq.local.macro

execute if data storage stringtemplate:string concatenate_sq.in[0] run \
    function stringtemplate:v1/src/string/internal/concatenate_sq..do32