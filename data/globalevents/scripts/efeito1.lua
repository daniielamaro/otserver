local pos =
{
    {{x = 481, y = 524, z = 5}},
    }
function onThink(cid, interval, lastExecution)
   
   local efeito = 30
       
    for _, positions in pairs(pos) do
        doSendMagicEffect(positions[1], 49)
        doSendMagicEffect(positions[1], 39)
    end
  return true
end  