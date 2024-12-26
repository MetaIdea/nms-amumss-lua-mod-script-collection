-------------------------------------------------------------------------------------------------------------------
dofile('D:/MODZ_stuff/NoMansSky/AMUMss_Scripts/LIB/_exml_2_lua.lua')
-------------------------------------------------------------------------------------------------------------------
local NMS = 'D:/MODZ_stuff/NoMansSky/UNPACKED/'

local function ConvertMbin(mbin)
	local function fileExists(path)
		local f = io.open(path, "r")
		return f ~= nil and io.close(f)
	end
	if not fileExists(mbin:gsub('.MBIN$', '.EXML')) then
		os.execute(string.format(
			'D:/MODZ_stuff/NoMansSky/Tools/AMUMSS/MODBUILDER/MBINCompiler.latest.exe convert -y -q --input-format=MBIN %s',
			mbin
		))
	end
end

local function ReadExml(mbin)
	ConvertMbin(mbin)
	local rf = io.open(mbin:gsub('.MBIN$', '.EXML'), 'r')
	local t  = ToLua(rf:read('*a'))
	rf:close()
	return t
end

local function PrintAsLua(mbin)
	ConvertMbin(mbin)
	local wf = io.open('d:/_dump/exml_source.lua', 'w')
	wf:write(PrintExmlAsLua({exml=io.open(mbin:gsub('.MBIN$', '.EXML'), 'r'):read('*a')}))
	wf:close()
end
-------------------------------------------------------------------------------------------------------------------
-- local mbin = 'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/RADIOACTIVE/RADIOACTIVEOBJECTSFULL.MBIN'

-- source = ReadExml(NMS..mbin)

-- for _, obj in ipairs(source.template.Objects.Landmarks) do
	-- print(obj.Resource.Filename)
	-- -- if prd.ID:find('FIGHT_') then
	-- -- end
-- end

-------------------------------------------------------------------------------------------------------------------
-- local mbin = 'METADATA/REALITY/TABLES/NMS_REALITY_GCPRODUCTTABLE.MBIN'

-- source = ReadExml(NMS..mbin)

-- for _, prd in ipairs(source.template.Table) do
	-- if prd.ID:find('FIGHT_') then
		-- print(prd.ID)
	-- end
-- end

-------------------------------------------------------------------------------------------------------------------
-- local mbin = 'METADATA/REALITY/CATALOGUECRAFTING.MBIN'

-- source = ReadExml(NMS..mbin)
-- -- PrintAsLua(path)

-- for _, dat in ipairs(source.template.Categories[6].Items) do
	-- print(dat.Value)
-- end
-------------------------------------------------------------------------------------------------------------------
-- local mbin = 'METADATA/REALITY/TABLES/NMS_REALITY_GCTECHNOLOGYTABLE.MBIN'

-- source = ReadExml(NMS..mbin)

-- for _, dat in ipairs(source.template.Table) do
	-- print(dat.ID..'\t:\t'..dat.ChargeAmount)
-- end
-------------------------------------------------------------------------------------------------------------------
local mbin = 'GCSPACESHIPGLOBALS.GLOBAL.MBIN'

source = ReadExml(NMS..mbin)

eng = source.template.ControlHeavyHover.AtmosCombatEngine

print(eng.ThrustForce            )
print(eng.MaxSpeed               )
print(eng.MinSpeed               )
print(eng.Falloff                )
print(eng.MinSpeedForce          )
print(eng.BoostThrustForce       )
print(eng.BoostMaxSpeed          )
print(eng.BoostFalloff           )
print(eng.BoostingTurnDamp       )
print(eng.DirectionBrakeMin      )
print(eng.DirectionBrake         )
print(eng.ReverseBrake           )
print(eng.OverspeedBrake         )
print(eng.LowSpeedTurnDamper     )
print(eng.TurnBrakeMin           )
print(eng.TurnBrakeMax           )
print(eng.TurnStrength           )
print(eng.RollAmount             )
print(eng.RollForce              )
print(eng.RollAutoTime           )
print(eng.BalanceTimeMin         )
print(eng.BalanceTimeMax         )
print(eng.FollowProportionalGain )
print(eng.FollowDerivativeGain   )
print(eng.FollowIntegralGain     )
print(eng.FollowProportionalLimit)
print(eng.FollowDerivativeLimit  )
print(eng.FollowIntegralLimit    )
print(eng.FollowIntegralDecay    )
-------------------------------------------------------------------------------------------------------------------
