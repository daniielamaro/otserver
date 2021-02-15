local config = {
    positions = {
["OT Xande"] = { x = 160, y = 54, z = 7 },
["Bp"] = { x = 214, y = 370, z = 7 },
["Bp!"] = { x = 213, y = 370, z = 7 },
["PVP"] = { x = 203, y = 380, z = 7 },
["Templo"] = { x = 213, y = 391, z = 7 },
["Templo!"] = { x = 214, y = 391, z = 7 },
["Leia!"] = { x = 187, y = 1222, z = 8 },
["Zombie"] = { x = 166, y = 54, z = 7 },
["PVP!"] = { x = 203, y = 381, z = 7 }
    }
}

function onThink(cid, interval, lastExecution)
    for text, pos in pairs(config.positions) do
        doSendAnimatedText(pos, text, math.random(1, 255))
    end
    
    return TRUE
end  