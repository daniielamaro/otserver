function onStepIn(cid, item, pos)



-- teleports config
teleport1 ={x=154, y=44, z=7}



if isPlayer(cid) then

if item.actionid == 13539 then

vip = getPlayerStorageValue(cid,13540)
if vip == -1 then
doPlayerSendCancel(cid,"Em breve quest para está área.")


doTeleportThing(cid,teleport1)


else

end

end

end

end
