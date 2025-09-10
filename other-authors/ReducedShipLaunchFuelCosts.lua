LaunchCost = 10

LUAAuthor = "Cykron0271"
OriginalCreators = "Lexman6\lo2k"
ModName	= "ReducedShipLaunchCosts"
BaseDescription = "Reduce fuel costs needed for ships to take off from the ground"
GameVersion = "v6.03"
FileSource = "METADATA\REALITY\TABLES\NMS_REALITY_GCTECHNOLOGYTABLE.MBIN"

NMS_MOD_DEFINITION_CONTAINER = {
	["MOD_FILENAME"]	= "LaunchCosts".."_"..LaunchCost.."-"..GameVersion,
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
							["SPECIAL_KEY_WORDS"]	=	{"ID","LAUNCHER","StatBonuses","GcStatsBonus","StatsType","Ship_Launcher_TakeOffCost"},
							["SECTION_UP"]		=	1,
							["REPLACE_TYPE"]		=	"ALL",
							["VALUE_CHANGE_TABLE"]	=	{
								{"Bonus",LaunchCost},
							},
						},
						{
							["SPECIAL_KEY_WORDS"]	=	{"ID","UT_LAUNCHER","StatBonuses","GcStatsBonus","StatsType","Ship_Launcher_TakeOffCost"},
							["SECTION_UP"]		=	1,
							["REPLACE_TYPE"]		=	"ALL",
							["VALUE_CHANGE_TABLE"]	=	{
								{"Bonus",LaunchCost},
							},
						},
						{
							["SPECIAL_KEY_WORDS"]	=	{"ID","LAUNCHER_ALIEN","StatBonuses","GcStatsBonus","StatsType","Ship_Launcher_TakeOffCost"},
							["SECTION_UP"]		=	1,
							["REPLACE_TYPE"]		=	"ALL",
							["VALUE_CHANGE_TABLE"]	=	{
								{"Bonus",LaunchCost},
							},
						},
						{
							["SPECIAL_KEY_WORDS"]	=	{"ID","LAUNCHER_SPEC","StatBonuses","GcStatsBonus","StatsType","Ship_Launcher_TakeOffCost"},
							["SECTION_UP"]		=	1,
							["REPLACE_TYPE"]		=	"ALL",
							["VALUE_CHANGE_TABLE"]	=	{
								{"Bonus",LaunchCost},
							},
						},
						{
							["SPECIAL_KEY_WORDS"]	=	{"ID","LAUNCHER_ROBO","StatBonuses","GcStatsBonus","StatsType","Ship_Launcher_TakeOffCost"},
							["SECTION_UP"]		=	1,
							["REPLACE_TYPE"]		=	"ALL",
							["VALUE_CHANGE_TABLE"]	=	{
								{"Bonus",LaunchCost},
							},
						},
					},
				},
			}
		}							
	}
}