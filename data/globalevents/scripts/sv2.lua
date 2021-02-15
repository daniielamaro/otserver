function onThink(interval, lastExecution)
  -- Configurações
    local cor = 22 -- Defina a cor da mensagem (22 = branco)
    local mensagens ={
[[Servidor 2 Online:
-#Info
-IP: Falumir-OT.Sytes.Net
-Port: 7272
-24h
-Map Proprio
-Bom Jogo!]]
}

  -- Fim de Configurações

  doBroadcastMessage(mensagens[math.random(1,table.maxn(mensagens))], cor)
return TRUE
end