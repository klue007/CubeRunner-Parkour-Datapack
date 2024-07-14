#timer
function common:timer/init

#rank
function common:rank/init

#ingame
function common:ingame/init

#pb
function common:pb/init

#race
function common:race/init

#end
function common:end/init

#training mode
function common:training_mode/init

#player ID
scoreboard objectives add ID dummy "ID"

#constant
scoreboard objectives add const dummy "const"
function common:const

#trigger
scoreboard objectives add restart trigger [{"text": "重新开始","color": "yellow","bold": true}]
scoreboard objectives add lobby trigger [{"text": "返回大厅","color": "yellow","bold": true}]
scoreboard objectives add ranks trigger [{"text": "评级","color": "gold","bold": true}]

#team
team add ingame "ingame"
team modify ingame collisionRule never
team modify ingame friendlyFire false
team modify ingame color white

team add end "end"
team modify end collisionRule never
team modify end friendlyFire false
team modify end color gold

#click
scoreboard objectives add click_delay dummy "click_delay"

function common:gamerule