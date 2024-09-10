--[[ 
File modified: GCFISHINGGLOBALS.GLOBAL.MBIN

You can change the chances to your liking below

!!! You can not use decimals or the script will throw an error while compiling !!!

--Bionic lure used for testing--
High Chance: 200 (Legendary every few casts)
Medium Chance: 45 (Slightly higher than Vanilla)
Low Chance: 10 (Untested)
]]--

vJunk		= 400		--Default: 20
vCommon		= 1000		--Default: 57
vRare		= 500		--Default: 25
vEpic		= 100		--Default: 3
vLegendary	= 45		--Default: 1



--[[ DO NOT EDIT ]]--
ModName = "Legendary Fish Rarity"
GameVersion = "5.11"
ModVersion = "1.0"

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME	= ModName.."_"..ModVersion.."_"..GameVersion..".pak",
	MOD_DESCRIPTION	= "Adjusts Legendary Fish Rarity",
	MOD_AUTHOR		= "br4iny",
	LUA_AUTHOR		= "br4iny",
	NMS_VERSION		= GameVersion,
	GLOBAL_INTEGER_TO_FLOAT = "FORCE",

	MODIFICATIONS	= {
		{
			MBIN_CHANGE_TABLE = {
				{
					MBIN_FILE_SOURCE = "GCFISHINGGLOBALS.GLOBAL.MBIN",
					EXML_CHANGE_TABLE = {
						{
							PRECEDING_KEY_WORDS = "QualityWeights",
							VALUE_CHANGE_TABLE = {
								{"Junk",vJunk},
								{"Common",vCommon},
								{"Rare",vRare},
								{"Epic",vEpic},
								{"Legendary",vLegendary}
							},
						},
					}
				}
			}
		}
	}
}