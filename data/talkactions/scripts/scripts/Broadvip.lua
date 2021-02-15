local config = {
OnlyVips = "yes", -- somente jogadores vip usam [[ (yes/no) ]]
needPremium = "yes", -- se precisa ter premium [[ (yes/no) ]]
OnlyCusto = "yes", -- se a mensagem vai custar [[ (yes/no) ]]
PriceForMsg = 1000 -- pre�o de casa mensagem
}

function onSay(cid, words, param, channel)
if(param == "") then
doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Voc� precisa digitar uma mensagem.")
return TRUE
end

if(config.needPremium == "yes") and (not isPremium(cid)) then
doPlayerSendTextMessage(cid, MESSAGE_EVENT_DEFAULT, "voc� n�o possui premium account.")
return TRUE
end

if (config.OnlyVips == "yes") and vip.hasVip(cid) == FALSE then
doPlayerSendCancel(cid,"Apenas players com Vip account podem falar por aqui.")
return TRUE
end

if(config.OnlyCusto == "yes") and (doPlayerRemoveMoney(cid, config.PriceForMsg) == TRUE) then
doBroadcastMessage("[V.I.P] " .. getPlayerName(cid) .. " Agora Diz: " .. param .. "", MESSAGE_INFO_DESCR)
else
doPlayerSendCancel(cid, "Voc� precisa de " .. config.PriceForMsg .. " gps para enviar a messagem.")
end
return TRUE
end