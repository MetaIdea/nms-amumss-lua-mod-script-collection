-- File Settings --
FileName    = "More Suit Terminal Upgrades.pak"
ModAuthor   = "JustRuthless"
LuaAuthor   = "JustRuthless"
ModMaintenance = "Babscoole and DarkScythe"
NMS_Version = "4.00"

-- File Sources --
FileSource1 = "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/COMMONPARTS/CRYOCHAMBER/ENTITIES/CRYOCHAMBERINTERACTION.ENTITY.MBIN"

NMS_MOD_DEFINITION_CONTAINER = 
{
	["MOD_FILENAME"]  = FileName,
	["MOD_AUTHOR"]    = ModAuthor,
	["LUA_AUTHOR"]    = LuaAuthor,
	["MOD_MAINTENANCE"] = ModMaintenance,
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