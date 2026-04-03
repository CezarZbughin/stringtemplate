#
# This function catches the exception and prints its message in the chat
#
execute if data storage oop:x exception run \
    tellraw @a ["",{text:"Unhandled ", color:"red"}, {storage:"oop:x", nbt:"exception.title", color:"red", underlined:true, interpret:true},\
    {text:": ", color:"red"}, {storage:"oop:x", nbt:"exception.message", color:"red", interpret:true}]
execute if function stringtemplate:v1/core/catch run return 1
return fail