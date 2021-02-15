local FRASES = {"Off-Line!", "Ausente !", "Afk!", "Fui Ali!"} -- Auto-Mensagens.
local TEMPO = 80 -- Intervalo de Tempo em segundos.

local function doSendAutoMessage(cid, pos)
if (isCreature(cid) == TRUE) then
npos = getThingPos(cid)
if (pos.x == npos.x) and (pos.y == npos.y) and (pos.z == npos.z) then
doSendAnimatedText(pos, FRASES[math.random(#FRASES)], 215)
addEvent(doSendAutoMessage, TEMPO*80, cid, npos)
end
end
end

function onSay(cid, words, param)
pos = getThingPos(cid)
doSendAnimatedText(pos, FRASES[math.random(#FRASES)], 215)
doPlayerSendCancel(cid, "Vocês Esta Ausente")
addEvent(doSendAutoMessage, TEMPO*80, cid, pos)
return TRUE
end