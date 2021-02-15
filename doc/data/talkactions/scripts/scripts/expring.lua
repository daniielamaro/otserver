----AOL - BY: The Sleeper
function onSay(cid, words, param)

if doPlayerRemoveMoney(cid, 1000000) == TRUE then
local bp = doPlayerAddItem(cid, 8904, 1)
doSendMagicEffect(getCreaturePosition(cid),13)
doCreatureSay(cid, "Comprei Ring De Exp", TALKTYPE_ORANGE_1)
else
doCreatureSay(cid, "Vlww!", TALKTYPE_ORANGE_1)
doSendMagicEffect(getPlayerPosition(cid), CONST_ME_POFF)
end
end