Multiplier = 2

Author = "Cykron0271"
ModName	= "MoreMissionBoardRewards_WithoutRange"
BaseDescription = "Increase Rewards from all Mission Boards"
GameVersion = "v6.04"
FileSource = "METADATA\REALITY\TABLES\REWARDTABLE.MBIN"

NMS_MOD_DEFINITION_CONTAINER = {
	["MOD_FILENAME"]	= ModName.."-x"..Multiplier.."-"..GameVersion,
	["MOD_DESCRIPTION"]	= BaseDescription,
	["MOD_AUTHOR"]		= Author,
	["NMS_VERSION"] 	= GameVersion,
	["MODIFICATIONS"]	= {
		{
			["MBIN_CHANGE_TABLE"]	=	{
				{
					["MBIN_FILE_SOURCE"]	=	{FileSource},
					["MXML_CHANGE_TABLE"]	=	{
						{
							["SPECIAL_KEY_WORDS"]	=	{"Reward","GcRewardSpecificProduct","Default","GcDefaultMissionProductEnum"},
							["SECTION_UP"]		=	1,
							["REPLACE_TYPE"]	=	"ALL",
							["MATH_OPERATION"]	=	"*",
							["VALUE_CHANGE_TABLE"]	=	{
								{"AmountMax",Multiplier},
							},
						},
						{
							["SPECIAL_KEY_WORDS"]	=	{"Reward","GcRewardSpecificProduct","Default","GcDefaultMissionProductEnum"},
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