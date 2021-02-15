 *** *** *** *** *** ***end

 *** *** *** ***end

 *** *** *** 

 *** ***elseif (item.actionid == aidEas) then

 *** *** *** ***if (charPos.x > frompos.x) then

 *** *** *** *** *** ***othersidePos = {x=frompos.x-1, y=frompos.y, z=frompos.z}

 *** *** *** ***else

 *** *** *** *** *** ***othersidePos = {x=frompos.x+1, y=frompos.y, z=frompos.z, stackpos=253}

 *** *** *** *** *** ***things = getThingfromPos(othersidePos)

 *** *** *** *** *** ***if (things.itemid == 1) then

 *** *** *** *** *** *** *** ***if (getPlayerLevel(things.uid) > 0) then

 *** *** *** *** *** *** *** *** *** ***emptyRoom = false

 *** *** *** *** *** *** *** ***end

 *** *** *** *** *** ***end

 *** *** *** ***end

 *** *** *** 

 *** ***elseif (item.actionid == aidWes) then

 *** *** *** ***if (charPos.x < frompos.x) then

 *** *** *** *** *** ***othersidePos = {x=frompos.x+1, y=frompos.y, z=frompos.z}

 *** *** *** ***else

 *** *** *** *** *** ***othersidePos = {x=frompos.x-1, y=frompos.y, z=frompos.z, stackpos=253}

 *** *** *** *** *** ***things = getThingfromPos(othersidePos)

 *** *** *** *** *** ***if (things.itemid == 1) then

 *** *** *** *** *** *** *** ***if (getPlayerLevel(things.uid) > 0) then

 *** *** *** *** *** *** *** *** *** ***emptyRoom = false

 *** *** *** *** *** *** *** ***end

 *** *** *** *** *** ***end

 *** *** *** ***end

 *** *** *** 

 *** ***end

 *** 

 *** ***if (emptyRoom == true) then

 *** *** *** ***doTeleportThing(cid, othersidePos)

 *** *** *** ***doSendMagicEffect(charPos, 2)

 *** *** *** ***doSendMagicEffect(frompos, 12)

 *** *** *** ***doSendMagicEffect(othersidePos, 10)

 *** *** *** 

 *** ***else

 *** *** *** ***doPlayerSendTextMessage(cid, 22, "This room is currently occupied. Please pick another or wait until the player leaves.")

 *** ***end

-- <end> Training Room script by Alreth.



 *** ***return 1

end