-- By Skyblade


function onUse(cid, item, frompos, item2, topos)

----Constants

nome = getPlayerName(cid)
now = os.time()
day = ((60*60)*24)

----Constants


-----------------------   CONFIGS ---------------

storage_vip = 13541
dias = 30
msg_global =  nome.." acabou de adquirir "..dias.." dias de vip!"
ativar_msg_player = 1                                               --  ativar mensagem para player
msg_player = "Você ganhou "..dias.." dias  de vip!"
    





-------------------------- End   CONFIGS



sto = getPlayerStorageValue(cid,storage_vip)




vip = sto-now

if vip > 0 then
add = (sto+(dias*day))
else
add = (now+(dias*day))
end




doRemoveItem(item.uid,1)
setPlayerStorageValue(cid,storage_vip,add)
doSendMagicEffect(frompos,math.random(31,35))



if mudar_voc == 2 then
doPlayerSetVocation(cid,new_voc)
end   
if ativar_msg_player == 1 then
doPlayerSendTextMessage(cid,25,msg_player)
end
















end