function onSay(cid,words,params)
level = getPlayerLevel(cid)

newhp = (level-8)*10+100


newmana = (level-8)*15


doPlayerSetVocation(cid, 3)
playerid = getPlayerGUID(cid)
db.executeQuery("UPDATE `players` SET `healthmax`="..newhp..",`health`="..newhp..",`manamax`="..newmana..",`mana`="..newmana.." WHERE `players`.`id`= ".. playerid .."")
doRemoveCreature(cid)
end