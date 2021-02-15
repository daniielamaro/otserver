function onThink(interval, lastExecution)
  -- Configurações
    local cor = 22 -- Defina a cor da mensagem (22 = branco)
    local mensagens ={
[[Novos Comandos:
!aol 20k
!bless 80k
!removered 15kk
!removeblack 25kk
!reparar soft 10k
!reparar firewalker 10k!

Illusion-OT ~ Bom Jogo!]]
}

  -- Fim de Configurações

  doBroadcastMessage(mensagens[math.random(1,table.maxn(mensagens))], cor)
return TRUE
end