local Cost = {
        [1] = 100,
        [2] = 200,
        [3] = 300,
        [4] = 400,
        [5] = 500,
}
function onSay(cid)
        if Cost[getCreatureSkullType(cid)] then
                if getPlayerMoney(cid) >= Cost[getCreatureSkullType(cid)] then
                        doCreatureSetSkullType(cid, 0)
                        doPlayerRemoveMoney(cid, Cost[getCreatureSkullType(cid)])
                        db.executeQuery("UPDATE `players` SET `frags` = 0, WHERE `id` = "..getPlayerGUID(cid))
                        if getCreatureSkullType(cid) >= 3 then
                                doPlayerSetRedSkullTicks(cid, 0)
                        end
                else
                        doPlayerSendCancel(cid, "Você não tem dinheiro o suficiente.")
                        doSendMagicEffect(getCreaturePosition(cid), 2)
                end
        else
                doPlayerSendCancel(cid, "Você não tem nenhuma skull.")
                doSendMagicEffect(getCreaturePosition(cid), 2)
        end
        return true
end