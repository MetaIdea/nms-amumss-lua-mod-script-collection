SPACESTATION_SCENE = 
{	["NAME"] = "StationTypeB", 
	["SCENEGRAPH"] = "MODELS\SPACE\SPACESTATION\SPACESTATIONTYPEB.SCENE.MBIN"
}

VANILLA_SCENE = "MODELS\SPACE\SPACESTATION\SPACESTATION.SCENE.MBIN"

-- DEBUG FORCE REPLACE THE STATION
FORCE_REPLACE = true

-- TRANSFORM VALUES TO BE USED FOR NON-CUSTOM TRANSFORMS
DEFAULT_TRANSFORMS =
{
	["TransX"] = "0",
	["TransY"] = "0",
	["TransZ"] = "0",
	["RotX"] = "0",
	["RotY"] = "0",
	["RotZ"] = "0",
	["Scale"] = "1",
}

-- INDIVIDUAL DESCRIPTOR ENTRY
-- CHILD OF GetDescriptorChild
function GetDescriptorEntry(NAME, SCENE)
return [[
					<Property value="TkResourceDescriptorData.xml">
					  <Property name="Id" value="_]] .. string.upper(NAME) .. [[" />
					  <Property name="Name" value="_]] .. NAME .. [[" />
					  <Property name="ReferencePaths">
						<Property value="NMSString0x80.xml">
						  <Property name="Value" value="]] .. SCENE .. [[" />
						</Property>
					  </Property>
					  <Property name="Chance" value="0" />
					  <Property name="Children" />
					</Property>
]]
end

-- INDIVIDUAL PROC-GEN SCENE REFERENCE
-- CHILD OF GetSceneLocator
function GetSceneReference(NAME, SCENEGRAPH, TRANSFORM)
return [[
		<Property value="TkSceneNodeData.xml">
		  <Property name="Name" value="]] .. NAME .. [[" />
		  <Property name="NameHash" value="0" />
		  <Property name="Type" value="REFERENCE" />
		  <Property name="Transform" value="TkTransformData.xml">
			<Property name="TransX" value="]] .. TRANSFORM["TransX"] .. [[" />
			<Property name="TransY" value="]] .. TRANSFORM["TransY"] .. [[" />
			<Property name="TransZ" value="]] .. TRANSFORM["TransZ"] .. [[" />
			<Property name="RotX" value="]] .. TRANSFORM["RotX"] .. [[" />
			<Property name="RotY" value="]] .. TRANSFORM["RotY"] .. [[" />
			<Property name="RotZ" value="]] .. TRANSFORM["RotZ"] .. [[" />
			<Property name="ScaleX" value="]] .. TRANSFORM["Scale"] .. [[" />
			<Property name="ScaleY" value="]] .. TRANSFORM["Scale"] .. [[" />
			<Property name="ScaleZ" value="]] .. TRANSFORM["Scale"] .. [[" />
		  </Property>
		  <Property name="Attributes">
			<Property value="TkSceneNodeAttributeData.xml">
			  <Property name="Name" value="SCENEGRAPH" />
			  <Property name="AltID" value="" />
			  <Property name="Value" value="]] .. SCENEGRAPH .. [[" />
			</Property>
		  </Property>
		  <Property name="Children" />
		</Property>
]]
end

-- ASKS USER FOR TOTAL REPLACEMENT OF VANILLA BUILDING TYPES
-- DEFAULTS TO NO
TOTAL_REPLACEMENT =
{ 0,
[[Replace all vanilla Space Station models?
0 - No (default)
1 - Yes
]] }

PLAYER_DECISION = 0
if not FORCE_REPLACE then
	PLAYER_DECISION = GUIF(TOTAL_REPLACEMENT, 10)
else PLAYER_DECISION = 1
end
MBIN_CHANGE_TABLE_FINAL = {}

if PLAYER_DECISION == 1 then
	table.insert(MBIN_CHANGE_TABLE_FINAL,
	{
		["MBIN_FILE_SOURCE"] 	=
		{
			{
				SPACESTATION_SCENE["SCENEGRAPH"],
				VANILLA_SCENE
			}
		},
		["MBIN_FS_DISCARD"]	= "TRUE"
	})
	table.insert(MBIN_CHANGE_TABLE_FINAL,
	{
		["MBIN_FILE_SOURCE"] 	=
		{
			{
				SPACESTATION_SCENE["SCENEGRAPH"]:gsub(".SCENE.", ".DESCRIPTOR."),
				VANILLA_SCENE:gsub(".SCENE.", ".DESCRIPTOR.")
			}
		},
		["MBIN_FS_DISCARD"]	= "TRUE"
	})
else
	table.insert(MBIN_CHANGE_TABLE_FINAL,
	{
		["MBIN_FILE_SOURCE"] 	= VANILLA_SCENE,
		["EXML_CHANGE_TABLE"]	=
		{ 
			{
				["PRECEDING_KEY_WORDS"] = {"Children"},
				["ADD"] = GetSceneReference("_" .. SPACESTATION_SCENE["NAME"], SPACESTATION_SCENE["SCENEGRAPH"], DEFAULT_TRANSFORMS)
			}
		}
	})
	table.insert(MBIN_CHANGE_TABLE_FINAL,
	{
		["MBIN_FILE_SOURCE"] 	= VANILLA_SCENE:gsub(".SCENE.", ".DESCRIPTOR."),
		["EXML_CHANGE_TABLE"]	=
		{ 
			{
				["PRECEDING_KEY_WORDS"] = {"Descriptors"},
				["ADD"] = GetDescriptorEntry(SPACESTATION_SCENE["NAME"], SPACESTATION_SCENE["SCENEGRAPH"])
			}
		}
	})
