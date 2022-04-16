--DO NOT USE "REMOVE" TAGS WHEN COPYING FILES
--This script is intended for use with OpenBiomeExtender and will not work without it.
--Place the OpenBiomeExtender.pak into your ModScript folder when you run this script

INDIVIDUAL_BIOME_WEIGHT = 0.3 -- Half of the dead frozen biome weight

NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_BATCHNAME"] 			= "zzOpenBiomeExtender-MergedModules.pak",
  ["MOD_FILENAME"] 			= "Error - You forgot to put OpenBE pak in ModScript.pak", --MOD_FILENAME will never be used if scripts are used properly (as batch patches)
  ["MOD_DESCRIPTION"]		= "Creates copies of all the main biomes and disables everything but their DetailObjects layer and adds them as rare variants of the dead biome.",
  ["MOD_AUTHOR"]				= "CodenameAwesome",
  ["NMS_VERSION"]				= "",
  ["MODIFICATIONS"] 		= 
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{--Copy all the main biomes
					["MBIN_FILE_SOURCE"] 	= {
						{"OPENBE/BIOMEFILES/VANILLA/LAVA/LAVABIOME.MBIN","OPENBE/BIOMEFILES/CODENAMEAWESOME/DEAD/DEADLAVABIOME.MBIN"},
						--{"OPENBE/BIOMEFILES/VANILLA/LUSH/LUSHBIOME.MBIN","OPENBE/BIOMEFILES/CODENAMEAWESOME/DEAD/DEADLUSHBIOME.MBIN"}, --Looks too weird
						{"OPENBE/BIOMEFILES/VANILLA/RADIOACTIVE/RADIOACTIVEBIOME.MBIN","OPENBE/BIOMEFILES/CODENAMEAWESOME/DEAD/DEADRADIOACTIVEBIOME.MBIN"},
						{"OPENBE/BIOMEFILES/VANILLA/SCORCHED/SCORCHEDBIOME.MBIN","OPENBE/BIOMEFILES/CODENAMEAWESOME/DEAD/DEADSCORCHEDBIOME.MBIN"},
						{"OPENBE/BIOMEFILES/VANILLA/SWAMP/SWAMPBIOME.MBIN","OPENBE/BIOMEFILES/CODENAMEAWESOME/DEAD/DEADSWAMPBIOME.MBIN"},
						{"OPENBE/BIOMEFILES/VANILLA/TOXIC/TOXICBIOME.MBIN","OPENBE/BIOMEFILES/CODENAMEAWESOME/DEAD/DEADTOXICBIOME.MBIN"},
					},
				},
				{--Disable all layers except DetailObjects
					["MBIN_FILE_SOURCE"] 	= {
						"OPENBE/BIOMEFILES/CODENAMEAWESOME/DEAD/DEADLAVABIOME.MBIN",
						--"OPENBE/BIOMEFILES/CODENAMEAWESOME/DEAD/DEADLUSHBIOME.MBIN",
						"OPENBE/BIOMEFILES/CODENAMEAWESOME/DEAD/DEADRADIOACTIVEBIOME.MBIN",
						"OPENBE/BIOMEFILES/CODENAMEAWESOME/DEAD/DEADSCORCHEDBIOME.MBIN",
						"OPENBE/BIOMEFILES/CODENAMEAWESOME/DEAD/DEADSWAMPBIOME.MBIN",
						"OPENBE/BIOMEFILES/CODENAMEAWESOME/DEAD/DEADTOXICBIOME.MBIN",
					},
					["EXML_CHANGE_TABLE"] = {
						{
							["SPECIAL_KEY_WORDS"] = {"Name","DISTANTOBJECTS"},
							["VALUE_CHANGE_TABLE"] = {
								{"Probability",0}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","LANDMARKS"},
							["VALUE_CHANGE_TABLE"] = {
								{"Probability",0}
							}
						},
						{--Remove all Objects
							["SPECIAL_KEY_WORDS"] = {"Name","OBJECTS","Value","IGNORE"},
							["REMOVE"] = "SECTION",
							["REPLACE_TYPE"] = "ALL",
						},
					}
				},
				{--Add only the dead level objects to each biome
					["MBIN_FILE_SOURCE"] 	= {
						"OPENBE/BIOMEFILES/CODENAMEAWESOME/DEAD/DEADLAVABIOME.MBIN",
					},
					["EXML_CHANGE_TABLE"] = {
						{--Remove all Objects
							["SPECIAL_KEY_WORDS"] = {"Name","OBJECTS"},
							["PRECEDING_KEY_WORDS"] = {"Options"},
							["ADD"] = [[        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/VANILLA/OBJECTS/LAVA/LAVAOBJECTSFULL.MBIN" />
        </Property>]]
						},
					}
				},
				{--Add only the dead level objects to each biome
					["MBIN_FILE_SOURCE"] 	= {
						"OPENBE/BIOMEFILES/CODENAMEAWESOME/DEAD/DEADRADIOACTIVEBIOME.MBIN",
					},
					["EXML_CHANGE_TABLE"] = {
						{--Remove all Objects
							["SPECIAL_KEY_WORDS"] = {"Name","OBJECTS"},
							["PRECEDING_KEY_WORDS"] = {"Options"},
							["ADD"] = [[		<Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/VANILLA/OBJECTS/RADIOACTIVE/RADIOACTIVEOBJECTSDEAD.MBIN" />
        </Property>]]
						},
					}
				},
				{--Add only the dead level objects to each biome
					["MBIN_FILE_SOURCE"] 	= {
						"OPENBE/BIOMEFILES/CODENAMEAWESOME/DEAD/DEADSWAMPBIOME.MBIN",
					},
					["EXML_CHANGE_TABLE"] = {
						{--Remove all Objects
							["SPECIAL_KEY_WORDS"] = {"Name","OBJECTS"},
							["PRECEDING_KEY_WORDS"] = {"Options"},
							["ADD"] = [[        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/VANILLA/OBJECTS/SWAMP/SWAMPOBJECTSFULL.MBIN" />
        </Property>]]
						},
					}
				},
				{--Add only the dead level objects to each biome
					["MBIN_FILE_SOURCE"] 	= {
						"OPENBE/BIOMEFILES/CODENAMEAWESOME/DEAD/DEADSCORCHEDBIOME.MBIN",
					},
					["EXML_CHANGE_TABLE"] = {
						{--Remove all Objects
							["SPECIAL_KEY_WORDS"] = {"Name","OBJECTS"},
							["PRECEDING_KEY_WORDS"] = {"Options"},
							["ADD"] = [[        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/VANILLA/LANDMARKS/SCORCHED/SCORCHEDOBJECTSDEAD.MBIN" />
        </Property>]]
						},
					}
				},
				{--Add only the dead level objects to each biome
					["MBIN_FILE_SOURCE"] 	= {
						"OPENBE/BIOMEFILES/CODENAMEAWESOME/DEAD/DEADTOXICBIOME.MBIN",
					},
					["EXML_CHANGE_TABLE"] = {
						{--Remove all Objects
							["SPECIAL_KEY_WORDS"] = {"Name","OBJECTS"},
							["PRECEDING_KEY_WORDS"] = {"Options"},
							["ADD"] = [[		<Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/VANILLA/OBJECTS/TOXIC/TOXICOBJECTSDEAD.MBIN" />
        </Property>]]
						},
					}
				},
				{-- Add the new biome files to BIOMEFILENAMES
					["MBIN_FILE_SOURCE"] = {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/BIOMEFILENAMES.MBIN"},
					["EXML_CHANGE_TABLE"] = {
						{
							["PRECEDING_KEY_WORDS"] = {"Dead","FileOptions"},
							["ADD"] = [[        <Property value="GcBiomeFileListOption.xml">
          <Property name="SubType" value="GcBiomeSubType.xml">
            <Property name="BiomeSubType" value="Lava" />
          </Property>
          <Property name="Filename" value="OPENBE/BIOMEFILES/CODENAMEAWESOME/DEAD/DEADLAVABIOME.MXML" />
          <Property name="Weight" value="]]..INDIVIDUAL_BIOME_WEIGHT..[[" />
        </Property>
        <Property value="GcBiomeFileListOption.xml">
          <Property name="SubType" value="GcBiomeSubType.xml">
            <Property name="BiomeSubType" value="Bubble" />
          </Property>
          <Property name="Filename" value="OPENBE/BIOMEFILES/CODENAMEAWESOME/DEAD/DEADRADIOACTIVEBIOME.MXML" />
          <Property name="Weight" value="]]..INDIVIDUAL_BIOME_WEIGHT..[[" />
        </Property>
        <Property value="GcBiomeFileListOption.xml">
          <Property name="SubType" value="GcBiomeSubType.xml">
            <Property name="BiomeSubType" value="HugeScorch" />
          </Property>
          <Property name="Filename" value="OPENBE/BIOMEFILES/CODENAMEAWESOME/DEAD/DEADSCORCHEDBIOME.MXML" />
          <Property name="Weight" value="]]..INDIVIDUAL_BIOME_WEIGHT..[[" />
        </Property>
        <Property value="GcBiomeFileListOption.xml">
          <Property name="SubType" value="GcBiomeSubType.xml">
            <Property name="BiomeSubType" value="Swamp" />
          </Property>
          <Property name="Filename" value="OPENBE/BIOMEFILES/CODENAMEAWESOME/DEAD/DEADSWAMPBIOME.MXML" />
          <Property name="Weight" value="]]..INDIVIDUAL_BIOME_WEIGHT..[[" />
        </Property>
        <Property value="GcBiomeFileListOption.xml">
          <Property name="SubType" value="GcBiomeSubType.xml">
            <Property name="BiomeSubType" value="HugeToxic" />
          </Property>
          <Property name="Filename" value="OPENBE/BIOMEFILES/CODENAMEAWESOME/DEAD/DEADTOXICBIOME.MXML" />
          <Property name="Weight" value="]]..INDIVIDUAL_BIOME_WEIGHT..[[" />
        </Property>]]
						},
					}
				},
			},
    }
	}
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE