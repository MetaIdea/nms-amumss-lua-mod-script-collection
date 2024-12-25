ModName = "gGame Gameplay"
ModNameSub = "Tech"
GameVersion = "5.2.9.0"
ModVersion = "a"

--[[ Files Modified:
GCGAMEPLAYGLOBALS.GLOBAL.MBIN
]]--

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME	= ModName.." "..ModNameSub.." "..GameVersion..ModVersion..".pak",
	MOD_DESCRIPTION	= "Various modifications to gameplay globals",
	MOD_AUTHOR		= "Gumsk",
	LUA_AUTHOR		= "Gumsk",
	NMS_VERSION		= GameVersion,
	GLOBAL_INTEGER_TO_FLOAT = "FORCE",
	MODIFICATIONS	= {
		{
			MBIN_CHANGE_TABLE = {
				{
					MBIN_FILE_SOURCE = "GCGAMEPLAYGLOBALS.GLOBAL.MBIN",
					EXML_CHANGE_TABLE = {
						{
							VALUE_CHANGE_TABLE = {
              --Grouping
								-- {"TechMustBeInTechInventory", "False"},		--True
								{"MaxNumSameGroupTech", 120},						      --3; Maximum number of same tech group on one inventory page
								-- {"BonusSameTypeElementsAdd", 0.06},				--0.06; 
								-- {"BonusSameTypeElementsMultiply", 0.04},		--0.04; 
								-- {"BonusChildTypeElementsAdd", 0.05},				--0.05; 
								-- {"BonusChildTypeElementsMultiply", 0.03},	--0.03; 
							},
						},
					},
				},
			}
		}
	}
}