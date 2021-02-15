--Adam 2008 Otland.net
--Creditos tibiagamehost para o Forums OTServ

local condition = createConditionObject(CONDITION_MUTED)
setConditionParam(condition, CONDITION_PARAM_TICKS, 10*1000) -- 10*1000 is 10 seconds.

function onSay(cid, words, param)

player = getPlayerByName(param)
if getPlayerGroupId(cid) > 3 then
if player > 1 then
doAddCondition(player, condition)
else
doPlayerSendCancel(cid, "Este player esta offline ou nao existe.")
end
else
doPlayerSendCancel(cid, "Voce nao pode executar este comando.")
end
end