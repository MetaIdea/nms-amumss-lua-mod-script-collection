Author = "Gumsk"
ModName = "gSquad Tighter Squad Formations"
ModNameSub = ""
BaseDescription = "Makes squads fly closer"
GameVersion = "6.1.8.0"
ModVersion = "a"
FileSource1 = "GCAISPACESHIPGLOBALS.GLOBAL.MBIN"

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME	= ModName.." "..ModNameSub.." "..GameVersion..ModVersion,
	MOD_DESCRIPTION	= BaseDescription,
	MOD_AUTHOR		= Author,
	NMS_VERSION		= GameVersion,
	MODIFICATIONS	= {
		{
			MBIN_CHANGE_TABLE = {
				{
					MBIN_FILE_SOURCE = FileSource1,
					MXML_CHANGE_TABLE = {
						{
							PRECEDING_KEY_WORDS = {"FormationOffsetThirdPerson"},
							VALUE_CHANGE_TABLE = {
								{"Y",0},		--10
								{"Z",0},		--120 
							},
						},
						{
							PRECEDING_KEY_WORDS = {"CombatFormationOffsetThirdPerson"},
							VALUE_CHANGE_TABLE = {
								{"Z",0},		--120 
							},
						},
						{
							VALUE_CHANGE_TABLE = {
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