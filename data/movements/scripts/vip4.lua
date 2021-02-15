function onStepIn(cid, item, position, fromPosition)

local tileConfig = {
kickPos = fromPosition,
kickEffect = CONST_ME_POFF,
kickMsg = "Você precisa ser um vip (GOLD) para acessar esta área.",
enterMsg = "BEM VINDO A AREA VIP (GOLD)!",
enterEffect = CONST_ME_MAGIC_BLUE,
vipStorage = 13541,
}

if(getPlayerStorageValue(cid, tileConfig.vipStorage) <= 0) then
doTeleportThing(cid, tileConfig.kickPos)
doSendMagicEffect(tileConfig.kickPos, tileConfig.kickEffect)
doPlayerSendCancel(cid, tileConfig.kickMsg)
return
end

doPlayerSendTextMessage(cid, 25, tileConfig.enterMsg)
doSendMagicEffect(position, tileConfig.enterEffect)
return true
end