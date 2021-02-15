local pos =
{
    {{x = 171, y = 51, z = 7}},
    {{x = 171, y = 52, z = 7}},
    }
function onThink(cid, interval, lastExecution)
   
   local efeito = 30
       
    for _, positions in pairs(pos) do
        doSendMagicEffect(positions[1], 16)
        doSendMagicEffect(positions[1], 17)
        doSendMagicEffect(positions[1], 42)
        doSendMagicEffect(positions[1], 66)
    end
  return true
end  