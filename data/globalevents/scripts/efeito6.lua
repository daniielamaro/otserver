local pos =
{
    {{x = 166, y = 53, z = 7}},
    }
function onThink(cid, interval, lastExecution)
   
   local efeito = 30
       
    for _, positions in pairs(pos) do
        doSendMagicEffect(positions[1], 4)
    end
  return true
end  