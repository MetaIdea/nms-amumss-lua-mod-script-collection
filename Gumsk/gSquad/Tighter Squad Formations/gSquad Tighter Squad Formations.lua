Author = "Gumsk"
ModName = "gSquad Tighter Squad Formations"
ModNameSub = ""
BaseDescription = "Makes squads fly closer"
GameVersion = "450"
ModVersion = "a"
FileSource1 = "GCAISPACESHIPGLOBALS.GLOBAL.MBIN"

NMS_MOD_DEFINITION_CONTAINER = {
	["MOD_FILENAME"]	= ModName.." "..ModNameSub.." "..GameVersion..ModVersion..".pak",
	["MOD_DESCRIPTION"]	= BaseDescription,
	["MOD_AUTHOR"]		= Author,
	["NMS_VERSION"]		= GameVersion,
	["MODIFICATIONS"]	= {
		{
			["MBIN_CHANGE_TABLE"] = {
				{
					["MBIN_FILE_SOURCE"] = FileSource1,
					["EXML_CHANGE_TABLE"] = {
						{
							["SPECIAL_KEY_WORDS"] = {"FormationOffsetThirdPerson","Vector3f.xml"},
							["VALUE_CHANGE_TABLE"] = {
								{"y",0},		--10
								{"z",0},		--120 
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"CombatFormationOffsetThirdPerson","Vector3f.xml"},
							["VALUE_CHANGE_TABLE"] = {
								{"z",0},		--120 
							},
						},
						{
							["VALUE_CHANGE_TABLE"] = {
								{"FormationOffsetCylinderWidth",45},					--80
								{"FormationOffsetCylinderHeight",25},					--40
								{"FormationOffsetCylinderLength",0},					--10

								{"FormationOffsetCylinderWidthThirdPerson",45},			--100
								{"FormationOffsetCylinderHeightThirdPerson",25},		--60
								{"FormationOffsetCylinderLengthThirdPerson",0},			--10
								
								{"CombatFormationOffsetCylinderWidth",45},				--80
								{"CombatFormationOffsetCylinderHeight",25},				--40
								{"CombatFormationOffsetCylinderLength",0},				--10
								
								{"CombatFormationOffsetCylinderWidthThirdPerson",45},	--75
								{"CombatFormationOffsetCylinderHeightThirdPerson",25},	--40
								{"CombatFormationOffsetCylinderLengthThirdPerson",0},	--5
							},
						},
					},
				},
			}
		}
	}
}