#
#
#
$execute \
    if function stringtemplate:v1/src/parser/internal/parse_nbt..set_is_number \
    store result storage stringtemplate:parser parse_nbt.local._ int $(nbt) run \
    function stringtemplate:v1/core/functional/false
