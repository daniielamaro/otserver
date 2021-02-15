-- TibiaGameXTibia --
function onSay(cid, words, param)
if doPlayerRemoveMoney(cid, 10000000) == TRUE then
doPlayerGiveItem(cid,7439, 1, 1)
doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "Voce comprou um heal stamina.")
doSendMagicEffect(getPlayerPosition(cid), CONST_ME_ENERGY)
else
doPlayerSendCancel(cid, "Voce precisa de 10kk para comprar uma stamina potion.")
doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "Voce nao tem 10kk para comprar heal stamina.")
doSendMagicEffect(getPlayerPosition(cid), CONST_ME_ENERGY)
end
end