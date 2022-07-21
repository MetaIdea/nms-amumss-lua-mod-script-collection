NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"]  = "BuildMenuRedo.pak", 
["MOD_AUTHOR"]    = "WinderTP and Babscoole",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "3.82",
["MODIFICATIONS"] = 
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{
					["MBIN_FILE_SOURCE"]  = "METADATA\REALITY\TABLES\BASEBUILDINGOBJECTSTABLE.MBIN",
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["PRECEDING_KEY_WORDS"] = {"GcBaseBuildingEntry.xml", "GcBaseBuildingEntryGroup.xml"},
							["REPLACE_TYPE"] = "ALL",
						 	["VALUE_MATCH"] = "PLANET_TECH",
							["VALUE_CHANGE_TABLE"]     = 
								{
									{"Group", "TECHNOLOGY"},
								}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"GcBaseBuildingEntry.xml", "GcBaseBuildingEntryGroup.xml"},
							["REPLACE_TYPE"] = "ALL",
						 	["VALUE_MATCH"] = "FREIGHTER",
							["VALUE_CHANGE_TABLE"]     = 
								{
									{"Group", "TECHNOLOGY"},
								}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"GcBaseBuildingEntry.xml", "GcBaseBuildingEntryGroup.xml"},
							["REPLACE_TYPE"] = "ALL",
						 	["VALUE_MATCH"] = "BASE_TECH",
							["VALUE_CHANGE_TABLE"]     = 
								{
									{"Group", "TECHNOLOGY"},
								}
						},						
						{
							["PRECEDING_KEY_WORDS"] = {"GcBaseBuildingEntry.xml", "GcBaseBuildingEntryGroup.xml"},
							["REPLACE_TYPE"] = "ALL",
						 	["VALUE_MATCH"] = "POWER",
							["VALUE_CHANGE_TABLE"]     = 
								{
									{"Group", "TECHNOLOGY"},
								}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"GcBaseBuildingEntry.xml", "GcBaseBuildingEntryGroup.xml"},
							["REPLACE_TYPE"] = "ALL",
						 	["VALUE_MATCH"] = "ROOMS",
							["VALUE_CHANGE_TABLE"]     = 
								{
									{"Group", "STRUCTURES"},
								}
						},						
						{
							["PRECEDING_KEY_WORDS"] = {"GcBaseBuildingEntry.xml", "GcBaseBuildingEntryGroup.xml"},
							["REPLACE_TYPE"] = "ALL",
						 	["VALUE_MATCH"] = "BASIC_T",
							["VALUE_CHANGE_TABLE"]     = 
								{
									{"Group", "STRUCTURES"},
								}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"GcBaseBuildingEntry.xml", "GcBaseBuildingEntryGroup.xml"},
							["REPLACE_TYPE"] = "ALL",
						 	["VALUE_MATCH"] = "BASIC_S",
							["VALUE_CHANGE_TABLE"]     = 
								{
									{"Group", "STRUCTURES"},
								}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"GcBaseBuildingEntry.xml", "GcBaseBuildingEntryGroup.xml"},
							["REPLACE_TYPE"] = "ALL",
						 	["VALUE_MATCH"] = "BASIC_F",
							["VALUE_CHANGE_TABLE"]     = 
								{
									{"Group", "STRUCTURES"},
								}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"GcBaseBuildingEntry.xml", "GcBaseBuildingEntryGroup.xml"},
							["REPLACE_TYPE"] = "ALL",
						 	["VALUE_MATCH"] = "BASIC_LEGACY",
							["VALUE_CHANGE_TABLE"]     = 
								{
									{"Group", "STRUCTURES"},
								}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"GcBaseBuildingEntry.xml", "GcBaseBuildingEntryGroup.xml"},
							["REPLACE_TYPE"] = "ALL",
						 	["VALUE_MATCH"] = "EXOTICS",
							["VALUE_CHANGE_TABLE"]     = 
								{
									{"Group", "DECORATIONS"},
								}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects", "GcBaseBuildingEntry.xml", "GcBaseBuildingEntryGroup.xml"},
							["REPLACE_TYPE"] = "ALL",
						 	["VALUE_MATCH"] = "WALL_ART",
							["VALUE_CHANGE_TABLE"]     = 
								{
									{"Group", "DECORATIONS"},
								}
						},						
						{
                            ["SPECIAL_KEY_WORDS"] = {"ID","PLANET_TECH",},					
							["SECTION_UP"] = 1,
							["REMOVE"] = "SECTION"
						},
						{
                            ["PRECEDING_KEY_WORDS"] = {"Palettes",},					
							["LINE_OFFSET"] = -1,
							["ADD"] = 
[[
  <Property name="Groups">
    <Property value="GcBaseBuildingGroup.xml">
      <Property name="ID" value="TECHNOLOGY" />
      <Property name="Name" value="TECHNOLOGY" />
      <Property name="Icon" value="TkTextureResource.xml">
        <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/BUILDABLE/TABS/BUILDTAB_TECH.DDS" />
      </Property>
      <Property name="DefaultColourIdx" value="0" />
      <Property name="SubGroups">
        <Property value="GcBaseBuildingSubGroup.xml">
          <Property name="Id" value="PLANETPORTABLE" />
          <Property name="Name" value="UI_BUILD_GRID_PORTABLE" />
        </Property>
        <Property value="GcBaseBuildingSubGroup.xml">
          <Property name="Id" value="PLANETEXOCRAFT" />
          <Property name="Name" value="UI_BUILD_GRID_EXOCRAFT" />
        </Property>
        <Property value="GcBaseBuildingSubGroup.xml">
          <Property name="Id" value="PLANETFIREWORKS" />
          <Property name="Name" value="UI_BUILD_GRID_FIREWORKS" />
        </Property>
        <Property value="GcBaseBuildingSubGroup.xml">
          <Property name="Id" value="FREIGHTERROOMS" />
          <Property name="Name" value="UI_BUILD_GRID_FREIGHTER_ROOMS" />
        </Property>
        <Property value="GcBaseBuildingSubGroup.xml">
          <Property name="Id" value="FREIGHTERTECH" />
          <Property name="Name" value="UI_BUILD_GRID_FREIGHTER_TECH" />
        </Property>
        <Property value="GcBaseBuildingSubGroup.xml">
          <Property name="Id" value="TECHTECH" />
          <Property name="Name" value="UI_BUILD_GRID_TECH" />
        </Property>
        <Property value="GcBaseBuildingSubGroup.xml">
          <Property name="Id" value="TECHFARMING" />
          <Property name="Name" value="UI_BUILD_GRID_FARMING" />
        </Property>
        <Property value="GcBaseBuildingSubGroup.xml">
          <Property name="Id" value="TECHSTORAGE" />
          <Property name="Name" value="UI_BUILD_GRID_STORAGE" />
        </Property>
        <Property value="GcBaseBuildingSubGroup.xml">
          <Property name="Id" value="TECHTEMINALS" />
          <Property name="Name" value="UI_BUILD_GRID_TERMINALS" />
        </Property>
        <Property value="GcBaseBuildingSubGroup.xml">
          <Property name="Id" value="POWERPOWER" />
          <Property name="Name" value="UI_BUILD_GRID_POWER" />
        </Property>
        <Property value="GcBaseBuildingSubGroup.xml">
          <Property name="Id" value="POWERINDUSTRY" />
          <Property name="Name" value="UI_BUILD_GRID_INDUSTRY" />
        </Property>
        <Property value="GcBaseBuildingSubGroup.xml">
          <Property name="Id" value="POWERSWITCHES" />
          <Property name="Name" value="UI_BUILD_GRID_SWITCHES" />
        </Property>
      </Property>
    </Property>    
    <Property value="GcBaseBuildingGroup.xml">
      <Property name="ID" value="STRUCTURES" />
      <Property name="Name" value="STRUCTURES" />
      <Property name="Icon" value="TkTextureResource.xml">
        <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/BUILDABLE/TABS/BUILDTAB_STRUCTURES.DDS" />
      </Property>
      <Property name="DefaultColourIdx" value="0" />
      <Property name="SubGroups">
        <Property value="GcBaseBuildingSubGroup.xml">
          <Property name="Id" value="ROOMSMAIN" />
          <Property name="Name" value="UI_BUILD_GRID_MAINROOMS" />
        </Property>
        <Property value="GcBaseBuildingSubGroup.xml">
          <Property name="Id" value="ROOMSCORRIDORS" />
          <Property name="Name" value="UI_BUILD_GRID_CORRIDORS" />
        </Property>
        <Property value="GcBaseBuildingSubGroup.xml">
          <Property name="Id" value="ROOMSDOORS" />
          <Property name="Name" value="UI_BUILD_GRID_DOORS" />
        </Property>
        <Property value="GcBaseBuildingSubGroup.xml">
          <Property name="Id" value="ROOMSCUBE" />
          <Property name="Name" value="UI_BUILD_GRID_CUBEROOMS" />
        </Property>
        <Property value="GcBaseBuildingSubGroup.xml">
          <Property name="Id" value="T_FLOORS" />
          <Property name="Name" value="UI_BUILD_GRID_FLOORS" />
        </Property>
        <Property value="GcBaseBuildingSubGroup.xml">
          <Property name="Id" value="T_WALLS" />
          <Property name="Name" value="UI_BUILD_GRID_WALLS" />
        </Property>
        <Property value="GcBaseBuildingSubGroup.xml">
          <Property name="Id" value="T_ROOFS" />
          <Property name="Name" value="UI_BUILD_GRID_ROOFS" />
        </Property>
        <Property value="GcBaseBuildingSubGroup.xml">
          <Property name="Id" value="S_FLOORS" />
          <Property name="Name" value="UI_BUILD_GRID_FLOORS" />
        </Property>
        <Property value="GcBaseBuildingSubGroup.xml">
          <Property name="Id" value="S_WALLS" />
          <Property name="Name" value="UI_BUILD_GRID_WALLS" />
        </Property>
        <Property value="GcBaseBuildingSubGroup.xml">
          <Property name="Id" value="S_ROOFS" />
          <Property name="Name" value="UI_BUILD_GRID_ROOFS" />
        </Property>
        <Property value="GcBaseBuildingSubGroup.xml">
          <Property name="Id" value="F_FLOORS" />
          <Property name="Name" value="UI_BUILD_GRID_FLOORS" />
        </Property>
        <Property value="GcBaseBuildingSubGroup.xml">
          <Property name="Id" value="F_WALLS" />
          <Property name="Name" value="UI_BUILD_GRID_WALLS" />
        </Property>
        <Property value="GcBaseBuildingSubGroup.xml">
          <Property name="Id" value="F_ROOFS" />
          <Property name="Name" value="UI_BUILD_GRID_ROOFS" />
        </Property>
        <Property value="GcBaseBuildingSubGroup.xml">
          <Property name="Id" value="BASICWOOD" />
          <Property name="Name" value="UI_BUILD_GRID_WOOD" />
        </Property>
        <Property value="GcBaseBuildingSubGroup.xml">
          <Property name="Id" value="BASICCONCRETE" />
          <Property name="Name" value="UI_BUILD_GRID_CONCRETE" />
        </Property>
        <Property value="GcBaseBuildingSubGroup.xml">
          <Property name="Id" value="BASICMETAL" />
          <Property name="Name" value="UI_BUILD_GRID_METAL" />
        </Property>
      </Property>
    </Property>
    <Property value="GcBaseBuildingGroup.xml">
      <Property name="ID" value="DECORATION" />
      <Property name="Name" value="UI_BUILD_GRID_DECOR" />
      <Property name="Icon" value="TkTextureResource.xml">
        <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/BUILDABLE/TABS/BUILDTAB_DECORATION.DDS" />
      </Property>
      <Property name="DefaultColourIdx" value="0" />
      <Property name="SubGroups">
        <Property value="GcBaseBuildingSubGroup.xml">
          <Property name="Id" value="DECOLIGHTS" />
          <Property name="Name" value="UI_BUILD_GRID_LIGHTS" />
        </Property>
        <Property value="GcBaseBuildingSubGroup.xml">
          <Property name="Id" value="DECOEXTERIOR" />
          <Property name="Name" value="UI_BUILD_GRID_EXTERIOR" />
        </Property>
        <Property value="GcBaseBuildingSubGroup.xml">
          <Property name="Id" value="DECOCONSTRUCT" />
          <Property name="Name" value="UI_BUILD_GRID_CONSTRUCTION" />
        </Property>
        <Property value="GcBaseBuildingSubGroup.xml">
          <Property name="Id" value="DECOFOLIAGE" />
          <Property name="Name" value="UI_BUILD_GRID_FOLIAGE" />
        </Property>
        <Property value="GcBaseBuildingSubGroup.xml">
          <Property name="Id" value="DECOSTATUES" />
          <Property name="Name" value="UI_BUILD_GRID_STATUES" />
        </Property>
        <Property value="GcBaseBuildingSubGroup.xml">
          <Property name="Id" value="DECOGLITCHES" />
          <Property name="Name" value="UI_BUILD_GRID_GLITCHES" />
        </Property>
        <Property value="GcBaseBuildingSubGroup.xml">
          <Property name="Id" value="WALLDECALS" />
          <Property name="Name" value="UI_BUILD_GRID_DECALS" />
        </Property>
        <Property value="GcBaseBuildingSubGroup.xml">
          <Property name="Id" value="WALLPOSTERS" />
          <Property name="Name" value="UI_BUILD_GRID_POSTERS" />
        </Property>
      </Property>
    </Property>
    <Property value="GcBaseBuildingGroup.xml">
      <Property name="ID" value="FURNITURE" />
      <Property name="Name" value="UI_BUILD_GRID_FURNITURE_TITLE" />
      <Property name="Icon" value="TkTextureResource.xml">
        <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/BUILDABLE/TABS/BUILDTAB_FURNITURE.DDS" />
      </Property>
      <Property name="DefaultColourIdx" value="0" />
      <Property name="SubGroups">
        <Property value="GcBaseBuildingSubGroup.xml">
          <Property name="Id" value="FURNINTERIOR" />
          <Property name="Name" value="UI_BUILD_GRID_INTERIOR" />
        </Property>
        <Property value="GcBaseBuildingSubGroup.xml">
          <Property name="Id" value="FURNDECOR" />
          <Property name="Name" value="UI_BUILD_GRID_TECH_DECOR" />
        </Property>
        <Property value="GcBaseBuildingSubGroup.xml">
          <Property name="Id" value="FURNDERELICTS" />
          <Property name="Name" value="UI_BUILD_GRID_DERELICTS" />
        </Property>
      </Property>
    </Property>
    <Property value="GcBaseBuildingGroup.xml">
      <Property name="ID" value="MOD" />
      <Property name="Name" value="UI_BUILD_PATH_MOD" />
      <Property name="Icon" value="TkTextureResource.xml">
        <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/STAR.DDS" />
      </Property>
      <Property name="DefaultColourIdx" value="0" />
      <Property name="SubGroups">
        <Property value="GcBaseBuildingSubGroup.xml">
          <Property name="Id" value="MODGROUP0" />
          <Property name="Name" value="SubGroup0" />
        </Property>
      </Property>
    </Property>
  </Property>
]]							
						},						
					}
				},
			}
		}
	}
}