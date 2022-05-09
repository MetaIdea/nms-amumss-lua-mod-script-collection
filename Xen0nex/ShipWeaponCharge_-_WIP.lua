--WIP, technically makes weapons chargeable, but the charge doesn't deplete when firing.

ShipWeapons =
{
	{	--WeaponID			Substance to charge with
		{"SHIPROCKETS",		"LAND1"},
		{	--Alternative Substance(s), can leave blank or add as many substnces as desired
			"LAND3",
		}
	},
	{
		{"SHIPGUN1",		"LAND1"},
		{
			"LAND3",
		}
	},
	{
		{"SHIPLAS1",		"LAND1"},
		{
			"LAND3",
		}
	},
	{
		{"SHIPSHOTGUN",		"LAND1"},
		{
			"LAND3",
		}
	},
	{
		{"SHIPMINIGUN",		"LAND1"},
		{
			"LAND3",
		}
	},
	{
		{"SHIPPLASMA",		"LAND1"},
		{
			"LAND3",
		}
	},
	{
		{"SHIPGUN_ALIEN",		"FUEL2"},
		{
		}
	},
	{
		{"SHIPLAS_ALIEN",		"LAND1"},
		{
			"LAND3",
			"LAND2",
		}
	},
}

--Nothing below this line should need to be edited; all changes should be possible with the values above

function AddSubstance (substance)
    return
[[<Property name="ChargeBy">
        <Property value="NMSString0x10.xml">
          <Property name="Value" value="]]..substance..[[" />
        </Property>
      </Property>]]
end

function AddAltSubstance (altsubstance)
    return
[[<Property value="NMSString0x10.xml">
          <Property name="Value" value="]]..altsubstance..[[" />
        </Property>]]
end

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= 'ShipWeaponCharge-WIP.pak',
	MOD_AUTHOR			= 'Xen0nex',
	NMS_VERSION			= '3.89',
	MOD_DESCRIPTION		= 'Makes ship weapon require charging, like Launcher/Hyperdrive/etc.',
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= 'METADATA\REALITY\TABLES\NMS_REALITY_GCTECHNOLOGYTABLE.MBIN',
		EXML_CHANGE_TABLE	= {
			--Intentionally left blank to be filled by the function below
		}
	},
}}}}

local ChangesToTechnologyTable = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][1]["EXML_CHANGE_TABLE"]

for i = 1, #ShipWeapons do
	local WeaponID = ShipWeapons[i][1][1]
	local MainSubstance = ShipWeapons[i][1][2]
	local ExtraSubstances = ShipWeapons[i][2]

			ChangesToTechnologyTable[#ChangesToTechnologyTable+1] =
			{
				["REPLACE_TYPE"] 		= "",
				["MATH_OPERATION"] 		= "",
				["SPECIAL_KEY_WORDS"] = {"ID", WeaponID},
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"Chargeable", "True"},
					--{"UsesAmmo", "True"},		No effect
					--{"AmmoId", "AMMO"},		No effect
				}
			}
			
			ChangesToTechnologyTable[#ChangesToTechnologyTable+1] =
			{
				["SPECIAL_KEY_WORDS"] = {"ID", WeaponID,	"BuildFullyCharged", "True"},
				["LINE_OFFSET"] = "-2",
				["REPLACE_TYPE"] 		= "",
				["REMOVE"] = "LINE",
			}
			
			ChangesToTechnologyTable[#ChangesToTechnologyTable+1] =
			{
				["SPECIAL_KEY_WORDS"] = {"ID", WeaponID,	"ChargeType", "GcRealitySubstanceCategory.xml"},
				--["LINE_OFFSET"] = "2",
				["REPLACE_TYPE"] 		= "ADDAFTERSECTION",
				["ADD"] = AddSubstance (MainSubstance)
			}
			
	for j = 1, #ExtraSubstances do
		local AltSubstance = ExtraSubstances[j]
			
			ChangesToTechnologyTable[#ChangesToTechnologyTable+1] =
			{
				["SPECIAL_KEY_WORDS"] = {"ID", WeaponID},
				["PRECEDING_KEY_WORDS"] = {"NMSString0x10.xml"},
				["REPLACE_TYPE"] 		= "ADDAFTERSECTION",
				["ADD"] = AddAltSubstance (AltSubstance)
			}
			
	end
end