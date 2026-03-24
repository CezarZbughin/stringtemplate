#
# This function catches the exception and prints its message in the chat
#
execute if data storage oop:x exception run \
    tellraw @a ["",{text:"Unhandled ", color:"red"}, {storage:"oop:x", nbt:"exception.ooptype.as_string", color:"dark_red", bold:true},\
        {text:": ", color:"dark_red"}, {storage:"oop:x", nbt:"exception.exception__message", color:"red"}]
execute if function stringtemplate:v1/core/catch run return 1
return fail