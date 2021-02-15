local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)
local talkState = {}

function onCreatureAppear(cid)				npcHandler:onCreatureAppear(cid)			end
function onCreatureDisappear(cid) 			npcHandler:onCreatureDisappear(cid)			end
function onCreatureSay(cid, type, msg)			npcHandler:onCreatureSay(cid, type, msg)		end
function onThink()					npcHandler:onThink()					end

local shopModule = ShopModule:new()
npcHandler:addModule(shopModule)

shopModule:addBuyableItem({'spellbook'}, 2175, 150, 'spellbook')
shopModule:addBuyableItem({'magic lightwand'}, 2163, 400, 'magic lightwand')

shopModule:addBuyableItem({'small health'}, 8704, 200, 20, 'small health potion')
shopModule:addBuyableItem({'blank rune'}, 2260, 10, 20, 'blank rune')
shopModule:addBuyableItem({'health potion'}, 7618, 450, 20, 'health potion')
shopModule:addBuyableItem({'mana potion'}, 7620, 500, 20, 'mana potion')
shopModule:addBuyableItem({'strong health'}, 7588, 1000, 20, 'strong health potion')
shopModule:addBuyableItem({'strong mana'}, 7589, 800, 20, 'strong mana potion')
shopModule:addBuyableItem({'great health'}, 7591, 1900, 20, 'great health potion')
shopModule:addBuyableItem({'great mana'}, 7590, 1200, 20, 'great mana potion')
shopModule:addBuyableItem({'great spirit'}, 8472, 1900, 20, 'great spirit potion')
shopModule:addBuyableItem({'ultimate health'}, 8473, 3100, 20, 'ultimate health potion')
shopModule:addBuyableItem({'antidote potion'}, 8474, 50, 20, 'antidote potion')

shopModule:addSellableItem({'normal potion flask', 'normal flask'}, 7636, 5, 'empty small potion flask')
shopModule:addSellableItem({'strong potion flask', 'strong flask'}, 7634, 10, 'empty strong potion flask')
shopModule:addSellableItem({'great potion flask', 'great flask'}, 7635, 15, 'empty great potion flask')

shopModule:addBuyableItem({'instense healing'}, 2265, 950, 100, 'intense healing rune')
shopModule:addBuyableItem({'ultimate healing'}, 2273, 1750, 100, 'ultimate healing rune')
shopModule:addBuyableItem({'magic wall'}, 2293, 950, 100, 'magic wall rune')
shopModule:addBuyableItem({'destroy field'}, 2261, 450, 100, 'destroy field rune')
shopModule:addBuyableItem({'light magic missile'}, 2287, 400, 100, 'light magic missile rune')
shopModule:addBuyableItem({'heavy magic missile'}, 2311, 1200, 100, 'heavy magic missile rune')
shopModule:addBuyableItem({'great fireball'}, 2304, 1800, 100, 'great fireball rune')
shopModule:addBuyableItem({'explosion'}, 2313, 3500, 100, 'explosion rune')
shopModule:addBuyableItem({'sudden death'}, 2268, 7000, 100, 'sudden death rune')
shopModule:addBuyableItem({'death arrow'}, 2263, 3000, 100, 'death arrow rune')
shopModule:addBuyableItem({'paralyze'}, 2278, 7000, 100, 'paralyze rune')
shopModule:addBuyableItem({'animate dead'}, 2316, 3750, 100, 'animate dead rune')
shopModule:addBuyableItem({'convince creature'}, 2290, 800, 100, 'convince creature rune')
shopModule:addBuyableItem({'chameleon'}, 2291, 2100, 100, 'chameleon rune')
shopModule:addBuyableItem({'desintegrate'}, 2310, 800,  100, 'desintegreate rune')

shopModule:addBuyableItem({'wand of vortex', 'vortex'}, 2190, 500, 1, 'wand')
shopModule:addBuyableItem({'wand of dragonbreath', 'dragonbreath'}, 2191, 1000, 1, 'wand of dragonbreath')
shopModule:addBuyableItem({'wand of decay', 'decay'}, 2188, 5000, 1, 'wand of decay')
shopModule:addBuyableItem({'wand of draconia', 'draconia'}, 8921, 7500, 1, 'wand of draconia')
shopModule:addBuyableItem({'wand of cosmic energy', 'cosmic energy'}, 2189, 10000, 1, 'wand of cosmic energy')
shopModule:addBuyableItem({'wand of inferno', 'inferno'}, 2187, 15000, 1, 'wand of inferno')
shopModule:addBuyableItem({'wand of voodoo', 'voodoo'}, 8922, 22000, 1, 'wand of voodoo')

