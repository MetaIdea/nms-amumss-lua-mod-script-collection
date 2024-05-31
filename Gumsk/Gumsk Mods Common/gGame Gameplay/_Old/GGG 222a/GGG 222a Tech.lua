--Tech Grouping Bonus Adjustments
TechGroup = 12							--Maximum grouping of same tech type. Original value "3"
BonusSameTypeAdd = 0.06					--?? Original value "0.06"
BonusSameTypeMult = 0.04				--?? Original value "0.04"
BonusChildAdd = 0.05					--?? Original value "0.05"
BonusChildMult = 0.03					--?? Original value "0.03"

NMS_MOD_DEFINITION_CONTAINER = 
{
MOD_FILENAME	= "GGG 222a Tech.pak",
MOD_DESCRIPTION	= "Tech grouping increases",
MOD_AUTHOR		= "Gumsk",
NMS_VERSION		= "2.2",
MODIFICATIONS	=
	{
		{
			["PAK_FILE_SOURCE"] = "NMSARC.59B126E2.pak",
			MBIN_CHANGE_TABLE = 
			{
				{
					MBIN_FILE_SOURCE = "GCGAMEPLAYGLOBALS.GLOBAL.MBIN",
					EXML_CHANGE_TABLE = 
					{
						{
							PRECEDING_KEY_WORDS = "",
							VALUE_CHANGE_TABLE =
							{
								{"MaxNumSameGroupTech", TechGroup},
								{"BonusSameTypeElementsAdd", BonusSameTypeAdd},
								{"BonusSameTypeElementsMultiply", BonusSameTypeMult},
								{"BonusChildTypeElementsAdd", BonusChildAdd},
								{"BonusChildTypeElementsMultiply", BonusChildMult}
							}
						},
					}
				},
			}
		},
	}
}
