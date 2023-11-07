--DO NOT USE "REMOVE" TAGS WHEN COPYING FILES
--This script is intended for use with OpenBiomeExtender and will not work without it.
--Place the OpenBiomeExtender.pak into your ModScript folder when you run this script

NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_BATCHNAME"] 			= "zzOpenBiomeExtender-MergedModules.pak",
  ["MOD_FILENAME"] 			= "Error - You forgot to put OpenBE pak in ModScript.pak", --MOD_FILENAME will never be used if scripts are used properly (as batch patches)
  ["MOD_DESCRIPTION"]		= "Adds Lava objects to the Scorched biome and vice versa, while preserving the overall theme and uniqueness of the original biomes.",
  ["MOD_AUTHOR"]				= "CodenameAwesome",
  ["NMS_VERSION"]				= "",
  ["MODIFICATIONS"] 		= 
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= {"OPENBE/BIOMEFILES/VANILLA/SCORCHED/SCORCHEDBIOME.MBIN"},
					["EXML_CHANGE_TABLE"] = {
						{
							["SPECIAL_KEY_WORDS"] = {"Name","LANDMARKS"},
							["PRECEDING_KEY_WORDS"] = {"Options"},
							["ADD"] =
[[        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/VANILLA/LANDMARKS/LAVA/LAVAOBJECTSFULL.MBIN" />
        </Property>]]
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","OBJECTS"},
							["PRECEDING_KEY_WORDS"] = {"Options"},
							["ADD"] =
[[        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/VANILLA/OBJECTS/LAVA/LAVAOBJECTSFULL.MBIN" />
        </Property>]]
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","DETAILOBJECTS"},
							["PRECEDING_KEY_WORDS"] = {"Options"},
							["ADD"] =
[[        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/LAVA/LAVAOBJECTSFULL.MBIN" />
        </Property>]]
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= {"OPENBE/BIOMEFILES/VANILLA/LAVA/LAVABIOME.MBIN"},
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Name","LANDMARKS"},
							["PRECEDING_KEY_WORDS"] = {"Options"},
							["ADD"] =
[[		<Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/VANILLA/LANDMARKS/SCORCHED/SCORCHBIGPROPSOBJECTSFULL.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/VANILLA/LANDMARKS/SCORCHED/SCORCHCORALOBJECTS.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/VANILLA/LANDMARKS/SCORCHED/SCORCHEDOBJECTSLOW.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/VANILLA/LANDMARKS/SCORCHED/SCORCHEDOBJECTSMID.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/VANILLA/LANDMARKS/SCORCHED/SCORCHEDOBJECTSFULL.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/VANILLA/LANDMARKS/SCORCHED/SCORCHEDSHIELDTREEOBJECTS.MBIN" />
        </Property>]]
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","OBJECTS"},
							["PRECEDING_KEY_WORDS"] = {"Options"},
							["ADD"] =
[[		<Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/VANILLA/OBJECTS/SCORCHED/SCORCHBIGPROPSOBJECTSFULL.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/VANILLA/OBJECTS/SCORCHED/SCORCHCORALOBJECTS.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/VANILLA/OBJECTS/SCORCHED/SCORCHEDOBJECTSDEAD.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/VANILLA/OBJECTS/SCORCHED/SCORCHEDOBJECTSLOW.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/VANILLA/OBJECTS/SCORCHED/SCORCHEDOBJECTSMID.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/VANILLA/OBJECTS/SCORCHED/SCORCHEDOBJECTSFULL.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/VANILLA/OBJECTS/SCORCHED/SCORCHEDSHIELDTREEOBJECTS.MBIN" />
        </Property>]]
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","DETAILOBJECTS"},
							["PRECEDING_KEY_WORDS"] = {"Options"},
							["ADD"] =
[[		<Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/SCORCHED/SCORCHBIGPROPSOBJECTSFULL.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/SCORCHED/SCORCHCORALOBJECTS.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/SCORCHED/SCORCHEDOBJECTSDEAD.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/SCORCHED/SCORCHEDOBJECTSLOW.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/SCORCHED/SCORCHEDOBJECTSMID.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/SCORCHED/SCORCHEDOBJECTSFULL.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/SCORCHED/SCORCHEDSHIELDTREEOBJECTS.MBIN" />
        </Property>]]
						},
					}
				}
			},
		}
	}
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE