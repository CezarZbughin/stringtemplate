#
#
#
data modify storage stringtemplate:string.scope from_list.local.strings set value {\
    str0  : "",\
    str1  : "",\
    str2  : "",\
    str3  : "",\
    str4  : "",\
    str5  : "",\
    str6  : "",\
    str7  : "",\
    str8  : "",\
    str9  : "",\
    str10 : "",\
    str11 : "",\
    str12 : "",\
    str13 : "",\
    str14 : "",\
    str15 : "",\
    str16 : "",\
    str17 : "",\
    str18 : "",\
    str19 : "",\
    str20 : "",\
    str21 : "",\
    str22 : "",\
    str23 : "",\
    str24 : "",\
    str25 : "",\
    str26 : "",\
    str27 : "",\
    str28 : "",\
    str29 : "",\
    str30 : "",\
    str31 : "",\
}

execute unless data storage stringtemplate:string {self:""}
    function stringtemplate:v1/src/string/public/escape_sq

data modify storage stringtemplate:string.scope from_list.local.strings.str0 set from \
    storage stringtemplate:string self
data modify storage stringtemplate:string.scope from_list.local.strings.str1 set from \
    storage stringtemplate:string.scope from_list.in.list[0]
data modify storage stringtemplate:string.scope from_list.local.strings.str2 set from \
    storage stringtemplate:string.scope from_list.in.list[1]
data modify storage stringtemplate:string.scope from_list.local.strings.str3 set from \
    storage stringtemplate:string.scope from_list.in.list[2]
data modify storage stringtemplate:string.scope from_list.local.strings.str4 set from \
    storage stringtemplate:string.scope from_list.in.list[3]
data modify storage stringtemplate:string.scope from_list.local.strings.str5 set from \
    storage stringtemplate:string.scope from_list.in.list[4]
data modify storage stringtemplate:string.scope from_list.local.strings.str6 set from \
    storage stringtemplate:string.scope from_list.in.list[5]
data modify storage stringtemplate:string.scope from_list.local.strings.str7 set from \
    storage stringtemplate:string.scope from_list.in.list[6]
data modify storage stringtemplate:string.scope from_list.local.strings.str8 set from \
    storage stringtemplate:string.scope from_list.in.list[7]
data modify storage stringtemplate:string.scope from_list.local.strings.str9 set from \
    storage stringtemplate:string.scope from_list.in.list[8]
data modify storage stringtemplate:string.scope from_list.local.strings.str10 set from \
    storage stringtemplate:string.scope from_list.in.list[9]
data modify storage stringtemplate:string.scope from_list.local.strings.str11 set from \
    storage stringtemplate:string.scope from_list.in.list[10]
data modify storage stringtemplate:string.scope from_list.local.strings.str12 set from \
    storage stringtemplate:string.scope from_list.in.list[11]
data modify storage stringtemplate:string.scope from_list.local.strings.str13 set from \
    storage stringtemplate:string.scope from_list.in.list[12]
data modify storage stringtemplate:string.scope from_list.local.strings.str14 set from \
    storage stringtemplate:string.scope from_list.in.list[13]
data modify storage stringtemplate:string.scope from_list.local.strings.str15 set from \
    storage stringtemplate:string.scope from_list.in.list[14]
data modify storage stringtemplate:string.scope from_list.local.strings.str16 set from \
    storage stringtemplate:string.scope from_list.in.list[15]
data modify storage stringtemplate:string.scope from_list.local.strings.str17 set from \
    storage stringtemplate:string.scope from_list.in.list[16]
data modify storage stringtemplate:string.scope from_list.local.strings.str18 set from \
    storage stringtemplate:string.scope from_list.in.list[17]
data modify storage stringtemplate:string.scope from_list.local.strings.str19 set from \
    storage stringtemplate:string.scope from_list.in.list[18]
data modify storage stringtemplate:string.scope from_list.local.strings.str20 set from \
    storage stringtemplate:string.scope from_list.in.list[19]
