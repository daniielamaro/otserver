function getItemNameById(itemid)
	return getItemDescriptionsById(itemid).name
end

--by Skyblade
function onUse(cid, item, frompos, item2, topos)



--- configurando

id_vip_coin = 6527
id_item_venda = 12286
quantidade = 1
preco = 10

--- end 


--constants

tem = getPlayerItemCount(cid,id_vip_coin)
arg = getItemNameById(id_item_venda)


--



if tem >= preco then
if doPlayerRemoveItem(cid,id_vip_coin,preco) == TRUE then
doPlayerAddItem(cid,id_item_venda,quantidade)
doPlayerSendTextMessage(cid,25,"Você comprou o item "..arg.." por "..preco.." Vip coins.")
end
else
doPlayerSendTextMessage(cid,25,"Você não tem "..preco.." vip coins para comprar.")
end
 

















return true
end