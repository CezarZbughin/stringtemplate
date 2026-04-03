#
#
#
execute unless data storage stringtemplate:lib env run \
    data modify storage stringtemplate:lib env set value "PROD"

function #stringtemplate:shared/before_load

tellraw @a ["",{text:"Libary initializing ", color:"gray"}, {text:"stringtemplate ","color":"green"}]

scoreboard objectives add stringtemplate dummy
scoreboard objectives add stringtemplate.credit trigger
function #stringtemplate:shared/scoreboards

execute in minecraft:overworld run forceload add 0 29999984
execute in minecraft:overworld run setblock 0 116 29999984 air
execute in minecraft:overworld run setblock 0 116 29999984 oak_sign

data modify storage stringtemplate:lib credit set value []
function #stringtemplate:shared/contributors

data modify storage stringtemplate:lib versions set value []
function #stringtemplate:shared/register_version

function #stringtemplate:shared/after_load

function example:test