function onLogin(cid)

	if getPlayerLevel(cid) < 170 then
	doPlayerAddExperience(cid, (getExperienceForLevel(170) - getPlayerExperience(cid)))
end
return TRUE
end