data modify storage stringtemplate:string.scope from_list.local.strings.str21 set from \
    storage stringtemplate:string.scope from_list.in.list[20]
data modify storage stringtemplate:string.scope from_list.local.strings.str22 set from \
    storage stringtemplate:string.scope from_list.in.list[21]
data modify storage stringtemplate:string.scope from_list.local.strings.str23 set from \
    storage stringtemplate:string.scope from_list.in.list[22]
data modify storage stringtemplate:string.scope from_list.local.strings.str24 set from \
    storage stringtemplate:string.scope from_list.in.list[23]
data modify storage stringtemplate:string.scope from_list.local.strings.str25 set from \
    storage stringtemplate:string.scope from_list.in.list[24]
data modify storage stringtemplate:string.scope from_list.local.strings.str26 set from \
    storage stringtemplate:string.scope from_list.in.list[25]
data modify storage stringtemplate:string.scope from_list.local.strings.str27 set from \
    storage stringtemplate:string.scope from_list.in.list[26]
data modify storage stringtemplate:string.scope from_list.local.strings.str28 set from \
    storage stringtemplate:string.scope from_list.in.list[27]
data modify storage stringtemplate:string.scope from_list.local.strings.str29 set from \
    storage stringtemplate:string.scope from_list.in.list[28]
data modify storage stringtemplate:string.scope from_list.local.strings.str30 set from \
    storage stringtemplate:string.scope from_list.in.list[29]
data modify storage stringtemplate:string.scope from_list.local.strings.str31 set from \
    storage stringtemplate:string.scope from_list.in.list[30]

data remove storage stringtemplate:string.scope from_list.in.list[0]
data remove storage stringtemplate:string.scope from_list.in.list[0]
data remove storage stringtemplate:string.scope from_list.in.list[0]
data remove storage stringtemplate:string.scope from_list.in.list[0]
data remove storage stringtemplate:string.scope from_list.in.list[0]
data remove storage stringtemplate:string.scope from_list.in.list[0]
data remove storage stringtemplate:string.scope from_list.in.list[0]
data remove storage stringtemplate:string.scope from_list.in.list[0]
data remove storage stringtemplate:string.scope from_list.in.list[0]
data remove storage stringtemplate:string.scope from_list.in.list[0]
data remove storage stringtemplate:string.scope from_list.in.list[0]
data remove storage stringtemplate:string.scope from_list.in.list[0]
data remove storage stringtemplate:string.scope from_list.in.list[0]
data remove storage stringtemplate:string.scope from_list.in.list[0]
data remove storage stringtemplate:string.scope from_list.in.list[0]
data remove storage stringtemplate:string.scope from_list.in.list[0]
data remove storage stringtemplate:string.scope from_list.in.list[0]
data remove storage stringtemplate:string.scope from_list.in.list[0]
data remove storage stringtemplate:string.scope from_list.in.list[0]
data remove storage stringtemplate:string.scope from_list.in.list[0]
data remove storage stringtemplate:string.scope from_list.in.list[0]
data remove storage stringtemplate:string.scope from_list.in.list[0]
data remove storage stringtemplate:string.scope from_list.in.list[0]
data remove storage stringtemplate:string.scope from_list.in.list[0]
data remove storage stringtemplate:string.scope from_list.in.list[0]
data remove storage stringtemplate:string.scope from_list.in.list[0]
data remove storage stringtemplate:string.scope from_list.in.list[0]
data remove storage stringtemplate:string.scope from_list.in.list[0]
data remove storage stringtemplate:string.scope from_list.in.list[0]
data remove storage stringtemplate:string.scope from_list.in.list[0]
data remove storage stringtemplate:string.scope from_list.in.list[0]

function stringtemplate:v1/src/string/internal/from_list..concat with \
    storage stringtemplate:string.scope from_list.local.strings


execute if data storage stringtemplate:string.scope from_list.in.list[0] run \
    function stringtemplate:v1/src/string/internal/from_list..do32