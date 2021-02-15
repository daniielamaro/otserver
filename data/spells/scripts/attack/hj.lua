local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_HOLYDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, 49)
setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, CONST_ME_HOLYAREA)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, -1.3, -30, -1.7, 0)

function onCastSpell(cid, var)
	return doCombat(cid, combat, var)
end
