Author = "PyronoxOmega"
ModName = "Ultimate_Combat"
GameVersion = "4.47"
ModVersion = "1.7"
Description = "Weapons overhaul"
Filesource = "METADATA/REALITY/DEFAULTREALITY.MBIN"
Damage = "28360"
NMS_MOD_DEFINITION_CONTAINER = {
	["MOD_FILENAME"] = ModName .. "" .. -GameVersion .. -ModVersion .. ".pak",
	["MOD_DESCRIPTION"] = Description,
	["MOD_AUTHOR"] = Author,
	["NMS_VERSION"] = GameVersion,
	["MODIFICATIONS"] = {
		{
			["MBIN_CHANGE_TABLE"] = {
				{
					["MBIN_FILE_SOURCE"] = Filesource,
					["INTEGER_TO_FLOAT"] = "FORCE",
					["REPLACE_TYPE"] = "ALL",
					["EXML_CHANGE_TABLE"] = {
						{
							["PRECEDING_KEY_WORDS"] = {"ShipWeapons", "Laser"},
							["VALUE_CHANGE_TABLE"] = {
								{"AutoAimAngle", "3"},
								{"AutoAimExtraAngle", "15"},
								{"ShowOverheatSwitch", "False"},
								{"OverheatCoolTime", "0"},
								{"CoolRate", "1"}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ShipWeapons", "Projectile"},
							["VALUE_CHANGE_TABLE"] = {
								{"AutoAimAngle", "4"},
								{"AutoAimExtraAngle", "20"},
								{"ShowOverheatSwitch", "False"},
								{"OverheatCoolTime", "0"},
								{"CoolRate", "1"}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ShipWeapons", "Shotgun"},
							["VALUE_CHANGE_TABLE"] = {
								{"AutoAimAngle", "4"},
								{"AutoAimExtraAngle", "20"},
								{"ShowOverheatSwitch", "False"},
								{"OverheatCoolTime", "0"},
								{"CoolRate", "1"}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ShipWeapons", "Minigun"},
							["VALUE_CHANGE_TABLE"] = {
								{"AutoAimAngle", "5"},
								{"AutoAimExtraAngle", "20"},
								{"ShowOverheatSwitch", "False"},
								{"OverheatCoolTime", "0"},
								{"CoolRate", "1"}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ShipWeapons", "Plasma"},
							["VALUE_CHANGE_TABLE"] = {
								{"AutoAimAngle", "4"},
								{"AutoAimExtraAngle", "20"},
								{"ShowOverheatSwitch", "False"},
								{"OverheatCoolTime", "0"},
								{"CoolRate", "1"}
							}
						},
						 {
							["PRECEDING_KEY_WORDS"] = {"ShipWeapons", "Missile"},
							["VALUE_CHANGE_TABLE"] = {
								{"AutoAimAngle", "3"},
								{"AutoAimExtraAngle", "15"},
								{"ShowOverheatSwitch", "False"},
								{"OverheatCoolTime", "0"},
								{"CoolRate", "1"}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ShipWeapons", "Rocket"},
							["VALUE_CHANGE_TABLE"] = {
								{"AutoAimExtraAngle", "20"},
								{"ShowOverheatSwitch", "False"},
								{"OverheatCoolTime", "0"},
								{"CoolRate", "1"}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "",
							--["MATH_OPERATION"] 		= "*",--
							["REPLACE_TYPE"] = "ALL",
							["VALUE_MATCH"] = "",
							["VALUE_CHANGE_TABLE"] = {
								{"Multiplier", Damage}
							}
						}
					}
				}
			}
		}
	}
}