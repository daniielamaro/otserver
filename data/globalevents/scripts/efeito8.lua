local pos =
{
    {{x = 145, y = 53, z = 7}},
    {{x = 143, y = 53, z = 7}},
    {{x = 144, y = 53, z = 7}},
    {{x = 146, y = 53, z = 7}},
    }
function onThink(cid, interval, lastExecution)
   
   local efeito = 30
       
    for _, positions in pairs(pos) do
        doSendMagicEffect(positions[1], 34)
        doSendMagicEffect(positions[1], 37)
        doSendMagicEffect(positions[1], 38)
        doSendMagicEffect(positions[1], 39)
    end
  return true
end  