shopModule:addBuyableItem({'snakebite rod', 'snakebite'}, 2182, 500, 1, 'snakebite rod')
shopModule:addBuyableItem({'moonlight rod', 'moonlight'}, 2186, 1000, 1, 'moonlight rod')
shopModule:addBuyableItem({'necrotic rod', 'necrotic'}, 2185, 5000, 1, 'necrotic rod')
shopModule:addBuyableItem({'northwind rod', 'northwind'}, 8911, 7500, 1, 'northwind rod')
shopModule:addBuyableItem({'terra rod', 'terra'}, 2181, 10000, 1, 'terra rod')
shopModule:addBuyableItem({'hailstorm rod', 'hailstorm'}, 2183, 15000, 1, 'hailstorm rod')
shopModule:addBuyableItem({'springsprout rod', 'springsprout'}, 8912, 18000, 1, 'springsprout rod')
shopModule:addBuyableItem({'underworld rod', 'underworld'}, 8910, 22000, 1, 'underworld rod')

shopModule:addSellableItem({'wand of vortex', 'vortex'}, 2190, 250, 'wand of vortex')
shopModule:addSellableItem({'wand of dragonbreath', 'dragonbreath'}, 2191, 500, 'wand of dragonbreath')
shopModule:addSellableItem({'wand of decay', 'decay'}, 2188, 2500, 'wand of decay')
shopModule:addSellableItem({'wand of draconia', 'draconia'}, 8921, 3750, 'wand of draconia')
shopModule:addSellableItem({'wand of cosmic energy', 'cosmic energy'}, 2189, 5000, 'wand of cosmic energy')
shopModule:addSellableItem({'wand of inferno', 'inferno'},2187, 7500, 'wand of inferno')
shopModule:addSellableItem({'wand of voodoo', 'voodoo'}, 8922, 11000, 'wand of voodoo')

shopModule:addSellableItem({'snakebite rod', 'snakebite'}, 2182, 250,'snakebite rod')
shopModule:addSellableItem({'moonlight rod', 'moonlight'}, 2186, 500,   'moonlight rod')
shopModule:addSellableItem({'necrotic rod', 'necrotic'}, 2185, 2500, 'necrotic rod')
shopModule:addSellableItem({'northwind rod', 'northwind'}, 8911, 3750, 'northwind rod')
shopModule:addSellableItem({'terra rod', 'terra'}, 2181, 5000, 'terra rod')
shopModule:addSellableItem({'hailstorm rod', 'hailstorm'}, 2183, 7500, 'hailstorm rod')
shopModule:addSellableItem({'springsprout rod', 'springsprout'}, 8912, 9000, 'springsprout rod')
shopModule:addSellableItem({'underworld rod', 'underworld'}, 8910, 11000, 'underworld rod')
shopModule:addSellableItem({'wild growth rune', 'wild growth'}, 2269, 200, 'wild growth rune')

local items = {[1] = 2190, [2] = 2182, [5] = 2190, [6] = 2182}
function creatureSayCallback(cid, type, msg)
	if(not npcHandler:isFocused(cid)) then
		return false
	end

	local talkUser = NPCHANDLER_CONVBEHAVIOR == CONVERSATION_DEFAULT and 0 or cid
	if(msgcontains(msg, 'first rod') or msgcontains(msg, 'first wand')) then
		if(isSorcerer(cid) or isDruid(cid)) then
			if(getPlayerStorageValue(cid, 30002) <= 0) then
				selfSay('So you ask me for a {' .. getItemNameById(items[getPlayerVocation(cid)]) .. '} to begin your advanture?', cid)
				talkState[talkUser] = 1
			else
				selfSay('What? I have already gave you one {' .. getItemNameById(items[getPlayerVocation(cid)]) .. '}!', cid)
			end
		else
			selfSay('Sorry, you aren\'t a druid either a sorcerer.', cid)
		end
	elseif(msgcontains(msg, 'yes')) then
		if(talkState[talkUser] == 1) then
			doPlayerAddItem(cid, items[getPlayerVocation(cid)], 1)
			selfSay('Here you are young adept, take care yourself.', cid)
			setPlayerStorageValue(cid, 30002, 1)
		end
		talkState[talkUser] = 0
	elseif(msgcontains(msg, 'no') and isInArray({1}, talkState[talkUser])) then
		selfSay('Ok then.', cid)
		talkState[talkUser] = 0
	end

	return true
end

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())
