Author = "Gumsk"
ModName = "gShip Photon Cannon Damage"
ModNameSub = "2"		--Change this to change the multiplier
BaseDescription = "Increases ship photon cannon/spewing vents damage"
GameVersion = "408"
ModVersion = "a"

--Files Modified
--METADATA\REALITY\TABLES\NMS_REALITY_GCTECHNOLOGYTABLE.MBIN

NMS_MOD_DEFINITION_CONTAINER = {
	["MOD_FILENAME"]	= ModName.." "..ModNameSub.."x "..GameVersion..ModVersion..".pak",
	["MOD_DESCRIPTION"]	= BaseDescription,
	["MOD_AUTHOR"]		= Author,
	["NMS_VERSION"]		= GameVersion,
	["MODIFICATIONS"]	= {
		{
			["MBIN_CHANGE_TABLE"] = {
				{
					["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\NMS_REALITY_GCTECHNOLOGYTABLE.MBIN",
					["EXML_CHANGE_TABLE"] = {
						{
							["SPECIAL_KEY_WORDS"] = {"ID","SHIPGUN1","StatsType","Ship_Weapons_Guns_Damage"},
							["SECTION_UP"] = 1,
							["MATH_OPERATION"]      = "*",
							["VALUE_CHANGE_TABLE"] = {
								{"Bonus",ModNameSub},
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","SHIPGUN_ALIEN","StatsType","Ship_Weapons_Guns_Damage"},
							["SECTION_UP"] = 1,
							["MATH_OPERATION"]      = "*",
							["VALUE_CHANGE_TABLE"] = {
								{"Bonus",ModNameSub},
							},
						},
					},
				},
				{
					["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\NMS_REALITY_GCPROCEDURALTECHNOLOGYTABLE.MBIN",
					["EXML_CHANGE_TABLE"] = {
						{
							["SPECIAL_KEY_WORDS"] = {"ID","UP_SGUN1","StatsType","Ship_Weapons_Guns_Damage"},
							["SECTION_UP"] = 1,
							["MATH_OPERATION"]      = "*",
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin",ModNameSub},
								{"ValueMax",ModNameSub},
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","UP_SGUN2","StatsType","Ship_Weapons_Guns_Damage"},
							["SECTION_UP"] = 1,
							["MATH_OPERATION"]      = "*",
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin",ModNameSub},
								{"ValueMax",ModNameSub},
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","UP_SGUN3","StatsType","Ship_Weapons_Guns_Damage"},
							["SECTION_UP"] = 1,
							["MATH_OPERATION"]      = "*",
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin",ModNameSub},
								{"ValueMax",ModNameSub},
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","UP_SGUN4","StatsType","Ship_Weapons_Guns_Damage"},
							["SECTION_UP"] = 1,
							["MATH_OPERATION"]      = "*",
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin",ModNameSub},
								{"ValueMax",ModNameSub},
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","UP_SGUNX","StatsType","Ship_Weapons_Guns_Damage"},
							["SECTION_UP"] = 1,
							["MATH_OPERATION"]      = "*",
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin",ModNameSub},
								{"ValueMax",ModNameSub},
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","UA_SGUN1","StatsType","Ship_Weapons_Guns_Damage"},
							["SECTION_UP"] = 1,
							["MATH_OPERATION"]      = "*",
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin",ModNameSub},
								{"ValueMax",ModNameSub},
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","UA_SGUN2","StatsType","Ship_Weapons_Guns_Damage"},
							["SECTION_UP"] = 1,
							["MATH_OPERATION"]      = "*",
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin",ModNameSub},
								{"ValueMax",ModNameSub},
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","UA_SGUN3","StatsType","Ship_Weapons_Guns_Damage"},
							["SECTION_UP"] = 1,
							["MATH_OPERATION"]      = "*",
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin",ModNameSub},
								{"ValueMax",ModNameSub},
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","UA_SGUN4","StatsType","Ship_Weapons_Guns_Damage"},
							["SECTION_UP"] = 1,
							["MATH_OPERATION"]      = "*",
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin",ModNameSub},
								{"ValueMax",ModNameSub},
							},
						},
					},
				},
			}
		}
	}
}