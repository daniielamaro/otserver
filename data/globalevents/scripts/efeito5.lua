local pos =
{
    {{x = 143, y = 44, z = 7}},
    {{x = 144, y = 44, z = 7}},
    {{x = 145, y = 44, z = 7}},
    }
function onThink(cid, interval, lastExecution)
   
   local efeito = 30
       
    for _, positions in pairs(pos) do
        doSendMagicEffect(positions[1], 36)
        doSendMagicEffect(positions[1], 29)
        doSendMagicEffect(positions[1], 15)
        doSendMagicEffect(positions[1], 13)
    end
  return true
end  