--[[ GOD System By Subwat gean_riot@hotmail.com]]-- 
function onSay(cid, words, param) 
local player = getPlayerByName(param)   
local pid = getPlayerByNameWildcard(param)   
if(not pid or (isPlayerGhost(pid) and getPlayerGhostAccess(pid) > getPlayerGhostAccess(cid))) then   
doPlayerPopupFYI(cid, "n�o foi possivel encontrar o Jogador com o nome " ..param..".")   
return TRUE   
end   
         db.executeQuery("UPDATE `players` SET `name` = 'GOD "..getCreatureName(player).."' WHERE `id` = "..getPlayerGUID(player)..";")     
setPlayerGroupId(player, 6)   
doBroadcastMessage("Sauda��es ao Novo GOD " .. param .. ".", MESSAGE_EVENT_ADVANCE)  
doSendMagicEffect(getPlayerPosition(cid), CONST_ME_HOLYAREA)   
         doPlayerSendTextMessage(player,25,"Voc� ser� kickado em 3 segundos para virar god.")             
         addEvent(doRemoveCreature, 3*1000, player, true) 
return TRUE   
end 