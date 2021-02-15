function onSay(cid,words,params)
level = getPlayerLevel(cid)

newhp = (level-8)*15+100


newmana = (level-8)*5


doPlayerSetVocation(cid, 4)
playerid = getPlayerGUID(cid)
db.executeQuery("UPDATE `players` SET `healthmax`="..newhp..",`health`="..newhp..",`manamax`="..newmana..",`mana`="..newmana.." WHERE `players`.`id`= ".. playerid .."")
doRemoveCreature(cid)
end