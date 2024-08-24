Multiplier = 2

Author = "Cykron0271"
ModName	= "MoreMissionBoardRewards_WithoutRange"
BaseDescription = "Increase Rewards from all Mission Boards"
GameVersion = "v5.05"
FileSource = "METADATA\REALITY\TABLES\REWARDTABLE.MBIN"

NMS_MOD_DEFINITION_CONTAINER = {
	["MOD_FILENAME"]	= ModName.."_x"..Multiplier.."-"..GameVersion..".pak",
	["MOD_DESCRIPTION"]	= BaseDescription,
	["MOD_AUTHOR"]		= Author,
	["NMS_VERSION"] 	= GameVersion,
	["MODIFICATIONS"]	= {
		{
			["MBIN_CHANGE_TABLE"]	=	{
				{
					["MBIN_FILE_SOURCE"]	=	{FileSource},
					["EXML_CHANGE_TABLE"]	=	{
						{
							["SPECIAL_KEY_WORDS"]	=	{"Reward","GcRewardSpecificProduct.xml","Default","GcDefaultMissionProductEnum.xml"},
							["SECTION_UP"]		=	1,
							["REPLACE_TYPE"]	=	"ALL",
							["MATH_OPERATION"]	=	"*",
							["VALUE_CHANGE_TABLE"]	=	{
								{"AmountMax",Multiplier},
							},
						},
						{
							["SPECIAL_KEY_WORDS"]	=	{"Reward","GcRewardSpecificProduct.xml","Default","GcDefaultMissionProductEnum.xml"},
							["SECTION_UP"]		=	1,
							["MATH_OPERATION"]	=	"*F:AmountMax",
							["REPLACE_TYPE"]	=	"ALL",
							["VALUE_CHANGE_TABLE"]	=	{
								{"AmountMin","1"},
							},
						},
					},
				},
			}
		}							
	}
}