function onSay(cid, words, param)

local players = getPlayersOnline()

str = ""
for _, pid in ipairs(players) do
str = str == "" and getCreatureName(pid)..(getPlayerStorageValue(pid, 90190) + 1) or str.. "\n" ..getCreatureName(pid)..(getPlayerStorageValue(pid, 90190) + 1)
end
doShowTextDialog(cid, 6080, str)
end