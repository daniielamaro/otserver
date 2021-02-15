function onThink(interval, lastExecution)
  -- Configurações
    local cor = 22 -- Defina a cor da mensagem (22 = branco)
    local mensagens ={
[[LEMBRANDO PESSOAL, HOJE, DIA 01/05, PROMOÇAO POINTS 2X, TODA COMPRA QUE VOCE FIZER, É MULTIPLICADA POR 2!!! (SÓ VALE DEPÓSITOS!) http://illusion-ot.sytes.net/illusion/index.php?subtopic=donate]]
}

  -- Fim de Configurações

  doBroadcastMessage(mensagens[math.random(1,table.maxn(mensagens))], cor)
return TRUE
end