function executeClean()
	doCleanMap()
	doBroadcastMessage("Clean")
	return true
end

function onThink(interval, lastExecution, thinkInterval)
	doBroadcastMessage("Caminhao de lixo vai passa no ot")
	addEvent(executeClean, 50000)
	return true
end
