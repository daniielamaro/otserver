local config = {
    positions = {
["Lixo"] = { x = 158, y = 49, z = 7 },
["Especiais"] = { x = 177, y = 62, z = 7 },
["Treiners"] = { x = 154, y = 50, z = 7 },
["Druid"] = { x = 1436, y = 1219, z = 7 },
["Sorcerer"] = { x = 1429, y = 1224, z = 7 },
["Knight"] = { x = 1436, y = 1229, z = 7 },
["Paladin"] = { x = 1442, y = 1224, z = 7 },
["Quest"] = { x = 1158, y = 1277, z = 7 },
["Evento"] = { x = 151, y = 53, z = 7 },

    }
}

function onThink(cid, interval, lastExecution)
    for text, pos in pairs(config.positions) do
        doSendAnimatedText(pos, text, math.random(1, 255))
    end
    
    return TRUE
end  