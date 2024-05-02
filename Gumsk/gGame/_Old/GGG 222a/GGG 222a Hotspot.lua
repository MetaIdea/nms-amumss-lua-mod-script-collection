HotspotScanRange = 1300					--? How far away the scanner can detect hotspots, in u. Maximum is about 1300, but over 1000 is unreliable. Original value "400"

NMS_MOD_DEFINITION_CONTAINER = 
{
MOD_FILENAME	= "GGG 222a Hotspot.pak",
MOD_DESCRIPTION	= "Expanded Hotspot scan range",
MOD_AUTHOR		= "Gumsk",
NMS_VERSION		= "2.22",
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
								{"Unknown0x394", HotspotScanRange}
							}
						
						},
					}
				},
			}
		},
	}
}
