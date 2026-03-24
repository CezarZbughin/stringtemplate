#
#
#
tellraw @a ["",{"text":"--------------------------------------\n\
    Installing library ","color":"gray"},{"text":"stringtemplate","color":"yellow"},\
    {"text":" by ","color":"gray"},\
    {"text":"[credit]","color":"gold","click_event":{action:"run_command", command:'tellraw @s ["",{storage:"stringtemplate:lib", nbt:"credit", color:"yellow"}]'}},\
    {"text":" more on ","color":"gray"},\
    {"text":"GitHub","color":"white","click_event":{"action":"open_url", "url":"https://github.com/CezarZbughin/stringtemplate"}},\
\    
    {"text":"\nActive versions: ","color":"gray"},{"storage":"stringtemplate:lib", nbt:"versions","color":"yellow"},\
    {"text":"\n--------------------------------------","color":"gray"}\
]