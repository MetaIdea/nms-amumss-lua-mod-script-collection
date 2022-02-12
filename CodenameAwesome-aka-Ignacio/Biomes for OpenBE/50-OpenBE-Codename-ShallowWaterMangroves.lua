--DO NOT USE "REMOVE" TAGS WHEN COPYING FILES
--This script is intended for use with OpenBiomeExtender and will not work without it.
--Place the OpenBiomeExtender.pak into your ModScript folder when you run this script

NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_BATCHNAME"] 			= "zzOpenBiomeExtender-MergedModules.pak",
  ["MOD_FILENAME"] 			= "Error - You forgot to put OpenBE pak in ModScript.pak", --MOD_FILENAME will never be used if scripts are used properly (as batch patches)
  ["MOD_DESCRIPTION"]		= "Adds mangroves and dead trees to shallow water on Swamp worlds.",
  ["MOD_AUTHOR"]				= "CodenameAwesome",
  ["NMS_VERSION"]				= "",
  ["MODIFICATIONS"] 		= 
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{--Create new object lists
					["MBIN_FILE_SOURCE"] = {
						{"OPENBE/OBJECTFILES/VANILLA/DISTANTOBJECTS/SWAMP/SWAMPOBJECTSFULL.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/DISTANTOBJECTS/SWAMP/WATERMANGROVES.MBIN"},
					}
				},
				{--Fix the height values
					["MBIN_FILE_SOURCE"] = {"OPENBE/OBJECTFILES/CODENAMEAWESOME/DISTANTOBJECTS/SWAMP/WATERMANGROVES.MBIN"},
					["EXML_CHANGE_TABLE"] = {
						{
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] = {
								{"MinHeight",-10},
								{"MaxHeight",-1},
							}
						},
						{
							["REPLACE_TYPE"] = "ALL",
							["MATH_OPERATION"] = "*",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] = {
								{"FlatDensity",0.75},
								{"SlopeDensity",0.75},
							}
						}
					}
				},
				{--Add to the biome file
					["MBIN_FILE_SOURCE"] = {"OPENBE/BIOMEFILES/VANILLA/SWAMP/SWAMPBIOME.MBIN"},
					["EXML_CHANGE_TABLE"] = {
						{
							["PRECEDING_KEY_WORDS"] = {"ExternalObjectLists"},
							["ADD"] = [[    <Property value="GcExternalObjectListOptions.xml">
      <Property name="Name" value="SHALLOWWATEROBJECTS" />
      <Property name="ResourceHint" value="" />
      <Property name="ResourceHintIcon" value="" />
      <Property name="Probability" value="1" />
      <Property name="TileType" value="GcTerrainTileType.xml">
        <Property name="TileType" value="Underwater" />
      </Property>
      <Property name="AllowLimiting" value="False" />
      <Property name="ChooseUsingLifeLevel" value="False" />
      <Property name="Options">
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/DISTANTOBJECTS/SWAMP/WATERMANGROVES.MBIN" />
        </Property>
      </Property>
    </Property>]]
						}
					}
				}
			}
		},
	}
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE