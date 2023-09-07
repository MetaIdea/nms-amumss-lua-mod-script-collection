ModName = "PTSd Power Settings"
GameVersion = "443"
Description = "Rebalances the bonus/malus multipliers for the different starship Power settings"

--Multiplier applied to the starship system currently being boosted
PowerSettingEngineMul =					1.3									--1.33		Recommended to apply this same multiplier to enemy starship BoostSpeed in "Space Combat+Larger Space BattlesX.lua", to compensate how diverting power to engines makes it easier to escape pirates
PowerSettingWeaponMul =					1.15								--1.15
PowerSettingShieldMul =					1.5									--1.5
--Multiplier applied to the other two starship systems not being boosted (presumably all systems use a 1x multiplier for the "Balanced" Power setting)
PowerSettingEngineDamper =				0.8									--0.85
PowerSettingWeaponDamper =				0.90								--0.7
PowerSettingShieldDamper =				0.7									--0.75

NMS_MOD_DEFINITION_CONTAINER = {
["MOD_FILENAME"]		= ModName..GameVersion..".pak",
["MOD_DESCRIPTION"]		= Description,
["MOD_AUTHOR"]			= "Xen0nex",
["NMS_VERSION"]			= GameVersion,
["MODIFICATIONS"]		= {{
["MBIN_CHANGE_TABLE"]	= {
	{
		["MBIN_FILE_SOURCE"] 	= {"GCSPACESHIPGLOBALS.GLOBAL.MBIN"},
		["EXML_CHANGE_TABLE"] 	= 
		{
			{
				["REPLACE_TYPE"] 		= "",
				["MATH_OPERATION"] 		= "",
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"PowerSettingEngineMul",	PowerSettingEngineMul},	
					{"PowerSettingEngineDamper", PowerSettingEngineDamper},
					{"PowerSettingWeaponMul", PowerSettingWeaponMul},
					{"PowerSettingWeaponDamper", PowerSettingWeaponDamper},
					{"PowerSettingShieldMul", PowerSettingShieldMul},
					{"PowerSettingShieldDamper", PowerSettingShieldDamper},
				}
			},
		}
	}
}}}}