
NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "Colorful Substance Labels 1.1.pak", 
["MOD_AUTHOR"]				= "Lo2k",
["LUA_AUTHOR"]				= "Lo2k",
["NMS_VERSION"]				= "4.0",
["MOD_DESCRIPTION"]			= "This mod improves world substance label colors",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{    
                {
                    ["MBIN_FILE_SOURCE"]  = {"METADATA\REALITY\DEFAULTREALITY.MBIN"},
					["EXML_CHANGE_TABLE"] = 
                    {
					--[[	{
							["PRECEDING_KEY_WORDS"] = {"SubstanceCategoryColours", "Fuel"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"R",	"0.14"},
								{"G",	"0.14"}, 
								{"B",	"0.14"},
							}	
						},  --]]
						{
							["PRECEDING_KEY_WORDS"] = {"SubstanceCategoryColours", "Metal"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"R",	"0.5"},
								{"G",	"0.5"}, 
								{"B",	"0.6"},
							}	
						},
						{
							["PRECEDING_KEY_WORDS"] = {"SubstanceCategoryColours", "Catalyst"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"R",	"1.0"},
								{"G",	"0.8"}, 
								{"B",	"0.0"},
							}	
						},
						{
							["PRECEDING_KEY_WORDS"] = {"SubstanceCategoryColours", "Stellar"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"R",	"1.0"},
								{"G",	"0.55"}, 
								{"B",	"0.1"},
							}	
						},
						{
							["PRECEDING_KEY_WORDS"] = {"SubstanceCategoryColours", "Flora"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"R",	"0.35"},
								{"G",	"0.7"}, 
								{"B",	"0.35"},
							}	
						},
						{
							["PRECEDING_KEY_WORDS"] = {"SubstanceCategoryColours", "Earth"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"R",	"0.5"},
								{"G",	"0.75"}, 
								{"B",	"1.0"},
							}	
						},
						{
							["PRECEDING_KEY_WORDS"] = {"SubstanceCategoryColours", "Exotic"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"R",	"0.225"},
								{"G",	"0.487"}, 
								{"B",	"1.0"},
							}	
						},
						{
							["PRECEDING_KEY_WORDS"] = {"SubstanceCategoryColours", "Special"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"R",	"0.6"},
								{"G",	"0.3"}, 
								{"B",	"0.8"},
							}	
						},
						{
							["PRECEDING_KEY_WORDS"] = {"SubstanceCategoryColours", "BuildingPart"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"R",	"0.8"},
								{"G",	"0.6"}, 
								{"B",	"0.3"},
							}	
						},
                    },
                },			
			}
		}
	}	
}

--[[  --original values
<Property name="Fuel" value="Colour.xml">
      <Property name="R" value="0.884" />
      <Property name="G" value="0.139" />
      <Property name="B" value="0.093" />
      <Property name="A" value="1" />
    </Property>
    <Property name="Metal" value="Colour.xml">
      <Property name="R" value="0.683" />
      <Property name="G" value="0.654" />
      <Property name="B" value="0.654" />
      <Property name="A" value="1" />
    </Property>
    <Property name="Catalyst" value="Colour.xml">
      <Property name="R" value="1" />
      <Property name="G" value="0.823" />
      <Property name="B" value="0.366" />
      <Property name="A" value="1" />
    </Property>
    <Property name="Stellar" value="Colour.xml">
      <Property name="R" value="0.847" />
      <Property name="G" value="0.713" />
      <Property name="B" value="0.331" />
      <Property name="A" value="1" />
    </Property>
    <Property name="Flora" value="Colour.xml">
      <Property name="R" value="0.404" />
      <Property name="G" value="0.961" />
      <Property name="B" value="0.404" />
      <Property name="A" value="1" />
    </Property>
    <Property name="Earth" value="Colour.xml">
      <Property name="R" value="0.663" />
      <Property name="G" value="0.766" />
      <Property name="B" value="0.897" />
      <Property name="A" value="1" />
    </Property>
    <Property name="Exotic" value="Colour.xml">
      <Property name="R" value="1" />
      <Property name="G" value="0.628" />
      <Property name="B" value="0.38" />
      <Property name="A" value="1" />
    </Property>
    <Property name="Special" value="Colour.xml">
      <Property name="R" value="0.726" />
      <Property name="G" value="0.56" />
      <Property name="B" value="0.847" />
      <Property name="A" value="1" />
    </Property>
    <Property name="BuildingPart" value="Colour.xml">
      <Property name="R" value="0.225" />
      <Property name="G" value="0.487" />
      <Property name="B" value="1" />
      <Property name="A" value="0.9" />
    </Property>
--]]