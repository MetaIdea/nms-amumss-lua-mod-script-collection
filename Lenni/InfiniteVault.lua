NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]	= "InfiniteVault.pak",
["MOD_AUTHOR"]		= "Lenni",
["NMS_VERSION"]		= "4.46",
["MOD_DESCRIPTION"]	= "Archive vaults aren't locked after interaction",
["MODIFICATIONS"]	=
	{
		{
			["MBIN_CHANGE_TABLE"] 	=
			{
				{
					["MBIN_FILE_SOURCE"] 	= "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/LARGEBUILDINGS/COMMON/VAULT/ENTITIES/VAULTDATA.ENTITY.MBIN",
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["VALUE_CHANGE_TABLE"]	=
							{
								{ "RepeatInteraction", "true" },	--Original "false"
							},
						},
					},
				},
			}
		}
	}
}
