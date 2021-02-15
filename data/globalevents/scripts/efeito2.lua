local pos =
{
    {{x = 150, y = 54, z = 7}},
    }
function onThink(cid, interval, lastExecution)
   
   local efeito = 30
       
    for _, positions in pairs(pos) do
        doSendMagicEffect(positions[1], 29)
        doSendMagicEffect(positions[1], 35)
    end
  return true
end  