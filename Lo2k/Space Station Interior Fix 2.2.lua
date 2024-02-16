NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"] = "Space Station Interior Fix 2.2.pak",
["MOD_AUTHOR"]= "Lo2k",
["NMS_VERSION"]= "4.50",
["MOD_DESCRIPTION"]= "Always displays full Space Station interior correctly",
["MODIFICATIONS"] =
	{
		{
		["MBIN_CHANGE_TABLE"] =
			{
				{
				["MBIN_FILE_SOURCE"] = "MODELS\SPACE\SPACESTATION\MODULARPARTS\DOCK\BACK_SECTION\ENTITIES\LEFTSECTIONTRIGGER.ENTITY.MBIN",
				["EXML_CHANGE_TABLE"] =
					{
						{
						["SPECIAL_KEY_WORDS"] = {"StateID", "LEFTOFF"},
						["REMOVE"] = "SECTION",
						},
						{
						["SPECIAL_KEY_WORDS"] = {"RequirePlayerAction", "None"},
						["SECTION_UP"] = 1,
						["REMOVE"] = "SECTION",
						}
					}
				},
				{
				["MBIN_FILE_SOURCE"] = "MODELS\SPACE\SPACESTATION\MODULARPARTS\DOCK\BACK_SECTION\ENTITIES\RIGHTSECTIONTRIGGER.ENTITY.MBIN",
				["EXML_CHANGE_TABLE"] =
					{
						{
						["SPECIAL_KEY_WORDS"] = {"StateID", "RIGHTOFF"},
						["REMOVE"] = "SECTION",
						},
						{
						["SPECIAL_KEY_WORDS"] = {"RequirePlayerAction", "None"},
						["SECTION_UP"] = 1,
						["REMOVE"] = "SECTION",
						}
					}
				},
				{
				["MBIN_FILE_SOURCE"] = "MODELS\SPACE\SPACESTATION\MODULARPARTS\DOCK\BACK_SECTION\ENTITIES\SHOP_LIGHTTRIGGER.ENTITY.MBIN",
				["EXML_CHANGE_TABLE"] =
					{
						{
						["REPLACE_TYPE"] = "ALL",
						["VALUE_CHANGE_TABLE"] = {{"Distance", "50"}},
						},
					}
				},
				{  --4.50 fix
				["MBIN_FILE_SOURCE"] = 
					{
					"MODELS\SPACE\SPACESTATION\MODULARPARTS\DOCK\SHOPS\GUILDSHOP.SCENE.MBIN",
					}, 
				["EXML_CHANGE_TABLE"] =
					{
						{
						["SPECIAL_KEY_WORDS"] = {"Value", "MODELS\SPACE\SPACESTATION\MODULARPARTS\DOCK\SHOPS\GUILDSHOP.GEOMETRY.MBIN"},
						["LINE_OFFSET"] = "+2",
						["REPLACE_TYPE"] = "",
						["ADD"] = [[      <Property name="Name" value="LODDIST1" />
      <Property name="AltID" value="" />
      <Property name="Value" value="50.000000" />
    </Property>
    <Property value="TkSceneNodeAttributeData.xml">
      <Property name="Name" value="LODDIST2" />
      <Property name="AltID" value="" />
      <Property name="Value" value="100.000000" />
    </Property>
    <Property value="TkSceneNodeAttributeData.xml">
      <Property name="Name" value="LODDIST3" />
      <Property name="AltID" value="" />
      <Property name="Value" value="200.000000" />
    </Property>
    <Property value="TkSceneNodeAttributeData.xml">
]],
						}
					}
				},
				{  --4.50 fix
				["MBIN_FILE_SOURCE"] = 
					{
					"MODELS\SPACE\SPACESTATION\MODULARPARTS\DOCK\SHOPS\GUILDSHOP.SCENE.MBIN",
					}, 
				["EXML_CHANGE_TABLE"] =
					{
						{
						["SPECIAL_KEY_WORDS"] = {"Name","NUMLODS"},
						["VALUE_CHANGE_TABLE"] = {{"Value", "4"}},
						},
						{
						["SPECIAL_KEY_WORDS"] = {"Name", "ShopLOD1", "Name", "LODLEVEL"},
						["VALUE_CHANGE_TABLE"] = {{"Value", "1"}},
						},
						{
						["SPECIAL_KEY_WORDS"] = {"Name", "ShopLOD2", "Name", "LODLEVEL"},
						["VALUE_CHANGE_TABLE"] = {{"Value", "2"}},
						},
						{
						["SPECIAL_KEY_WORDS"] = {"Name", "ShopLOD3", "Name", "LODLEVEL"},
						["VALUE_CHANGE_TABLE"] = {{"Value", "3"}},
						},
					}
				},
				{
				["MBIN_FILE_SOURCE"] = 
					{
					--"MODELS\SPACE\SPACESTATION\MODULARPARTS\DOCK\SHOPS\GUILDSHOP.SCENE.MBIN",
					"MODELS\SPACE\SPACESTATION\MODULARPARTS\DOCK\SHOPS\MISSIONSHOP.SCENE.MBIN",
					"MODELS\SPACE\SPACESTATION\MODULARPARTS\DOCK\SHOPS\SCRAPDEALERSHOP.SCENE.MBIN",
					"MODELS\SPACE\SPACESTATION\MODULARPARTS\DOCK\SHOPS\SHIPSHOP.SCENE.MBIN",
					"MODELS\SPACE\SPACESTATION\MODULARPARTS\DOCK\SHOPS\SUITSHOP.SCENE.MBIN",
					"MODELS\SPACE\SPACESTATION\MODULARPARTS\DOCK\SHOPS\VEHICLESHOP.SCENE.MBIN",
					"MODELS\SPACE\SPACESTATION\MODULARPARTS\DOCK\SHOPS\WEAPONSHOP.SCENE.MBIN",
					}, 
				["EXML_CHANGE_TABLE"] =
					{
						{
						["SPECIAL_KEY_WORDS"] = {"Name","LODDIST1",},
						["VALUE_CHANGE_TABLE"] = {{"Value", "50"}},
						},
						{
						["SPECIAL_KEY_WORDS"] = {"Name","LODDIST2",},
						["VALUE_CHANGE_TABLE"] = {{"Value", "100"}},
						},
						{
						["SPECIAL_KEY_WORDS"] = {"Name","LODDIST3",},
						["VALUE_CHANGE_TABLE"] = {{"Value", "200"}},
						}
					}
				},
				
				{
				["MBIN_FILE_SOURCE"] = {"MODELS\SPACE\SPACESTATION\MODULARPARTS\DOCK\SHOPS\MAPSHOP.SCENE.MBIN",}, 
				["EXML_CHANGE_TABLE"] =
					{
						{
						["SPECIAL_KEY_WORDS"] = {"Name","LODDIST1",},
						["VALUE_CHANGE_TABLE"] = {{"Value", "50"}},
						},
						{
						["SPECIAL_KEY_WORDS"] = {"Name","LODDIST2",},
						["VALUE_CHANGE_TABLE"] = {{"Value", "100"},}
						},  -- LODDIST3 forgotten by HG
					}
				},
			}
		}
	}
}