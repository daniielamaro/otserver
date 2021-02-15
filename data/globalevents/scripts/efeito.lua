local pos =
{
    {{x = 151, y = 54, z = 7}},
    }
function onThink(cid, interval, lastExecution)
   
   local efeito = 30
       
    for _, positions in pairs(pos) do
        doSendMagicEffect(positions[1], 31)
        doSendMagicEffect(positions[1], 35)
    end
  return true
end  