-- Rare Spawn Rate Multipliers --
LandUrchins = "2"
MetalFormation  = "2"
RollingMould = "2"

-- File Settings --
FileName = "Rare Curiosity Spawn Rate 1.0.pak" -- can be changed to the name you want the mod but make sure to keep .pak at the end
ModAuthor = "JustRuthless" -- only for reference
LuaAuthor = "JustRuthless" -- only for reference
NMS_Version = "Leviathan 3.91" -- only for reference

-- File Sources --
FileSource1 = "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/RARE/METALFORMATION.MBIN"
FileSource2 = "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/RARE/PHYSICSPROPS.MBIN"
FileSource3 = "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/PLACEMENTVALUES/SPAWNDENSITYLIST.MBIN"

-- Added Code --
MetalFormationCode =
[[
    <Property value="GcSpawnDensity.xml">
      <Property name="Name" value="METALFORMATION" />
      <Property name="Active" value="True" />
      <Property name="CoverageType" value="GridPatch" />
      <Property name="PatchSize" value="650" />
      <Property name="RegionScale" value="0.1" />
    </Property>
]]

RollingMouldCode =
[[
    <Property value="GcSpawnDensity.xml">
      <Property name="Name" value="ROLLINGMOULD" />
      <Property name="Active" value="True" />
      <Property name="CoverageType" value="GridPatch" />
      <Property name="PatchSize" value="650" />
      <Property name="RegionScale" value="0.1" />
    </Property>
]]

NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_FILENAME"]  = FileName,
  ["MOD_AUTHOR"]    = ModAuthor,
  ["LUA_AUTHOR"]    = LuaAuthor,
  ["NMS_VERSION"]	  = NMS_Version,
  ["MODIFICATIONS"] =                     
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{
					["MBIN_FILE_SOURCE"]  = FileSource1,
					["EXML_CHANGE_TABLE"] = 
					{
						{
              ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
              ["SECTION_ACTIVE"] = 2,
							["VALUE_CHANGE_TABLE"] =
							{
								{"Placement", "METALFORMATION"},
							},
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"]  = FileSource2,
					["EXML_CHANGE_TABLE"] = 
					{
						{
              ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
              ["SECTION_ACTIVE"] = 2,
							["VALUE_CHANGE_TABLE"] =
							{
								{"Placement", "ROLLINGMOULD"},
							},	
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"]  = FileSource3,
					["EXML_CHANGE_TABLE"] = 
					{
						{
              ["SPECIAL_KEY_WORDS"] = {"Name", "RARE3"},
              ["ADD_OPTION"] = "ADDafterSECTION",
              ["ADD"] = MetalFormationCode,
						},
						{
              ["SPECIAL_KEY_WORDS"] = {"Name", "RARE3"},
              ["ADD_OPTION"] = "ADDafterSECTION",
              ["ADD"] = RollingMouldCode,
						},
						{
              ["SPECIAL_KEY_WORDS"] = {"Name", "METALFORMATION"},
              ["MATH_OPERATION"] = "/",
              ["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] =
							{
								{"PatchSize", MetalFormation},
							},
						},
						{
              ["SPECIAL_KEY_WORDS"] = {"Name", "ROLLINGMOULD"},
              ["MATH_OPERATION"] = "/",
              ["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] =
							{
								{"PatchSize", RollingMould},
							},
						},
						{
              ["SPECIAL_KEY_WORDS"] = {"Name", "RARE3"},
              ["MATH_OPERATION"] = "/",
              ["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] =
							{
								{"PatchSize", LandUrchins},
							},
						},
					}
				},
			}
		},
	}
}