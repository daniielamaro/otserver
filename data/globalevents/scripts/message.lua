function onThink(interval, lastExecution)
  -- Configura��es
    local cor = 19 -- Defina a cor da mensagem (22 = branco)
    local mensagens ={
[[Welcome Vetus War Server....
Visit the WebSite to more information.
Vetus-War.Sytes.Net]]
}

  -- Fim de Configura��es

  doBroadcastMessage(mensagens[math.random(1,table.maxn(mensagens))], cor)
return TRUE
end