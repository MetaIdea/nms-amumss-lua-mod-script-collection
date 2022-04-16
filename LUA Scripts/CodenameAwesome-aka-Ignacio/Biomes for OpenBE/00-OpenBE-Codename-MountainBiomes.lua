--DO NOT USE "REMOVE" TAGS WHEN COPYING FILES
--This script is intended for use with OpenBiomeExtender and will not work without it.
--Place the OpenBiomeExtender.pak into your ModScript folder when you run this script

NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_BATCHNAME"] 			= "zzOpenBiomeExtender-MergedModules.pak",
  ["MOD_FILENAME"] 			= "Error - You forgot to put OpenBE pak in ModScript.pak", --MOD_FILENAME will never be used if scripts are used properly (as batch patches)
  ["MOD_DESCRIPTION"]		= "Adds Low DetailObjects from all biomes to the mountains for more variety",
  ["MOD_AUTHOR"]				= "CodenameAwesome",
  ["NMS_VERSION"]				= "",
  ["MODIFICATIONS"] 		= 
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{--Create the object lists
					["MBIN_FILE_SOURCE"] 	= {
						{"OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/LUSH/LUSHINFESTEDOBJECTS.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/OBJECTS/MOUNTAIN/LUSHINFESTEDOBJECTS.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/LUSH/LUSHOBJECTSDEAD.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/OBJECTS/MOUNTAIN/LUSHOBJECTSDEAD.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/LUSH/LUSHOBJECTSLOW.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/OBJECTS/MOUNTAIN/LUSHOBJECTSLOW.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/LUSH/LUSHOBJECTSMID.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/OBJECTS/MOUNTAIN/LUSHOBJECTSMID.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/LUSH/LUSHROCKYOBJECTS.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/OBJECTS/MOUNTAIN/LUSHROCKYOBJECTS.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/LUSH/LUSHROCKYWEIRDOBJECTS.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/OBJECTS/MOUNTAIN/LUSHROCKYWEIRDOBJECTS.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/LUSH/LUSHROOMAOBJECTS.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/OBJECTS/MOUNTAIN/LUSHROOMAOBJECTS.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/LUSH/LUSHROOMBOBJECTS.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/OBJECTS/MOUNTAIN/LUSHROOMBOBJECTS.MBIN"},
					}
				},
				{--Remove grass from lush object lists
					["MBIN_FILE_SOURCE"] = {
					"OPENBE/OBJECTFILES\CODENAMEAWESOME/DETAILOBJECTS/OBJECTS/MOUNTAIN/LUSHOBJECTSLOW.MBIN",					
					"OPENBE/OBJECTFILES\CODENAMEAWESOME/DETAILOBJECTS/OBJECTS/MOUNTAIN/LUSHOBJECTSMID.MBIN",					
					"OPENBE/OBJECTFILES\CODENAMEAWESOME/DETAILOBJECTS/OBJECTS/MOUNTAIN/LUSHROCKYOBJECTS.MBIN",					
					"OPENBE/OBJECTFILES\CODENAMEAWESOME/DETAILOBJECTS/OBJECTS/MOUNTAIN/LUSHROCKYWEIRDOBJECTS.MBIN",					
					},
					["EXML_CHANGE_TABLE"] = {
						{
							["REPLACE_TYPE"] = "ALL",
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							["REMOVE"] = "SECTION"
						}
					},
				},
				{--Remove grass from lush object lists
					["MBIN_FILE_SOURCE"] = {"OPENBE/OBJECTFILES\CODENAMEAWESOME/DETAILOBJECTS/OBJECTS/MOUNTAIN/LUSHINFESTEDOBJECTS.MBIN"},
					["EXML_CHANGE_TABLE"] = {
						{
							["REPLACE_TYPE"] = "ALL",
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWLUSHGRASS.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							["REMOVE"] = "SECTION"
						}
					},
				},
				{--Remove grass from lush object lists
					["MBIN_FILE_SOURCE"] = {
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/OBJECTS/MOUNTAIN/LUSHROOMAOBJECTS.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/OBJECTS/MOUNTAIN/LUSHROOMBOBJECTS.MBIN",
					},
					["EXML_CHANGE_TABLE"] = {
						{
							["REPLACE_TYPE"] = "ALL",
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/BUBBLELUSHGRASS.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							["REMOVE"] = "SECTION"
						}
					},
				},
				{--Add these files to the all non snowy biomes. These won't have snowy themed object lists.
					["MBIN_FILE_SOURCE"] = {
						"OPENBE/BIOMEFILES/VANILLA/BARREN/BARRENBIOME.MBIN",
						"OPENBE/BIOMEFILES/VANILLA/BARREN/BARRENINFESTEDBIOME.MBIN",
						--"OPENBE/BIOMEFILES/VANILLA/DEAD/DEADBIOME.MBIN", --Plants spawning here is weird so not adding them
						--"OPENBE/BIOMEFILES/VANILLA/DEAD/DEADFROZENBIOME.MBIN", --Plants spawning here is weird so not adding them
						"OPENBE/BIOMEFILES/VANILLA/HUGEPROPS/HUGELUSH/HUGELUSHBIOME.MBIN",
						"OPENBE/BIOMEFILES/VANILLA/HUGEPROPS/HUGEROCK/HUGEROCKBIOME.MBIN",
						"OPENBE/BIOMEFILES/VANILLA/HUGEPROPS/HUGESCORCHED/HUGESCORCHBIOME.MBIN",
						"OPENBE/BIOMEFILES/VANILLA/HUGEPROPS/HUGETOXIC/HUGETOXICBIOME.MBIN",
						"OPENBE/BIOMEFILES/VANILLA/HUGEPROPS/HUGEUWPLANT/HUGEUVWPLANTBIOME.MBIN",
						"OPENBE/BIOMEFILES/VANILLA/LAVA/LAVABIOME.MBIN",
						"OPENBE/BIOMEFILES/VANILLA/LUSH/LUSHBIOME.MBIN",
						"OPENBE/BIOMEFILES/VANILLA/LUSH/LUSHBUBBLESBIOME.MBIN",
						"OPENBE/BIOMEFILES/VANILLA/LUSH/LUSHINFESTEDBIOME.MBIN",
						"OPENBE/BIOMEFILES/VANILLA/LUSH/LUSHROOMABIOME.MBIN",
						"OPENBE/BIOMEFILES/VANILLA/LUSH/LUSHROOMBBIOME.MBIN",
						"OPENBE/BIOMEFILES/VANILLA/RADIOACTIVE/RADIOACTIVEBIOME.MBIN",
						"OPENBE/BIOMEFILES/VANILLA/RADIOACTIVE/RADIOINFESTEDBIOME.MBIN",
						"OPENBE/BIOMEFILES/VANILLA/SCORCHED/SCORCHEDBIOME.MBIN",
						"OPENBE/BIOMEFILES/VANILLA/SCORCHED/SCORCHINFESTEDBIOME.MBIN",
						"OPENBE/BIOMEFILES/VANILLA/SWAMP/SWAMPBIOME.MBIN",
						"OPENBE/BIOMEFILES/VANILLA/TOXIC/TOXICBIOME.MBIN",
						"OPENBE/BIOMEFILES/VANILLA/TOXIC/TOXICEGGSBIOME.MBIN",
						"OPENBE/BIOMEFILES/VANILLA/TOXIC/TOXICINFESTEDBIOME.MBIN",
						"OPENBE/BIOMEFILES/VANILLA/TOXIC/TOXICSPORESBIOME.MBIN",
						"OPENBE/BIOMEFILES/VANILLA/TOXIC/TOXICTENTACLESBIOME.MBIN",
						"OPENBE/BIOMEFILES/VANILLA/WEIRD/BEAMSTONE/BEAMSBIOME.MBIN",
						"OPENBE/BIOMEFILES/VANILLA/WEIRD/BONESPIRE/BONESPIREBIOME.MBIN",
						"OPENBE/BIOMEFILES/VANILLA/WEIRD/CONTOUR/CONTOURBIOME.MBIN",
						"OPENBE/BIOMEFILES/VANILLA/WEIRD/ELBUBBLE/ELBUBBLEBIOME.MBIN",
						"OPENBE/BIOMEFILES/VANILLA/WEIRD/FRACTALCUBE/FRACTCUBEBIOME.MBIN",
						"OPENBE/BIOMEFILES/VANILLA/WEIRD/HEXAGON/HEXAGONBIOME.MBIN",
						"OPENBE/BIOMEFILES/VANILLA/WEIRD/HYDROGARDEN/HYDROGARDENBIOME.MBIN",
						"OPENBE/BIOMEFILES/VANILLA/WEIRD/IRRISHELLS/IRRISHELLSBIOME.MBIN",
						"OPENBE/BIOMEFILES/VANILLA/WEIRD/MSTRUCTURES/MSTRUCTBIOME.MBIN",
						"OPENBE/BIOMEFILES/VANILLA/WEIRD/SHARDS/SHARDSBIOME.MBIN",
						"OPENBE/BIOMEFILES/VANILLA/WEIRD/WIRECELLS/WIRECELLSBIOME.MBIN",
					},
					["EXML_CHANGE_TABLE"] =
					{
						{--Add the unedited files
							["SPECIAL_KEY_WORDS"] = {"Name","MOUNTAIN"},
							["PRECEDING_KEY_WORDS"] = {"Options"},
							["ADD"] =
[[        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/BARREN/BARRENBIGPROPSOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/BARREN/BARRENCORALOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/BARREN/BARRENOBJECTSDEAD.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/BARREN/BARRENOBJECTSLOW.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/BARREN/BARRENROCKYOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/BARREN/BARRENROCKYWEIRDOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/DEAD/DEADBIGPROPSOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/DEAD/DEADBIGPROPSOBJECTSVAR1.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/DEAD/DEADBIGPROPSOBJECTSVAR2.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/DEAD/DEADBIGPROPSOBJECTSVAR3.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/DEAD/DEADOBJECTSDEAD.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/HUGEPROPS/HUGERING/HUGERINGOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/HUGEPROPS/HUGEROCK/HUGEROCKOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/HUGEPROPS/HUGESCORCHED/HUGESCORCHOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/HUGEPROPS/HUGEUWPLANT/HUGEUWPLANTOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/LAVA/LAVAOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/OBJECTS/MOUNTAIN/MOUNTAINROCKS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/OBJECTS/MOUNTAIN/MOUNTAINROCKSCRUB.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/RADIOACTIVE/RADIOACTIVEALIENOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/RADIOACTIVE/RADIOACTIVEGLOWOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/RADIOACTIVE/RADIOACTIVEOBJECTSDEAD.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/RADIOACTIVE/RADIOACTIVEOBJECTSLOW.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/RADIOACTIVE/RADIOBIGPROPSOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/RADIOACTIVE/RADIOSPIKECRYSTALSOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/RADIOACTIVE/RADIOSPIKEPOTATOOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/SCORCHED/SCORCHBIGPROPSOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/SCORCHED/SCORCHCORALOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/SCORCHED/SCORCHEDALIENOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/SCORCHED/SCORCHEDOBJECTSDEAD.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/SCORCHED/SCORCHEDOBJECTSLOW.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/SCORCHED/SCORCHEDSHIELDTREEOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/SWAMP/SWAMPOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/TOXIC/TOXICBIGPROPSOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/TOXIC/TOXICEGGSMOONOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/TOXIC/TOXICEGGSOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/TOXIC/TOXICINFESTEDOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/TOXIC/TOXICOBJECTSDEAD.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/TOXIC/TOXICSPORESOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/TOXIC/TOXICTENTACLESOBJECTS.MBIN" />
        </Property>]]
						},
						{--Add the edited files
							["SPECIAL_KEY_WORDS"] = {"Name","MOUNTAIN"},
							["PRECEDING_KEY_WORDS"] = {"Options"},
							["ADD"] =
[[        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/OBJECTS/MOUNTAIN/LUSHINFESTEDOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/OBJECTS/MOUNTAIN/LUSHOBJECTSDEAD.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/OBJECTS/MOUNTAIN/LUSHOBJECTSLOW.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/OBJECTS/MOUNTAIN/LUSHOBJECTSMID.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/OBJECTS/MOUNTAIN/LUSHROCKYOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/OBJECTS/MOUNTAIN/LUSHROCKYWEIRDOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/OBJECTS/MOUNTAIN/LUSHROOMAOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/OBJECTS/MOUNTAIN/LUSHROOMBOBJECTS.MBIN" />
        </Property>]]
						},
					}
				},
				{--Now lets add some to the snowy biomes. This won't have hot themed object lists.
					["MBIN_FILE_SOURCE"] = {
						"OPENBE/BIOMEFILES/VANILLA/FROZEN/FROZENBIOME.MBIN",
						"OPENBE/BIOMEFILES/VANILLA/FROZEN/FROZENINFESTEDBIOME.MBIN",
					},
					["EXML_CHANGE_TABLE"] =
					{
						{--Add the unedited files EXCEPT for scorched files
							["SPECIAL_KEY_WORDS"] = {"Name","MOUNTAIN"},
							["PRECEDING_KEY_WORDS"] = {"Options"},
							["ADD"] =
[[        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/BARREN/BARRENBIGPROPSOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/BARREN/BARRENCORALOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/BARREN/BARRENOBJECTSDEAD.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/BARREN/BARRENOBJECTSLOW.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/BARREN/BARRENROCKYOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/BARREN/BARRENROCKYWEIRDOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/DEAD/DEADBIGPROPSOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/DEAD/DEADBIGPROPSOBJECTSVAR1.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/DEAD/DEADBIGPROPSOBJECTSVAR2.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/DEAD/DEADBIGPROPSOBJECTSVAR3.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/DEAD/DEADOBJECTSDEAD.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/HUGEPROPS/HUGERING/HUGERINGOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/HUGEPROPS/HUGEROCK/HUGEROCKOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/HUGEPROPS/HUGESCORCHED/HUGESCORCHOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/HUGEPROPS/HUGEUWPLANT/HUGEUWPLANTOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/LAVA/LAVAOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/OBJECTS/MOUNTAIN/MOUNTAINROCKS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/OBJECTS/MOUNTAIN/MOUNTAINROCKSCRUB.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/RADIOACTIVE/RADIOACTIVEALIENOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/RADIOACTIVE/RADIOACTIVEGLOWOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/RADIOACTIVE/RADIOACTIVEOBJECTSDEAD.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/RADIOACTIVE/RADIOACTIVEOBJECTSLOW.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/RADIOACTIVE/RADIOBIGPROPSOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/RADIOACTIVE/RADIOSPIKECRYSTALSOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/RADIOACTIVE/RADIOSPIKEPOTATOOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/SWAMP/SWAMPOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/TOXIC/TOXICBIGPROPSOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/TOXIC/TOXICEGGSMOONOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/TOXIC/TOXICEGGSOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/TOXIC/TOXICINFESTEDOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/TOXIC/TOXICOBJECTSDEAD.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/TOXIC/TOXICSPORESOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/TOXIC/TOXICTENTACLESOBJECTS.MBIN" />
        </Property>]]
						},
						{--Add the edited files
							["SPECIAL_KEY_WORDS"] = {"Name","MOUNTAIN"},
							["PRECEDING_KEY_WORDS"] = {"Options"},
							["ADD"] =
[[        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/OBJECTS/MOUNTAIN/LUSHINFESTEDOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/OBJECTS/MOUNTAIN/LUSHOBJECTSDEAD.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/OBJECTS/MOUNTAIN/LUSHOBJECTSLOW.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/OBJECTS/MOUNTAIN/LUSHOBJECTSMID.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/OBJECTS/MOUNTAIN/LUSHROCKYOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/OBJECTS/MOUNTAIN/LUSHROCKYWEIRDOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/OBJECTS/MOUNTAIN/LUSHROOMAOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/OBJECTS/MOUNTAIN/LUSHROOMBOBJECTS.MBIN" />
        </Property>]]
						},
					}
				}
			}
		},
	}
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE