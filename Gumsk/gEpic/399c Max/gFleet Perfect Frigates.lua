Author = "unsick"
ModName = "gFleet Perfect Frigates"
ModNameSub = ""
BaseDescription = ""
GameVersion = "399"
ModVersion = "b"
FileSource1 = "GCFLEETGLOBALS.GLOBAL.MBIN"
FileSource2 = "METADATA\REALITY\TABLES\FRIGATETRAITTABLE.MBIN"

NMS_MOD_DEFINITION_CONTAINER = {
	["MOD_FILENAME"]	= ModName.." "..ModNameSub.." "..GameVersion..ModVersion..".pak",
	["MOD_DESCRIPTION"]	= BaseDescription,
	["MOD_AUTHOR"]		= Author,
	["LUA_AUTHOR"]		= "Gumsk",
	["NMS_VERSION"]		= GameVersion,
	["MODIFICATIONS"]	= {
		{
			["MBIN_CHANGE_TABLE"] = {

				{
					["MBIN_FILE_SOURCE"] = FileSource1,
					["EXML_CHANGE_TABLE"] = {
						{
							["VALUE_CHANGE_TABLE"] = {
								{"PercentChangeOfFrigateBeingPurchasable",100},			--60
								{"MinFrigateStatValue",50},								--(-10)
								{"PercentChanceOfFrigateAdditionalSpawnedTrait",100},	--55
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"FuelBurnRate","GcFrigateStatRange.xml"},
							["REPLACE_TYPE"] = "ALL",
							["MATH_OPERATION"] = "*FB:Minimum", 
							["VALUE_CHANGE_TABLE"] = {
								{"Maximum",1},
							},
						},
						{
							["REPLACE_TYPE"] = "ALL",
							["MATH_OPERATION"] = "*F:Maximum", 
							["VALUE_CHANGE_TABLE"] = {
								{"Minimum",1},
							},
						},
					},
				},

				{
					["MBIN_FILE_SOURCE"] = FileSource2,
					["EXML_CHANGE_TABLE"] = {
						{
							["SPECIAL_KEY_WORDS"] = {"FrigateTraitStrength","NegativeSmall"},
							["SECTION_UP"] = 1,
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] = {
								{"Combat",0},
								{"Exploration",0},
								{"Mining",0},
								{"Diplomacy",0},
								{"Support",0},
								{"Normandy",0},
								{"DeepSpace",0},
								{"DeepSpaceCommon",0},
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"FrigateTraitStrength","NegativeMedium"},
							["SECTION_UP"] = 1,
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] = {
								{"Combat",0},
								{"Exploration",0},
								{"Mining",0},
								{"Diplomacy",0},
								{"Support",0},
								{"Normandy",0},
								{"DeepSpace",0},
								{"DeepSpaceCommon",0},
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"FrigateTraitStrength","NegativeLarge"},
							["SECTION_UP"] = 1,
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] = {
								{"Combat",0},
								{"Exploration",0},
								{"Mining",0},
								{"Diplomacy",0},
								{"Support",0},
								{"Normandy",0},
								{"DeepSpace",0},
								{"DeepSpaceCommon",0},
							},
						},
					},
				},
			}
		}
	}
}