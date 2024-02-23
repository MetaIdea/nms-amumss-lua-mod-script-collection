-------------------------------------------------------------------------------------------------------------------
dofile('D:/MODZ_stuff/NoMansSky/AMUMss_Scripts/LIB/exml_2_lua.lua')
-------------------------------------------------------------------------------------------------------------------
function ReadExml(path)
	local rf = io.open(path, 'r')
	local t = ToLua(rf:read('*a'))
	rf:close()
	return t
end

function PrintAsLua(path)
	local wf = io.open('d:/_dump/exml_source.lua', 'w')
	wf:write(PrintExmlAsLua(io.open(path, 'r'):read('*a')))
	wf:close()
end
-------------------------------------------------------------------------------------------------------------------
exml = 'D:/MODZ_stuff/NoMansSky/UNPACKED/METADATA/REALITY/CATALOGUECRAFTING.EXML'

source = ReadExml(exml)
-- PrintAsLua(exml)

for _, dat in ipairs(source.template.Categories[7].Items) do
	print(dat.Value)
end
-------------------------------------------------------------------------------------------------------------------
-- exml = 'D:/MODZ_stuff/NoMansSky/UNPACKED/METADATA/REALITY/TABLES/NMS_REALITY_GCTECHNOLOGYTABLE.EXML'

-- source = ReadExml(exml)

-- for _, dat in ipairs(source.template.Table) do
	-- print(dat.ID..'\t:\t'..dat.ChargeAmount)
-- end
-------------------------------------------------------------------------------------------------------------------
-- exml = 'D:/MODZ_stuff/NoMansSky/UNPACKED/GCSPACESHIPGLOBALS.GLOBAL.EXML'

-- source = ReadExml(exml)

-- eng = source.template.ControlLight.SpaceEngine

-- print(eng.ThrustForce            )
-- print(eng.MaxSpeed               )
-- print(eng.MinSpeed               )
-- print(eng.Falloff                )
-- print(eng.MinSpeedForce          )
-- print(eng.BoostThrustForce       )
-- print(eng.BoostMaxSpeed          )
-- print(eng.BoostFalloff           )
-- print(eng.BoostingTurnDamp       )
-- print(eng.DirectionBrakeMin      )
-- print(eng.DirectionBrake         )
-- print(eng.ReverseBrake           )
-- print(eng.OverspeedBrake         )
-- print(eng.LowSpeedTurnDamper     )
-- print(eng.TurnBrakeMin           )
-- print(eng.TurnBrakeMax           )
-- print(eng.TurnStrength           )
-- print(eng.RollAmount             )
-- print(eng.RollForce              )
-- print(eng.RollAutoTime           )
-- print(eng.BalanceTimeMin         )
-- print(eng.BalanceTimeMax         )
-- print(eng.FollowProportionalGain )
-- print(eng.FollowDerivativeGain   )
-- print(eng.FollowIntegralGain     )
-- print(eng.FollowProportionalLimit)
-- print(eng.FollowDerivativeLimit  )
-- print(eng.FollowIntegralLimit    )
-- print(eng.FollowIntegralDecay    )
-------------------------------------------------------------------------------------------------------------------