end

table.insert(MBIN_CHANGE_TABLE_FINAL,
{
	["MBIN_FILE_SOURCE"] 	=
	{
		"TEXTURES\SPACE\SPACESTATION\TYPEB\LARGETILING1ALT.TEXTURE.MBIN",
		"TEXTURES\SPACE\SPACESTATION\TYPEB\LARGETILING1.TEXTURE.MBIN",
	},
	["EXML_CHANGE_TABLE"]	=
	{ 
		{
			["PRECEDING_KEY_WORDS"] = {"TkProceduralTexture.xml"},
			-- ["SPECIAL_KEY_WORDS"] = {"Palette", "TkPaletteTexture.xml"},
			-- ["PRECEDING_FIRST"] = "TRUE",
			["WISUBSEC_LOP"] = "AND",
			["INTEGER_TO_FLOAT"]	= "FORCE",
			["WHERE_IN_SUBSECTION"] =
			{
				{"Palette", "58"},
				{"ColourAlt", "Primary"},
			},
			["REPLACE_TYPE"] = "ALL",
			["VALUE_CHANGE_TABLE"] 	= 
			{
				{"Palette", "Paint"},
				{"ColourAlt", "Alternative1"},
			}
		},
		{
			["PRECEDING_KEY_WORDS"] = {"TkProceduralTexture.xml"},
			-- ["SPECIAL_KEY_WORDS"] = {"Palette", "TkPaletteTexture.xml"},
			-- ["PRECEDING_FIRST"] = "TRUE",
			["WISUBSEC_LOP"] = "AND",
			["INTEGER_TO_FLOAT"]	= "FORCE",
			["WHERE_IN_SUBSECTION"] =
			{
				{"Palette", "58"},
				{"ColourAlt", "Alternative1"},
			},
			["REPLACE_TYPE"] = "ALL",
			["VALUE_CHANGE_TABLE"] 	= 
			{
				{"Palette", "Paint"},
				{"ColourAlt", "Alternative2"},
			}
		},
		{
			["PRECEDING_KEY_WORDS"] = {"TkProceduralTexture.xml"},
			-- ["SPECIAL_KEY_WORDS"] = {"Palette", "TkPaletteTexture.xml"},
			-- ["PRECEDING_FIRST"] = "TRUE",
			["WISUBSEC_LOP"] = "AND",
			["INTEGER_TO_FLOAT"]	= "FORCE",
			["WHERE_IN_SUBSECTION"] =
			{
				{"Palette", "59"},
				{"ColourAlt", "Primary"},
			},
			["REPLACE_TYPE"] = "ALL",
			["VALUE_CHANGE_TABLE"] 	= 
			{
				{"Palette", "Paint"},
				-- {"ColourAlt", "Primary"},
			}
		},
		{
			["PRECEDING_KEY_WORDS"] = {"TkProceduralTexture.xml"},
			-- ["SPECIAL_KEY_WORDS"] = {"Palette", "TkPaletteTexture.xml"},
			-- ["PRECEDING_FIRST"] = "TRUE",
			["WISUBSEC_LOP"] = "AND",
			["INTEGER_TO_FLOAT"]	= "FORCE",
			["WHERE_IN_SUBSECTION"] =
			{
				{"Palette", "59"},
				{"ColourAlt", "Alternative1"},
			},
			["REPLACE_TYPE"] = "ALL",
			["VALUE_CHANGE_TABLE"] 	= 
			{
				{"Palette", "Paint"},
				{"ColourAlt", "Alternative3"},
			}
		},
		{
			["PRECEDING_KEY_WORDS"] = {"TkProceduralTexture.xml"},
			-- ["SPECIAL_KEY_WORDS"] = {"Palette", "TkPaletteTexture.xml"},
			-- ["PRECEDING_FIRST"] = "TRUE",
			["WISUBSEC_LOP"] = "AND",
			["INTEGER_TO_FLOAT"]	= "FORCE",
			["WHERE_IN_SUBSECTION"] =
			{
				{"Palette", "59"},
				{"ColourAlt", "Alternative2"},
			},
			["REPLACE_TYPE"] = "ALL",
			["VALUE_CHANGE_TABLE"] 	= 
			{
				{"Palette", "Paint"},
				{"ColourAlt", "Alternative4"},
			}
		},
	}
})


NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "_TypeBSpaceStation.pak",
["MOD_AUTHOR"]				= "WinderTP",
["MOD_DESCRIPTION"]			= "",
["NMS_VERSION"]				= "4.08+",
-- ["ADD_FILES"] = ADD_FILES_FINAL,
["MODIFICATIONS"] = 
	{
		{
			["MBIN_CHANGE_TABLE"] = MBIN_CHANGE_TABLE_FINAL
		}
	}	
}