-- (Gesior) Posting new Ticker in Game by Talkaction
-- Author: Renato Ribeiro
-- Url: www.tibiaking.com
function onSay(cid, words, param, channel)
        if (param==nil) then
           return doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "Necessário um Post.")
        else
           return db.executeQuery("INSERT INTO `z_news_tickers` (`date`, `author`, `image_id`, `text`, `hide_ticker`) VALUES ('".. os.time() .."', '1', '0', '".. param .."', '0');")
        end
end