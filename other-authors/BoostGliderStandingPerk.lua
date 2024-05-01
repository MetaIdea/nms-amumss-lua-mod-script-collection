NMS_MOD_DEFINITION_CONTAINER =
{
  ["MOD_FILENAME"]  	= "BoostGliderStandingPerk.pak",
  ["MOD_AUTHOR"]    	= "OTBP",
  ["LUA_AUTHOR"]    	= "OTBP",
  ["NMS_VERSION"]   	= "ORBITAL 4.6",
  --["GLOBAL_INTEGER_TO_FLOAT"] = "FORCE",
  ["MOD_DESCRIPTION"]	= "Walker interaction has consequences, Race and Faction Standing",
  ["MODIFICATIONS"] =
    {
        {
			--["PAK_FILE_SOURCE"] 	= "NMSARC.Precache.pak ",
            ["MBIN_CHANGE_TABLE"]   =
            {
                {
                    ["MBIN_FILE_SOURCE"]    = "MODELS/COMMON/ROBOTS/WALKER/ENTITIES/WALKERHEADARMOUR.ENTITY.MBIN",
                    ["EXML_CHANGE_TABLE"]   =
                    {
                        {
							["PRECEDING_KEY_WORDS"] = "StandingChangeOnDeath",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
								{"Gek",				"1"},	--Orbital "0",
								{"Korvax",			"-1"},	--Orbital "0",
								{"Vykeen",			"1"},	--Orbital "0",
								{"TradeGuild",		"1"},	--Orbital "0",
								{"WarriorGuild",	"2"},	--Orbital "0",
								{"ExplorerGuild",	"-1"},	--Orbital "0",
								{"Pirates",			"1"},	--Orbital "0",
								{"Builders",		"1"},	--Orbital "0", --AutoPhage
                            },
                        },
                    },
                },
            },
        },
    },
}
--NOTE: ANYTHING NOT referenced in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED