function onThink(interval, lastExecution)
  -- Configurações
    local cor = 22 -- Defina a cor da mensagem (22 = branco)
    local mensagens ={
[[Voce Esta jogando no Master Baiak Yurots Editado por Soul.!! 

     Novo Comando Adcionado !aol 20k, !bless 80k,!removeskull 1kk
  
    Vip2 na quest vip!
    Master Vip na master vip quest!

Bom Jogo]]
}

  -- Fim de Configurações

  doBroadcastMessage(mensagens[math.random(1,table.maxn(mensagens))], cor)
return TRUE
end