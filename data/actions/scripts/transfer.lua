function onUse(cid, item, frompos, item2, topos)
if item.uid == 6464 then

getPlayerStorageValue(cid,6464)
doPlayerSendTextMessage(cid,22,"Vazio!.")
doPlayerAddItem(cid,8985,1)
setPlayerStorageValue(cid,6464,1)
else

doPlayerSendTextMessage(cid,22,"Vazio!")


end

return 1

end 