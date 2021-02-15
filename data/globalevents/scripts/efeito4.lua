local pos =
{
    {{x = 151, y = 46, z = 7}},
    }
function onThink(cid, interval, lastExecution)
   
   local efeito = 30
       
    for _, positions in pairs(pos) do
        doSendMagicEffect(positions[1], 36)
    end
  return true
end  