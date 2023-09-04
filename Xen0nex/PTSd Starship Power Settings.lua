ModName = "PTSd Power Settings"
GameVersion = "441"
Description = "Rebalances the bonus/malus multipliers for the different starship Power settings"

--Multiplier applied to the starship system currently being boosted
PowerSettingEngineMul =					1.33								--1.33
PowerSettingWeaponMul =					1.15								--1.15
PowerSettingShieldMul =					1.5									--1.5
--Multiplier applied to the other two starship systems not being boosted (presumably all systems use a 1x multiplier for the "Balanced" Power setting)
PowerSettingEngineDamper =				0.85								--0.85
PowerSettingWeaponDamper =				0.7									--0.7
PowerSettingShieldDamper =				0.75								--0.75

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