--This script will generate new base build menu groups with subgroups
-- The end result will look like this:
  
    -- <Property value="GcBaseBuildingGroup.xml">
      -- <Property name="ID" value="UBB-NATURE-I" />
      -- <Property name="Name" value="UBB-NATURE-I" />
      -- <Property name="Icon" value="TkTextureResource.xml">
        -- <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/SPECIALSHOP/SPECIAL.TWITCH.PET04.DDS" />
        -- <Property name="ResHandle" value="GcResource.xml">
          -- <Property name="ResourceID" value="0" />
        -- </Property>
      -- </Property>
      -- <Property name="DefaultColourIdx" value="0" />
      -- <Property name="SubGroups">
        -- <Property value="GcBaseBuildingSubGroup.xml">
          -- <Property name="Id" value="CREATURES" />
          -- <Property name="Name" value="CREATURES" />
        -- </Property>
        -- <Property value="GcBaseBuildingSubGroup.xml">
          -- <Property name="Id" value="NPC" />
          -- <Property name="Name" value="NPC" />
        -- </Property>
        -- <Property value="GcBaseBuildingSubGroup.xml">
          -- <Property name="Id" value="SEASTUFF" />
          -- <Property name="Name" value="SEASTUFF" />
        -- </Property>
        -- <Property value="GcBaseBuildingSubGroup.xml">
          -- <Property name="Id" value="VEGETATION" />
          -- <Property name="Name" value="VEGETATION" />
        -- </Property>
      -- </Property>
    -- </Property>
    -- ...
    

GroupTable =  --Table defining the new groups and the subgroups which will be within
{
    {
        {"UBB-NATURE-I", "TEXTURES/UI/FRONTEND/ICONS/SPECIALSHOP/SPECIAL.TWITCH.PET04.DDS"}, --Group and icon for the Group
        {
            {"CREATURES"},  --SubGroup
            {"NPC"},
            {"SEASTUFF"},
            {"VEGETATION"},
        },
    },
    {
        {"UBB-NATURE-II", "TEXTURES/UI/FRONTEND/ICONS/UPDATE1/PRODUCT.NIPBUD.DDS"},
        {
            {"PLANTS-I"},
            {"PLANTS-II"},
            {"PLANTS-III"},
        }
    },
    {
        {"UBB-NATURE-III", "TEXTURES/UI/FRONTEND/ICONS/UPDATE1/PRODUCT.TOXICPLANT.DDS"},
        {
            {"MINERALS-I"},
            {"MINERALS-II"},
            {"TREES-I"},
            {"TREES-II"},
        }
    },
    {
        {"UBB-OTHER-I", "TEXTURES/UI/FRONTEND/ICONS/SPECIALSHOP/SPECIAL.BANNER.CHEF.DDS"},
        {
            {"BUILDINGS"},
            {"COOKING"},
            {"EXTRAS"},
            {"SPACE"},
            {"VEHICLES"},
        }
    },
    {
        {"UBB-OTHER-II", "TEXTURES/UI/FRONTEND/ICONS/SPECIALSHOP/SPECIAL.HOUDINIPLANT01.DDS"},
        {
            {"WEIRD-I"},
            {"WEIRD-II"},
        }
    },
}

NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "grouptest.pak",
["MOD_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "4.52",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\BASEBUILDINGOBJECTSTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["COMMENT"] = [[Save an existing Group section from vanilla to memory]],
                            ["SPECIAL_KEY_WORDS"] = {"ID", "FREIGHTER_IND"},
                            ["SEC_SAVE_TO"] = "GetGroup",
                        },
                        {
                            ["COMMENT"] = [[Save an existing SubGroup section from vanilla to memory]],
                            ["SPECIAL_KEY_WORDS"] = {"Id", "FRE_IND_SUB"},
                            ["SEC_SAVE_TO"] = "GetSubGroup",
                        },
                        {
                            ["COMMENT"] = [[Edit the saved Group to remove existing SubGroups.  Changes save to memory AND to Disk using SEC_KEEP]],
                            ["SEC_EDIT"] = "GetGroup",
                            ["SPECIAL_KEY_WORDS"] = {"Id", "FRE_IND_SUB"},
                            ["SEC_KEEP"] = "TRUE",
                            ["REMOVE"] = "SECTION"
                        },
                    }
                },
            }
        },
    },
}

local BaseBuildingObjectsTable = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][1]["EXML_CHANGE_TABLE"]  --Defines the game file the changes will be written to
    
for i = 1, #GroupTable do  --Outer Loop for saved Group section of EXML
  local GroupID   = GroupTable[i][1][1]
  local GroupIcon = GroupTable[i][1][2]
  local Change    = GroupTable[i][2]


    BaseBuildingObjectsTable[#BaseBuildingObjectsTable+1] =
    {
        ["COMMENT"] = [[Edits property values in outer loop, for Group section]],
        ["SEC_EDIT"] = {"GetGroup"},  --Uses saved Group section from Disk, due to this being a table (within brackets).  The edits are saved to memory.
        ["VALUE_CHANGE_TABLE"] =
        {
            {"ID",       GroupID},
            {"Name",     GroupID},
            {"Filename", GroupIcon},
        }
    }

  for j = 1, #Change do  --Inner loop for saved SubGroup sections of EXML
    local SubId   = Change[j][1]

    BaseBuildingObjectsTable[#BaseBuildingObjectsTable+1] =
    {
        ["COMMENT"] = [[Edits property values in inner loop, for SubGroup section]],
        ["SEC_EDIT"] = "GetSubGroup",  --Uses saved SubGroup section from memory.  The edits are saved to memory.
        ["VALUE_CHANGE_TABLE"] =
        {
            {"Id",   SubId},
            {"Name", SubId},
        }
    }
    BaseBuildingObjectsTable[#BaseBuildingObjectsTable+1] =
    {
        ["COMMENT"] = [[Adds edited SubGroup from memory into Group in memory]],
        ["SEC_EDIT"] = "GetGroup",
        ["PRECEDING_KEY_WORDS"] = {"SubGroups"},
        ["ADD_OPTION"] = "ADDafterSECTION",
        ["LINE_OFFSET"] = "-1",
        ["SEC_ADD_NAMED"] = "GetSubGroup",
    }
  end
      BaseBuildingObjectsTable[#BaseBuildingObjectsTable+1] =
    {
        ["COMMENT"] = [[Writes the Group, in memory, with the SubGroups added, into the game file]],
        ["SPECIAL_KEY_WORDS"] = {"ID", "PLANET_TECH"},
        ["ADD_OPTION"] = "ADDafterLINE",
        ["LINE_OFFSET"] = "-2",
        ["SEC_ADD_NAMED"] = "GetGroup",
    }
end