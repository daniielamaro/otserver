local pos =
{
    {{x = 148, y = 55, z = 7}},
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