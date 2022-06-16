-- File Settings --
FileName    = "More Suit Terminal Upgrades 1.0.pak"
ModAuthor   = "JustRuthless"
LuaAuthor   = "JustRuthless"
NMS_Version = "Leviathan 3.92"

-- File Sources --
FileSource1 = "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/COMMONPARTS/CRYOCHAMBER/ENTITIES/CRYOCHAMBERINTERACTION.ENTITY.MBIN"

NMS_MOD_DEFINITION_CONTAINER = 
{
	["MOD_FILENAME"]  = FileName,
	["MOD_AUTHOR"]    = ModAuthor,
	["LUA_AUTHOR"]    = LuaAuthor,
	["MOD_DESCRIPTION"] = "",
	["NMS_VERSION"]   = NMS_Version,
	["MODIFICATIONS"] =
		{
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{
					["MBIN_FILE_SOURCE"]  = FileSource1,
					["EXML_CHANGE_TABLE"] = 
					{
						{-- makes it possible to interact with suit terminal more than once
							["VALUE_CHANGE_TABLE"] =
							{
								{"RepeatInteraction", "True"},
								{"ReseedAfterRewardSuccess", "True"},
							},
						},
						{-- removes backpack hologram close animation after buying an upgrade
							["SPECIAL_KEY_WORDS"] = {"StateID", "INTERACTOPTION"},
							["REMOVE"] = "SECTION",
						},
					}
				},
			}
		},
	}
}