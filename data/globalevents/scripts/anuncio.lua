function onThink(interval, lastExecution)
  -- Configura��es
    local cor = 22 -- Defina a cor da mensagem (22 = branco)
    local mensagens ={
[[LEMBRANDO PESSOAL, HOJE, DIA 01/05, PROMO�AO POINTS 2X, TODA COMPRA QUE VOCE FIZER, � MULTIPLICADA POR 2!!! (S� VALE DEP�SITOS!) http://illusion-ot.sytes.net/illusion/index.php?subtopic=donate]]
}

  -- Fim de Configura��es

  doBroadcastMessage(mensagens[math.random(1,table.maxn(mensagens))], cor)
return TRUE
end