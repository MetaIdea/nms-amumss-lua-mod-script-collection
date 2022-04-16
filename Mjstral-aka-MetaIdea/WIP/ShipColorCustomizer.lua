NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "ShipColorCustomizer.pak",
["MOD_AUTHOR"]				= "Quantus and script conversion by Mjjstral",
["NMS_VERSION"]				= "3.21+",
["MOD_DESCRIPTION"]			= "Enable the ship color customizer on landing pad terminals",
["MODIFICATIONS"] 			= 
	{
		{
			["PAK_FILE_SOURCE"] 	= "NMSARC.4C482859.pak",
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				-- {
					-- ["MBIN_FILE_SOURCE"] 	= 
					-- {
						-- "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\CHARCUSTOMISER\CHARCUSTOMISER\ENTITIES\SHIPCUSTOMISER.ENTITY.MBIN",
					-- },
					-- ["EXML_CHANGE_TABLE"] 	= 
					-- {
						-- {
							-- ["VALUE_MATCH"] 		= "CustomiseCharacter",
							-- ["VALUE_CHANGE_TABLE"] 	= 
							-- {
								-- {"InteractionType",	"CustomiseShip"}, --"CustomiseVehicle" "CustomiseWeapon"
							-- }
						-- }
					-- }
				-- },
				{
					["MBIN_FILE_SOURCE"] 	= {"METADATA\GAMESTATE\PLAYERDATA\CUSTOMISATIONCOLOURPALETTES.MBIN",},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["VALUE_MATCH"] 		= "Inactive",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"NumColours",	"All"},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ExtraData"},
							--["SPECIAL_KEY_WORDS"] 	= {"Ship_01", "GcCustomisationColourPaletteExtraData.xml"},
							["REPLACE_TYPE"] 		= "RAW",
							--["LINE_OFFSET"] 		= "+14",--"+3",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{[[      <Property name="TipText" />]],
[[
      <Property name="TipText">
        <Property value="NMSString0x20.xml">
          <Property name="Value" value="UI_PAINT_RED" />
        </Property>
        <Property value="NMSString0x20.xml">
          <Property name="Value" value="UI_PAINT_ORANGE" />
        </Property>
        <Property value="NMSString0x20.xml">
          <Property name="Value" value="UI_PAINT_YELLOW" />
        </Property>
        <Property value="NMSString0x20.xml">
          <Property name="Value" value="UI_PAINT_GREEN" />
        </Property>
        <Property value="NMSString0x20.xml">
          <Property name="Value" value="UI_PAINT_CYAN" />
        </Property>
        <Property value="NMSString0x20.xml">
          <Property name="Value" value="UI_PAINT_BLUE" />
        </Property>
        <Property value="NMSString0x20.xml">
          <Property name="Value" value="UI_PAINT_PURPLE" />
        </Property>
        <Property value="NMSString0x20.xml">
          <Property name="Value" value="UI_PAINT_PINK" />
        </Property>
        <Property value="NMSString0x20.xml">
          <Property name="Value" value="UI_PAINT_WHITE" />
        </Property>
        <Property value="NMSString0x20.xml">
          <Property name="Value" value="UI_PAINT_BLACK" />
        </Property>
        <Property value="NMSString0x20.xml">
          <Property name="Value" value="UI_PAINT_RED_DARK" />
        </Property>
        <Property value="NMSString0x20.xml">
          <Property name="Value" value="UI_PAINT_ORANGE_DARK" />
        </Property>
        <Property value="NMSString0x20.xml">
          <Property name="Value" value="UI_PAINT_YELLOW_DARK" />
        </Property>
        <Property value="NMSString0x20.xml">
          <Property name="Value" value="UI_PAINT_GREEN_DARK" />
        </Property>
        <Property value="NMSString0x20.xml">
          <Property name="Value" value="UI_PAINT_CYAN_DARK" />
        </Property>
        <Property value="NMSString0x20.xml">
          <Property name="Value" value="UI_PAINT_BLUE_DARK" />
        </Property>
        <Property value="NMSString0x20.xml">
          <Property name="Value" value="UI_PAINT_PURPLE_DARK" />
        </Property>
        <Property value="NMSString0x20.xml">
          <Property name="Value" value="UI_PAINT_PINK_DARK" />
        </Property>
        <Property value="NMSString0x20.xml">
          <Property name="Value" value="UI_PAINT_GREY" />
        </Property>
        <Property value="NMSString0x20.xml">
          <Property name="Value" value="UI_PAINT_BLACK_DARK" />
        </Property>
      </Property>
]]
								},
							}
						}
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						--[[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\TECH\LANDINGPAD.SCENE.MBIN]]
						[[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\TRADINGPOST\LANDINGPAD.SCENE.MBIN]],
					},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["REPLACE_TYPE"] 		= "RAW",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{
									[[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\ENTITIES\SUMMONSHIP.ENTITY.MBIN]],
									[[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\CHARCUSTOMISER\CHARCUSTOMISER\ENTITIES\SHIPCUSTOMISER.ENTITY.MBIN]]
								},
							}
						}
					}
				},
			}
		}		
	}
}

