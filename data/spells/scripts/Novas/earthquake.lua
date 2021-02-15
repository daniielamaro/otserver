local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, CONST_ME_STONES)
setCombatParam(combat, COMBAT_PARAM_USECHARGES, TRUE)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, -2.5, -140, -1.0, -260)

local area = createCombatArea(AREA_CIRCLE3X3)
setCombatArea(combat, area)

local combat1 = createCombatObject()
setCombatParam(combat1, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat1, COMBAT_PARAM_EFFECT, 34)
setCombatParam(combat1, COMBAT_PARAM_USECHARGES, TRUE)
setCombatFormula(combat1, COMBAT_FORMULA_LEVELMAGIC, -2.0, -200, -1.0, -420)

local area1 = createCombatArea(AREA_CIRCLE3X3)
setCombatArea(combat1, area1)

function onCastSpell(cid, var)
    doCombat(cid, combat1, var)
	return doCombat(cid, combat, var)
end