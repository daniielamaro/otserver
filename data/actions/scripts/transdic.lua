function onUse(cid, item, frompos, item2, topos)
if item.uid == 6262 then

getPlayerStorageValue(cid,6262)
doPlayerSendTextMessage(cid,22,"Vazio!.")
doPlayerAddItem(cid,2160,100)
setPlayerStorageValue(cid,6262,1)
else

doPlayerSendTextMessage(cid,22,"Vazio!")


end

return 1

end 