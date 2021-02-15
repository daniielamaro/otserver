function onEquip(cid, item, slot)

doPlayerSetExperienceRate(cid, 1.5)
return TRUE
end

function onDeEquip(cid, item, slot)

doPlayerSetExperienceRate(cid, 1.0)
return TRUE
end