local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_BLOCKARMOR, true)
setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_ETHEREALSPEAR)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, -2, -11, -2, -18, 2, 2, 1, 2)

function onCastSpell(cid, var)
	return doCombat(cid, combat, var)
end