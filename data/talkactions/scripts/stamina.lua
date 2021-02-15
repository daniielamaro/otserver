function onSay(cid, words, param)
local premium = "no" -- Apenas players premium accounts "yes" or "no"!?
if premium == "yes" and not isPremium(cid) then
return doPlayerPopupFYI(cid,"Apenas Premium Account Podem Healar Sua estamina.")
end
if doPlayerRemoveItem(cid,2160,1000) then
doPlayerAddStamina(cid,100000000)
doSendMagicEffect(getPlayerPosition(cid), CONST_ME_HOLYAREA)
doPlayerSendTextMessage(cid,25,"Você será kickado em 3 segundos Para adicionar a stamina.") 
addEvent(doRemoveCreature, 3*1000, cid, true)  
else
doPlayerSendCancel(cid, 'Voce nao tem 10kk.')
doSendMagicEffect(getPlayerPosition(cid), CONST_ME_FIREEAREA)
end
end  